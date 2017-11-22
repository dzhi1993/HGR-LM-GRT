/*
 * Listen to tf, calculate and publish angles (rad) and publish between joints transformations
 */

#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <std_msgs/Float32MultiArray.h>


double dot_product(tf::StampedTransform p1, tf::StampedTransform p2);
double vector_module(tf::StampedTransform p1, tf::StampedTransform p2);
const std::string fingerJointNames[]={"palm",
                                      "thumb_proximal","thumb_intermediate","thumb_distal","thumb_tip",
                                      "index_proximal","index_intermediate","index_distal","index_tip",
                                      "middle_proximal","middle_intermediate","middle_distal","middle_tip",
                                      "ring_proximal","ring_intermediate","ring_distal","ring_tip",
                                      "pinky_proximal","pinky_intermediate","pinky_distal","pinky_tip"};

std::string angle_names[]={"thumb_proximal_angle = ","thumb_intermediate_angle = ","thumb_distal_angle = ","",
                           "index_proximal_angle = ","index_intermediante_angle = ","index_distal_angle = ","",
                           "middle_proximal_angle = ","middle_intermediante_angle = ","middle_distal_angle = ","",
                           "ring_proximal_angle = ","ring_intermediante_angle = ","ring_distal_angle = ","",
                           "pinky_proximal_angle = ","pinky_intermediante_angle = ","pinky_distal_angle = "};

int main(int argc, char **argv) {
    ros::init(argc, argv, "my_tf_listener");
    ros::NodeHandle node;
    ros::Publisher vector_pub = node.advertise<std_msgs::Float32MultiArray>("/hand_angles", 10);
    ros::Rate loop_rate(10);
    tf::TransformListener listener;
    tf::TransformBroadcaster br;
    double aux1, aux2, cosine, angle;
    ros::Rate rate(10.0);
    while (node.ok()) {
        tf::StampedTransform transform[20];
        std_msgs::Float32MultiArray finger_angles;
        try {


                for(int i=0;i<20;i=i+4){
                    listener.lookupTransform(fingerJointNames[i], fingerJointNames[i+1], ros::Time(0), transform[i]);
                    listener.lookupTransform(fingerJointNames[i+1], fingerJointNames[i+2], ros::Time(0), transform[i+1]);
                    listener.lookupTransform(fingerJointNames[i+2],fingerJointNames[i+3], ros::Time(0), transform[i+2]);
                    listener.lookupTransform(fingerJointNames[i+3], fingerJointNames[i+4], ros::Time(0), transform[i+3]);
                }
        }
        catch (tf::TransformException &ex) {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }

        //Calculating angles
        for(int i=0;i<19;i++) {
            if(i==3||i==7) continue;
            else if(i==11||i==15)continue;
            aux1 = dot_product(transform[i], transform[i + 1]);
            aux2 = vector_module(transform[i], transform[i + 1]);
            cosine = aux1 / aux2;
            angle = acos(cosine);// The angles are in rads
            finger_angles.data.push_back(angle);
            std::cout<<angle_names[i]<<angle<<std::endl;
        }

        //Publishing transformations between joints
        for(int i=0;i<20;i++) {
            br.sendTransform(transform[i]);
        }

        //Publishing angles array into the /hand_angles topic
        vector_pub.publish(finger_angles);
        finger_angles.data.clear();
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
};


double dot_product(tf::StampedTransform p1, tf::StampedTransform p2) {

    double result;
    result = (p1.getOrigin().x() * p2.getOrigin().x()) + (p1.getOrigin().y() * p2.getOrigin().y()) +
             (p1.getOrigin().z() * p2.getOrigin().z());
    return result;
}


double vector_module(tf::StampedTransform p1, tf::StampedTransform p2) {

    double result;
    result = (sqrt(pow(p1.getOrigin().x(), 2) + pow(p1.getOrigin().y(), 2) + pow(p1.getOrigin().z(), 2))) *
             (sqrt(pow(p2.getOrigin().x(), 2) + pow(p2.getOrigin().y(), 2) + pow(p2.getOrigin().z(), 2)));
    return result;
}