#include <ros/ros.h>
#include <my_leapmotion/ResetCalibration.h>

int main(int argc, char **argv) {

	ros::init(argc, argv, "reset_leapmotion_calibration_client");
	if (argc != 2) {
		ROS_ERROR("Failed to call service reset_calibration");
		ROS_INFO("usage: reset_leapmotion_calibration_client reset r");
		return 1;
	}
	
	ros::NodeHandle nh;
	ros::ServiceClient client = nh.serviceClient<my_leapmotion::ResetCalibration>("reset_calibration");
	my_leapmotion::ResetCalibration srv;
	srv.request.resetRequest = argv[1][0];
	
	if (client.call(srv)) 
		ROS_INFO("Calibration was reset successfully!");
	else {
		ROS_ERROR("Failed to call service reset_calibration");
		ROS_INFO("To reset calibration: rosrun leapmotion reset_leapmotion_calibration_client r");
		return 1;
	}

	return 0;		
}
