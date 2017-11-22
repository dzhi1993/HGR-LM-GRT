Leap Motion to teleoperate the hands
====================================

- Connect Leap Motion through USB


	$sudo leapd


	$LeapControlPanel


With the Leap Motion enabled:
right click its icon > Resume tracking > Diagnostic Visualizer

If it's not calibrated yet, go to 'Recalibrate Device' > Recalibrate and Apply

ROS:
http://wiki.ros.org/leap_motion

To launch leapmotion:


	$roslaunch leapmotion leapmotion.launch


To run the node:


	$roscore


	$rosrun leap_motion sender.py

	
	$rosrun leapmotion mysubscriber


To reset calibration: 

	$rosrun leapmotion reset_leapmotion_calibration_client
	



