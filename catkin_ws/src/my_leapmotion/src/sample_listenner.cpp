/*
 * Listen to tf and publish roll, pitch and yaw angles (rad) to the palm frame.
 */


#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <std_msgs/Float32MultiArray.h>


std_msgs::Float32MultiArray thumb_rpy;


int main(int argc, char **argv) {
    ros::init(argc, argv, "my_tf_listener");
    ros::NodeHandle node;
    tf::TransformListener listener;
    tf::StampedTransform transform;
    ros::Publisher tip_palm = node.advertise<std_msgs::Float32MultiArray>("/tip_palm_rpy", 10);
    ros::Rate rate(20);

    while (node.ok()) {

        try {
            listener.lookupTransform("/palm", "/thumb_tip", ros::Time(0), transform);
            thumb_rpy.data.push_back(transform.getRotation().x());
            thumb_rpy.data.push_back(transform.getRotation().y());
            thumb_rpy.data.push_back(transform.getRotation().z());

        }
        catch (tf::TransformException &ex) {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }


        tip_palm.publish(thumb_rpy);
        ROS_INFO("thumb_tip_roll= %f  thumb_tip_pitch= %f  thumb_tip_yaw= %f \n", transform.getRotation().x(),transform.getRotation().y(), transform.getRotation().z());
        thumb_rpy.data.clear();
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}