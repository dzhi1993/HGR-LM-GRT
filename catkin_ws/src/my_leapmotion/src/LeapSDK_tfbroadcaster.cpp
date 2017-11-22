/*
 * reads Leapmotion data (using leapmotion SDK library classes and methods) and publishes world to joints TF considering the rotation of the finger points
 */

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include "Leap.h"

#define SCALE 100

using namespace Leap;

class SampleListener : public Listener {
  public:
    virtual void onInit(const Controller&);
    virtual void onConnect(const Controller&);
    virtual void onDisconnect(const Controller&);
    virtual void onExit(const Controller&);
    virtual void onFrame(const Controller&);
    virtual void onFocusGained(const Controller&);
    virtual void onFocusLost(const Controller&);
    virtual void onDeviceChange(const Controller&);
    virtual void onServiceConnect(const Controller&);
    virtual void onServiceDisconnect(const Controller&);

  private:
};

float palm_roll,palm_pitch,palm_yaw,joint_position_roll,joint_position_pitch,joint_position_yaw;
const std::string fingerNames[] = {"Thumb", "Index", "Middle", "Ring", "Pinky"};
const std::string boneNames[] = {"Metacarpal", "Proximal", "Middle", "Distal"};
const std::string fingerJointNames[]={"palm",
                                      "thumb_metacarpal","thumb_proximal","thumb_intermediate","thumb_distal","thumb_tip",
                                      "index_metacarpal","index_proximal","index_intermediate","index_distal","index_tip",
                                      "middle_metacarpal","middle_proximal","middle_intermediate","middle_distal","middle_tip",
                                      "ring_metacarpal","ring_proximal","ring_intermediate","ring_distal","ring_tip",
                                      "pinky_metacarpal","pinky_proximal","pinky_intermediate","pinky_distal","pinky_tip"};

void SampleListener::onInit(const Controller& controller) {
  std::cout << "Initialized" << std::endl;
}

void SampleListener::onConnect(const Controller& controller) {
  std::cout << "Connected" << std::endl;

}

void SampleListener::onDisconnect(const Controller& controller) {
  // Note: not dispatched when running in a debugger.
  std::cout << "Disconnected" << std::endl;
}

void SampleListener::onExit(const Controller& controller) {
  std::cout << "Exited" << std::endl;
}

void SampleListener::onFrame(const Controller& controller) {
  // Get the most recent frame and report some basic information
  const Frame frame = controller.frame();
  HandList hands = frame.hands();
  for (HandList::const_iterator hl = hands.begin(); hl != hands.end(); ++hl) {
    // Get the first hand
    static tf::TransformBroadcaster br;
    tf::Transform transform[26];  //5 transforms per finger plus the palm transform
    tf::Quaternion quaternion;
    const Hand hand = *hl;
    std::string handType = hand.isLeft() ? "Left hand" : "Right hand";
    std::cout << std::string(2, ' ') << handType << ", id: " << hand.id()
              << ", palm position: " << hand.palmPosition() << std::endl;
    // Get the hand's normal vector and direction
    const Vector normal = hand.palmNormal();
    const Vector direction = hand.direction();

    // Calculate the hand's pitch, roll, and yaw angles
    std::cout << std::string(2, ' ') <<  "pitch: " << direction.pitch() * RAD_TO_DEG << " degrees, "
              << "roll: " << normal.roll() * RAD_TO_DEG << " degrees, "
              << "yaw: " << direction.yaw() * RAD_TO_DEG << " degrees" << std::endl;
    //setting the palm transform
    palm_roll=normal.roll();
    palm_pitch=direction.pitch();
    palm_yaw=direction.yaw();
    transform[0].setOrigin(tf::Vector3(hand.palmPosition().x/SCALE,hand.palmPosition().y/SCALE,hand.palmPosition().z/SCALE));
    quaternion.setRPY(normal.roll(),direction.pitch(),direction.yaw());
    transform[0].setRotation(quaternion);

    // Get fingers
    const FingerList fingers = hand.fingers();
    int count=1;
    for (FingerList::const_iterator fl = fingers.begin(); fl != fingers.end(); ++fl) {
        const Finger finger = *fl;
        std::cout << std::string(4, ' ') << fingerNames[finger.type()]
                  << " finger, id: " << finger.id()
                  << ", length: " << finger.length()
                  << "mm, width: " << finger.width() << std::endl;
        // Get finger bones
        for (int b = 0; b < 4; ++b, count++) {
            Bone::Type boneType = static_cast<Bone::Type>(b);
            Bone bone = finger.bone(boneType);
            Vector joint_position;
            std::cout << std::string(6, ' ') << boneNames[boneType]
                      << " bone, start: " << bone.prevJoint()
                      << ", end: " << bone.nextJoint()
                      << ", direction: " << bone.direction() << std::endl;

            if (b == 0) {
                joint_position=bone.prevJoint();
                transform[count].setOrigin(tf::Vector3(joint_position.x/SCALE,joint_position.y/SCALE,joint_position.z/SCALE));
                quaternion.setRPY(joint_position.roll(),joint_position.pitch(),joint_position.yaw());
                transform[count].setRotation(quaternion);
                count++;
            }

            joint_position = bone.nextJoint();
            transform[count].setOrigin(tf::Vector3(joint_position.x/SCALE,joint_position.y/SCALE,joint_position.z/SCALE));
            quaternion.setRPY(joint_position.roll(),joint_position.pitch(),joint_position.yaw());
            transform[count].setRotation(quaternion);
            //std::cout<<std::string(8, ' ')<<" thumb_tip_roll = "<<thumb_tip_roll<<" thumb_tip_pitch = "<<thumb_tip_pitch<<" thumb_tip_yaw = "<<thumb_tip_yaw<<std::endl;
        }
    }

    for(int i=0; i<26;i++)
        br.sendTransform(tf::StampedTransform(transform[i], ros::Time::now(), "world", fingerJointNames[i]));
  }


}

void SampleListener::onFocusGained(const Controller& controller) {
  std::cout << "Focus Gained" << std::endl;
}

void SampleListener::onFocusLost(const Controller& controller) {
  std::cout << "Focus Lost" << std::endl;
}

void SampleListener::onDeviceChange(const Controller& controller) {
  std::cout << "Device Changed" << std::endl;
  const DeviceList devices = controller.devices();

  for (int i = 0; i < devices.count(); ++i) {
    std::cout << "id: " << devices[i].toString() << std::endl;
    std::cout << "  isStreaming: " << (devices[i].isStreaming() ? "true" : "false") << std::endl;
  }
}

void SampleListener::onServiceConnect(const Controller& controller) {
  std::cout << "Service Connected" << std::endl;
}

void SampleListener::onServiceDisconnect(const Controller& controller) {
  std::cout << "Service Disconnected" << std::endl;
}

int main(int argc, char** argv) {
  // Create a sample listener and controller
  ros::init(argc, argv, "leapSDK_tfbroadcaster");
  SampleListener listener;
  Controller controller;

  // Have the sample listener receive events from the controller
  controller.addListener(listener);

  if (argc > 1 && strcmp(argv[1], "--bg") == 0)
    controller.setPolicy(Leap::Controller::POLICY_BACKGROUND_FRAMES);

  // Keep this process running until Enter is pressed
  std::cout << "Press Enter to quit..." << std::endl;
  std::cin.get();

  // Remove the sample listener when done
  controller.removeListener(listener);

  return 0;
}
