# Leap Motion v6 Frame JSON-based message
# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
#
#
Header header
float64 currentFrameRate
uint32 ID                       # Leap Motion documents this as a float, but that's not right
geometry_msgs/Vector3[] r      # Leap Motion documentation as Matrix (ambigous)
float64 s
geometry_msgs/Vector3 t
time timestamp
LeapGesture[] gestures
LeapHand[] hands
# interaction box not included
LeapPointable[] pointables
