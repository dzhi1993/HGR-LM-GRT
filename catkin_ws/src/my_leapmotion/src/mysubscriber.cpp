/* 
* This node remaps the data from leapmotion to positions sent to a robotic hand  
* It gets the leapmotion's data by subscribing the topic "/leapmotion/data"
* It calculates the finger positions through the distances between the finger's tips positions and the palm position
* Thumb: X-Axis
* Other fingers: Z-Axis
* It publishes the finger positions in the topic 'position'   
*/


#include <stdlib.h>
#include <ros/ros.h>
#include <std_msgs/Float32MultiArray.h>
#include <leap_motion/leapros.h>
#include <my_leapmotion/ResetCalibration.h>

/*
Thumb  - 0
Index  - 1
Middle - 2
Ring   - 3
Pinky  - 4
*/

float tipValueX[] = {0, 0, 0, 0, 0}; // {Thumb, Index, Middle, Ring, Pinky}
float tipValueY[] = {0, 0, 0, 0, 0};
float tipValueZ[] = {0, 0, 0, 0, 0};

float palmpos[] = {0, 0, 0}; // {X, Y, Z}

float distance[] = {0, 0, 0, 0, 0}; // {Thumb, Index, Middle, Ring, Pinky}
float minDistance[] = {1000, 1000, 1000, 1000, 1000};
float maxDistance[] = {0, 0, 0, 0, 0};

float divr = 0; // divr = max - min
float divr_aux = 0;
float min = 0;
float max = 0;
float fingerPosition[] = {0, 0, 0, 0, 0}; // fingerPosition = (distance - minDistance)/divr 
std_msgs::Float32MultiArray position; // position = fingerPosition
bool next = false;

// Service to reset calibration
bool reset(my_leapmotion::ResetCalibration::Request &req,
	   my_leapmotion::ResetCalibration::Response &res) {
	if (req.resetRequest == 'r') {
		// Reset min and max values
		for (int i=0; i<5; i++) {
			minDistance[i] = 1000;
			maxDistance[i] = 0;
		}

		ROS_INFO("Calibration was reset successfully!");
		ROS_INFO("Open and close your hand to recalibrate the glove.");
	
		return true;
	}
	else {
		ROS_ERROR("Failed to call service reset_calibration");
		ROS_INFO("To reset calibration: rosrun my_leapmotion reset_leapmotion_calibration_client r");
	
		return false;
	}
}

// Callback function for the topic '/leapmotion/data'
void dataCb(const leap_motion::leapros::ConstPtr& msg) {

	if (next)
		return;

	// Get only the necessary data
	tipValueX[0] = msg->thumb_tip.x; // For thumb only X-axis is necessary
		
	tipValueZ[1] = msg->index_tip.z; // For all of the other fingers only Z-axis is necessary
	tipValueZ[2] = msg->middle_tip.z;	
	tipValueZ[3] = msg->ring_tip.z;	
	tipValueZ[4] = msg->pinky_tip.z;

	palmpos[0] = msg->palmpos.x;	
	palmpos[1] = msg->palmpos.y;
	palmpos[2] = msg->palmpos.z;

	distance[0] = abs(tipValueX[0] - palmpos[0]); // Distance between thumb and palm
	for (int i=0; i<4; i++)
		distance[i+1] = abs(tipValueZ[i+1] - palmpos[2]); // Distance between each other finger and palm
	
	// Calibration
	for (int i=0; i<5; i++) {
		if (distance[i] < minDistance[i])
			minDistance[i] = distance[i];
		if (distance[i] > maxDistance[i])
			maxDistance[i] = distance[i];

	divr = maxDistance[i] - minDistance[i];
	// Just to avoid 0/0 in the first iteration
	if (divr == 0)
		divr = 1;

	min = minDistance[i] + 0.1*divr;
	max = maxDistance[i] - 0.1*divr;

	divr_aux = max - min;

	fingerPosition[i] = 1 - ((distance[i] - min)/divr_aux);
	
	// Make sure it's in the range [0;1]
	if (fingerPosition[i] > 1)
		fingerPosition[i] = 1;
	else
		if (fingerPosition[i] < 0)
			fingerPosition[i] = 0;
	}

	next = true;
}

int main (int argc, char **argv)
{
	ros::init(argc, argv, "mysubscriber");
	ros::NodeHandle nh;

	ros::ServiceServer service = nh.advertiseService("reset_calibration", reset);

	position.data.resize(5); // 5 Fingers

	ros::Publisher pub = nh.advertise<std_msgs::Float32MultiArray>("/position", 32); // Publish the position
	ros::Subscriber sub = nh.subscribe("/leapmotion/data", 32, dataCb); // Calculate position from the /leapmotion/data values

	ROS_INFO("Gathering data from Leap Motion...");
	ROS_INFO("Starting mapping...");
	ROS_INFO("Open and close your hand to calibrate the Leap Motion.");	

	while(ros::ok()) {
		if (next) {
			for(int i=0; i<5; i++)
				position.data[i] = 1 - fingerPosition[i];
				//ROS_INFO("position[%d]= %lf", i, position.data[i]);
			pub.publish(position);			
			next = false;
		}
		ros::spinOnce();
	}	
	ros::shutdown();

	ROS_INFO("Bye.");

	return 0;

}
