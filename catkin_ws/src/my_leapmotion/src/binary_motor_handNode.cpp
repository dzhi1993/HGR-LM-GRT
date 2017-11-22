#include "ros/ros.h"
#include "std_msgs/Float32MultiArray.h"
#include "std_msgs/Int16MultiArray.h"
#include "iostream"
#include "math.h"

std_msgs::Float32MultiArray motors;
std_msgs::Int16MultiArray enable;
ros::Publisher position;

void get_angles(const std_msgs::Float32MultiArray msg) { //transfer the recieved angles to position
    double msg_media, motor_finger;
	double media_min = 45, media_max = 55;
    ros::NodeHandle m;
    
	// reset index number for other 4 fingers   
	unsigned int index = 2, finger_counter = 5;

    while (finger_counter--) {    
		if (finger_counter == 4) {
			msg_media = (msg.data[0] + msg.data[1] + msg.data[2])/3;
			if (msg_media > 60) media_max = msg_media;
    		if (msg_media < 49) media_min = msg_media;
   
    		motor_finger = fabs(1 - (msg_media - media_min)/(media_max - media_min));
    		motors.data.push_back(motor_finger);
		}
		else {
		    msg_media = (msg.data[index+1] + msg.data[index+2] + msg.data[index+3]) / 3;
		    if (msg_media > media_max) media_max = msg_media;    
		    if (msg_media < media_min) media_min = msg_media;
		    
		    motor_finger = fabs(1 -(msg_media - media_min)/(media_max - media_min));
		    motors.data.push_back(motor_finger);
			index = index + 3;
		}	
	}
    
    position.publish (motors);
    motors.data.clear();
    ros::spin();            
}
      
int main(int argc, char **argv)
{
	std::cout << "New 1!" << std::endl;   
    ros::init(argc, argv, "motors_enable_bin");
    ros::NodeHandle n;
    
	enable.data.push_back(1);
	enable.data.push_back(1);
	enable.data.push_back(1);
	enable.data.push_back(1);
	enable.data.push_back(1);

  	ros::Publisher enable_motors = n.advertise<std_msgs::Int16MultiArray>("/enable_motors", 1000);
  	enable_motors.publish (enable);
 
	position = n.advertise<std_msgs::Float32MultiArray>("/position", 1000);
	ros::Subscriber sub_thumb = n.subscribe("/Hand_angles", 1000, get_angles);
   
  	ros::spin();
  	return 0;
}

