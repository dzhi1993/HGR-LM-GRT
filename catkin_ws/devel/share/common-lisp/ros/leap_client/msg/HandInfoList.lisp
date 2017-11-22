; Auto-generated. Do not edit!


(cl:in-package leap_client-msg)


;//! \htmlinclude HandInfoList.msg.html

(cl:defclass <HandInfoList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hands
    :reader hands
    :initarg :hands
    :type (cl:vector leap_client-msg:HandInfo)
   :initform (cl:make-array 0 :element-type 'leap_client-msg:HandInfo :initial-element (cl:make-instance 'leap_client-msg:HandInfo))))
)

(cl:defclass HandInfoList (<HandInfoList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandInfoList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandInfoList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_client-msg:<HandInfoList> is deprecated: use leap_client-msg:HandInfoList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HandInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:header-val is deprecated.  Use leap_client-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hands-val :lambda-list '(m))
(cl:defmethod hands-val ((m <HandInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:hands-val is deprecated.  Use leap_client-msg:hands instead.")
  (hands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandInfoList>) ostream)
  "Serializes a message object of type '<HandInfoList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandInfoList>) istream)
  "Deserializes a message object of type '<HandInfoList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leap_client-msg:HandInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandInfoList>)))
  "Returns string type for a message object of type '<HandInfoList>"
  "leap_client/HandInfoList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandInfoList)))
  "Returns string type for a message object of type 'HandInfoList"
  "leap_client/HandInfoList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandInfoList>)))
  "Returns md5sum for a message object of type '<HandInfoList>"
  "b4ef32c1e3c41baa6a08353a13192a72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandInfoList)))
  "Returns md5sum for a message object of type 'HandInfoList"
  "b4ef32c1e3c41baa6a08353a13192a72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandInfoList>)))
  "Returns full string definition for message of type '<HandInfoList>"
  (cl:format cl:nil "std_msgs/Header header~%HandInfo[] hands~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leap_client/HandInfo~%std_msgs/Header header~%int32 id~%float32 time_visible~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 velocity~%float32 sphere_radius~%geometry_msgs/Point sphere_center~%geometry_msgs/Pose stabilized_pose~%FingerInfo[] fingers~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: leap_client/FingerInfo~%std_msgs/Header header~%int32 hand_id~%int32 id~%float32 time_visible~%geometry_msgs/Point tip_position~%geometry_msgs/Vector3 tip_velocity~%geometry_msgs/Vector3 pointing_direction~%geometry_msgs/Point stabilized_tip_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandInfoList)))
  "Returns full string definition for message of type 'HandInfoList"
  (cl:format cl:nil "std_msgs/Header header~%HandInfo[] hands~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leap_client/HandInfo~%std_msgs/Header header~%int32 id~%float32 time_visible~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 velocity~%float32 sphere_radius~%geometry_msgs/Point sphere_center~%geometry_msgs/Pose stabilized_pose~%FingerInfo[] fingers~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: leap_client/FingerInfo~%std_msgs/Header header~%int32 hand_id~%int32 id~%float32 time_visible~%geometry_msgs/Point tip_position~%geometry_msgs/Vector3 tip_velocity~%geometry_msgs/Vector3 pointing_direction~%geometry_msgs/Point stabilized_tip_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandInfoList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandInfoList>))
  "Converts a ROS message object to a list"
  (cl:list 'HandInfoList
    (cl:cons ':header (header msg))
    (cl:cons ':hands (hands msg))
))
