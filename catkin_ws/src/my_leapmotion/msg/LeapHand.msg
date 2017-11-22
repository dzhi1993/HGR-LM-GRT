# Leap Motion v6 Hand JSON-based submessage
# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
#
#
geometry_msgs/Vector3[3] armBasis           # the 3 basis vectors of the arm (array of vectors)
float64 armWidth
float64 confidence
geometry_msgs/Vector3 direction             # array of floats (vector)
geometry_msgs/Point elbow
float64 grabStrength
uint32 ID
geometry_msgs/Vector3 palmNormal
geometry_msgs/Point palmPosition
geometry_msgs/Vector3 palmVelocity
float64 pinchStrength
geometry_msgs/Vector3[3] r                  # Leap Motion documentation as Matrix (ambigous)
float64 s
geometry_msgs/Point sphereCenter
float64 sphereRadius
geometry_msgs/Point stabilizedPalmPosition
geometry_msgs/Vector3 t
float64 timeVisible
string handType                                 # string - one of "right", "left"
geometry_msgs/Point wrist
