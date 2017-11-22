# Leap Motion v6 Pointable JSON-based submessage
# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
#
#

# Leap uses a two dimensional array for the bases but ROS messages only support one dimension
# Unroll the Leap bases into individual bone basis instead
# geometry_msgs/Vector3[3][] bases          # the 3 basis vectors for each bone, in index order, wrist to tip, metacarpal, proximal, intermediate, and distal.
geometry_msgs/Vector3[3] metacarpalBasis
geometry_msgs/Vector3[3] proximalBasis
geometry_msgs/Vector3[3] intermediateBasis
geometry_msgs/Vector3[3] distalBasis
geometry_msgs/Point btipPosition            # the position of the tip of the distal phalanx as an array of 3 floats.
geometry_msgs/Point carpPosition            # the position of the base of metacarpal bone as an array of 3 floats.
geometry_msgs/Point dipPosition             # the position of the base of the distal phalanx as an array of 3 floats.
geometry_msgs/Vector3 direction
bool extended
uint32 handId
uint32 ID
float64 length
geometry_msgs/Point mcpPosition             # a position vector as an array of 3 floating point numbers
geometry_msgs/Point pipPosition             # a position vector as an array of 3 floating point numbers
geometry_msgs/Point stabilizedTipPosition   # array of floats (vector)
float64 timeVisible
geometry_msgs/Point tipPosition             #  array of floats (vector)
geometry_msgs/Vector3 tipVelocity           #  array of floats (vector)
bool tool
float64 touchDistance
string touchZone                            # string - one of "none", "hovering", "touching"
uint32 pointableType                        # integer - 0 is thumb; 4 is pinky
float64 width
