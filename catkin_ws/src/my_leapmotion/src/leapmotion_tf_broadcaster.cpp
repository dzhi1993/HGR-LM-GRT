/*
 * reads Leapmotion data and publishes world to joints TF without consider the rotation of the finger points
 */

#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <leap_motion/leapros.h>

#define SCALE 100

const std::string fingerJointNames[]={"palm",
                                      "thumb_proximal","thumb_intermediate","thumb_distal","thumb_tip","thumb_metacarpal"
                                      "index_proximal","index_intermediate","index_distal","index_tip","index_metacarpal"
                                      "middle_proximal","middle_intermediate","middle_distal","middle_tip","middle_metacarpal"
                                      "ring_proximal","ring_intermediate","ring_distal","ring_tip","ring_metacarpal"
                                      "pinky_proximal","pinky_intermediate","pinky_distal","pinky_tip","pinky_metacarpal"};


void fingerCallback(const leap_motion::leapros::ConstPtr &msg);


int main(int argc, char **argv) {
    ros::init(argc, argv, "my_tf_broadcaster");
    ros::NodeHandle node;
    ros::Subscriber sub= node.subscribe("/leapmotion/data", 10, &fingerCallback);
    ros::spin();
    return 0;
};


void fingerCallback(const leap_motion::leapros::ConstPtr &msg) {
    static tf::TransformBroadcaster br;
    tf::Transform transform[26];
    transform[0].setOrigin(tf::Vector3(msg->palmpos.x / SCALE, msg->palmpos.y / SCALE, msg->palmpos.z / SCALE));
    transform[1].setOrigin(tf::Vector3(msg->thumb_proximal.x / SCALE, msg->thumb_proximal.y / SCALE, msg->thumb_proximal.z / SCALE));
    transform[2].setOrigin(tf::Vector3(msg->thumb_intermediate.x / SCALE, msg->thumb_intermediate.y / SCALE,msg->thumb_intermediate.z / SCALE));
    transform[3].setOrigin(tf::Vector3(msg->thumb_distal.x / SCALE, msg->thumb_distal.y / SCALE, msg->thumb_distal.z / SCALE));
    transform[4].setOrigin(tf::Vector3(msg->thumb_tip.x / SCALE, msg->thumb_tip.y / SCALE, msg->thumb_tip.z / SCALE));
    transform[5].setOrigin(tf::Vector3(msg->thumb_metacarpal.x / SCALE, msg->thumb_metacarpal.y / SCALE, msg->thumb_metacarpal.z / SCALE));
    transform[6].setOrigin(tf::Vector3(msg->index_proximal.x / SCALE, msg->index_proximal.y / SCALE, msg->index_proximal.z / SCALE));
    transform[7].setOrigin(tf::Vector3(msg->index_intermediate.x / SCALE, msg->index_intermediate.y / SCALE,msg->index_intermediate.z / SCALE));
    transform[8].setOrigin(tf::Vector3(msg->index_distal.x / SCALE, msg->index_distal.y / SCALE, msg->index_distal.z / SCALE));
    transform[9].setOrigin(tf::Vector3(msg->index_tip.x / SCALE, msg->index_tip.y / SCALE, msg->index_tip.z / SCALE));
    transform[10].setOrigin(tf::Vector3(msg->index_metacarpal.x / SCALE, msg->index_metacarpal.y / SCALE,msg->index_metacarpal.z / SCALE));
    transform[11].setOrigin(tf::Vector3(msg->middle_proximal.x / SCALE, msg->middle_proximal.y / SCALE, msg->middle_proximal.z / SCALE));
    transform[12].setOrigin(tf::Vector3(msg->middle_intermediate.x / SCALE, msg->middle_intermediate.y / SCALE, msg->middle_intermediate.z / SCALE));
    transform[13].setOrigin(tf::Vector3(msg->middle_distal.x / SCALE, msg->middle_distal.y / SCALE, msg->middle_distal.z / SCALE));
    transform[14].setOrigin(tf::Vector3(msg->middle_tip.x / SCALE, msg->middle_tip.y / SCALE, msg->middle_tip.z / SCALE));
    transform[15].setOrigin(tf::Vector3(msg->middle_metacarpal.x / SCALE, msg->middle_metacarpal.y / SCALE,msg->middle_metacarpal.z / SCALE));
    transform[16].setOrigin(tf::Vector3(msg->ring_proximal.x / SCALE, msg->ring_proximal.y / SCALE, msg->ring_proximal.z / SCALE));
    transform[17].setOrigin(tf::Vector3(msg->ring_intermediate.x / SCALE, msg->ring_intermediate.y / SCALE, msg->ring_intermediate.z / SCALE));
    transform[18].setOrigin(tf::Vector3(msg->ring_distal.x / SCALE, msg->ring_distal.y / SCALE, msg->ring_distal.z / SCALE));
    transform[19].setOrigin(tf::Vector3(msg->ring_tip.x / SCALE, msg->ring_tip.y / SCALE, msg->ring_tip.z / SCALE));
    transform[20].setOrigin(tf::Vector3(msg->ring_metacarpal.x / SCALE, msg->ring_metacarpal.y / SCALE,msg->ring_metacarpal.z / SCALE));
    transform[21].setOrigin(tf::Vector3(msg->pinky_proximal.x / SCALE, msg->pinky_proximal.y / SCALE, msg->pinky_proximal.z / SCALE));
    transform[22].setOrigin(tf::Vector3(msg->pinky_intermediate.x / SCALE, msg->pinky_intermediate.y / SCALE, msg->pinky_intermediate.z / SCALE));
    transform[23].setOrigin(tf::Vector3(msg->pinky_distal.x / SCALE, msg->pinky_distal.y / SCALE, msg->pinky_distal.z / SCALE));
    transform[24].setOrigin(tf::Vector3(msg->pinky_tip.x / SCALE, msg->pinky_tip.y / SCALE, msg->pinky_tip.z / SCALE));
    transform[25].setOrigin(tf::Vector3(msg->pinky_metacarpal.x / SCALE, msg->pinky_metacarpal.y / SCALE,msg->pinky_metacarpal.z / SCALE));
    tf::Quaternion q;
    q.setRPY(0, 0, 0);
    for(int i=0;i<26;i++) {
        transform[i].setRotation(q);
        br.sendTransform(tf::StampedTransform(transform[i], ros::Time::now(), "world", fingerJointNames[i]));

    }
}
