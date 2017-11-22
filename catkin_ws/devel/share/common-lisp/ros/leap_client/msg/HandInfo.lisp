; Auto-generated. Do not edit!


(cl:in-package leap_client-msg)


;//! \htmlinclude HandInfo.msg.html

(cl:defclass <HandInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (time_visible
    :reader time_visible
    :initarg :time_visible
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (sphere_radius
    :reader sphere_radius
    :initarg :sphere_radius
    :type cl:float
    :initform 0.0)
   (sphere_center
    :reader sphere_center
    :initarg :sphere_center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (stabilized_pose
    :reader stabilized_pose
    :initarg :stabilized_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (fingers
    :reader fingers
    :initarg :fingers
    :type (cl:vector leap_client-msg:FingerInfo)
   :initform (cl:make-array 0 :element-type 'leap_client-msg:FingerInfo :initial-element (cl:make-instance 'leap_client-msg:FingerInfo))))
)

(cl:defclass HandInfo (<HandInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_client-msg:<HandInfo> is deprecated: use leap_client-msg:HandInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:header-val is deprecated.  Use leap_client-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:id-val is deprecated.  Use leap_client-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'time_visible-val :lambda-list '(m))
(cl:defmethod time_visible-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:time_visible-val is deprecated.  Use leap_client-msg:time_visible instead.")
  (time_visible m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:pose-val is deprecated.  Use leap_client-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:velocity-val is deprecated.  Use leap_client-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'sphere_radius-val :lambda-list '(m))
(cl:defmethod sphere_radius-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:sphere_radius-val is deprecated.  Use leap_client-msg:sphere_radius instead.")
  (sphere_radius m))

(cl:ensure-generic-function 'sphere_center-val :lambda-list '(m))
(cl:defmethod sphere_center-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:sphere_center-val is deprecated.  Use leap_client-msg:sphere_center instead.")
  (sphere_center m))

(cl:ensure-generic-function 'stabilized_pose-val :lambda-list '(m))
(cl:defmethod stabilized_pose-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:stabilized_pose-val is deprecated.  Use leap_client-msg:stabilized_pose instead.")
  (stabilized_pose m))

(cl:ensure-generic-function 'fingers-val :lambda-list '(m))
(cl:defmethod fingers-val ((m <HandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:fingers-val is deprecated.  Use leap_client-msg:fingers instead.")
  (fingers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandInfo>) ostream)
  "Serializes a message object of type '<HandInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_visible))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sphere_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sphere_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stabilized_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fingers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fingers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandInfo>) istream)
  "Deserializes a message object of type '<HandInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_visible) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sphere_radius) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sphere_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stabilized_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fingers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fingers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leap_client-msg:FingerInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandInfo>)))
  "Returns string type for a message object of type '<HandInfo>"
  "leap_client/HandInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandInfo)))
  "Returns string type for a message object of type 'HandInfo"
  "leap_client/HandInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandInfo>)))
  "Returns md5sum for a message object of type '<HandInfo>"
  "937a409678ad32096fdeeb182c37c6da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandInfo)))
  "Returns md5sum for a message object of type 'HandInfo"
  "937a409678ad32096fdeeb182c37c6da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandInfo>)))
  "Returns full string definition for message of type '<HandInfo>"
  (cl:format cl:nil "std_msgs/Header header~%int32 id~%float32 time_visible~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 velocity~%float32 sphere_radius~%geometry_msgs/Point sphere_center~%geometry_msgs/Pose stabilized_pose~%FingerInfo[] fingers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: leap_client/FingerInfo~%std_msgs/Header header~%int32 hand_id~%int32 id~%float32 time_visible~%geometry_msgs/Point tip_position~%geometry_msgs/Vector3 tip_velocity~%geometry_msgs/Vector3 pointing_direction~%geometry_msgs/Point stabilized_tip_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandInfo)))
  "Returns full string definition for message of type 'HandInfo"
  (cl:format cl:nil "std_msgs/Header header~%int32 id~%float32 time_visible~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 velocity~%float32 sphere_radius~%geometry_msgs/Point sphere_center~%geometry_msgs/Pose stabilized_pose~%FingerInfo[] fingers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: leap_client/FingerInfo~%std_msgs/Header header~%int32 hand_id~%int32 id~%float32 time_visible~%geometry_msgs/Point tip_position~%geometry_msgs/Vector3 tip_velocity~%geometry_msgs/Vector3 pointing_direction~%geometry_msgs/Point stabilized_tip_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sphere_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stabilized_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fingers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'HandInfo
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':time_visible (time_visible msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':sphere_radius (sphere_radius msg))
    (cl:cons ':sphere_center (sphere_center msg))
    (cl:cons ':stabilized_pose (stabilized_pose msg))
    (cl:cons ':fingers (fingers msg))
))
