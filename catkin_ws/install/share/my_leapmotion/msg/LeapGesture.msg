# Leap Motion v6 Gesture JSON-based submessage
# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
#
#
geometry_msgs/Point center          # array of floats (vector) -- circle only
geometry_msgs/Vector3 direction     # array of floats (vector) -- swipe, keyTap, screenTap only
uint32 duration                     # integer microseconds
uint32[] handIds                    # array of integers
uint32 ID                           # integer
geometry_msgs/Vector3 normal        # array of floats -- circle only
uint32[] pointableIds               # array
geometry_msgs/Point position        # array of floats (vector) -- swipe, keyTap, screenTap only
float64 progress                    # float -- circle, keyTap, screenTap only
float64 radius                      # float -- circle only
float64 speed                       # float -- swipe only
geometry_msgs/Point startPosition   # array of float (vector) -- swipe only
string state                        # string - one of "start", "update", "stop"
string gestureType                  # string - one of "circle", "swipe", "keyTap", "screenTap"
