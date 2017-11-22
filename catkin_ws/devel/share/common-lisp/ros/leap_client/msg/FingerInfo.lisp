; Auto-generated. Do not edit!


(cl:in-package leap_client-msg)


;//! \htmlinclude FingerInfo.msg.html

(cl:defclass <FingerInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hand_id
    :reader hand_id
    :initarg :hand_id
    :type cl:integer
    :initform 0)
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
   (tip_position
    :reader tip_position
    :initarg :tip_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (tip_velocity
    :reader tip_velocity
    :initarg :tip_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pointing_direction
    :reader pointing_direction
    :initarg :pointing_direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (stabilized_tip_position
    :reader stabilized_tip_position
    :initarg :stabilized_tip_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass FingerInfo (<FingerInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FingerInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FingerInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_client-msg:<FingerInfo> is deprecated: use leap_client-msg:FingerInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FingerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:header-val is deprecated.  Use leap_client-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hand_id-val :lambda-list '(m))
(cl:defmethod hand_id-val ((m <FingerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:hand_id-val is deprecated.  Use leap_client-msg:hand_id instead.")
  (hand_id m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FingerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:id-val is deprecated.  Use leap_client-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'time_visible-val :lambda-list '(m))
(cl:defmethod time_visible-val ((m <FingerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:time_visible-val is deprecated.  Use leap_client-msg:time_visible instead.")
  (time_visible m))

(cl:ensure-generic-function 'tip_position-val :lambda-list '(m))
(cl:defmethod tip_position-val ((m <FingerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:tip_position-val is deprecated.  Use leap_client-msg:tip_position instead.")
  (tip_position m))

(cl:ensure-generic-function 'tip_velocity-val :lambda-list '(m))
(cl:defmethod tip_velocity-val ((m <FingerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:tip_velocity-val is deprecated.  Use leap_client-msg:tip_velocity instead.")
  (tip_velocity m))

(cl:ensure-generic-function 'pointing_direction-val :lambda-list '(m))
(cl:defmethod pointing_direction-val ((m <FingerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:pointing_direction-val is deprecated.  Use leap_client-msg:pointing_direction instead.")
  (pointing_direction m))

(cl:ensure-generic-function 'stabilized_tip_position-val :lambda-list '(m))
(cl:defmethod stabilized_tip_position-val ((m <FingerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_client-msg:stabilized_tip_position-val is deprecated.  Use leap_client-msg:stabilized_tip_position instead.")
  (stabilized_tip_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FingerInfo>) ostream)
  "Serializes a message object of type '<FingerInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'hand_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tip_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tip_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointing_direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stabilized_tip_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FingerInfo>) istream)
  "Deserializes a message object of type '<FingerInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hand_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tip_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tip_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointing_direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stabilized_tip_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FingerInfo>)))
  "Returns string type for a message object of type '<FingerInfo>"
  "leap_client/FingerInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FingerInfo)))
  "Returns string type for a message object of type 'FingerInfo"
  "leap_client/FingerInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FingerInfo>)))
  "Returns md5sum for a message object of type '<FingerInfo>"
  "c03d82510bf929e1b9514a3af01d675b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FingerInfo)))
  "Returns md5sum for a message object of type 'FingerInfo"
  "c03d82510bf929e1b9514a3af01d675b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FingerInfo>)))
  "Returns full string definition for message of type '<FingerInfo>"
  (cl:format cl:nil "std_msgs/Header header~%int32 hand_id~%int32 id~%float32 time_visible~%geometry_msgs/Point tip_position~%geometry_msgs/Vector3 tip_velocity~%geometry_msgs/Vector3 pointing_direction~%geometry_msgs/Point stabilized_tip_position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FingerInfo)))
  "Returns full string definition for message of type 'FingerInfo"
  (cl:format cl:nil "std_msgs/Header header~%int32 hand_id~%int32 id~%float32 time_visible~%geometry_msgs/Point tip_position~%geometry_msgs/Vector3 tip_velocity~%geometry_msgs/Vector3 pointing_direction~%geometry_msgs/Point stabilized_tip_position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FingerInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tip_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tip_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointing_direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stabilized_tip_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FingerInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'FingerInfo
    (cl:cons ':header (header msg))
    (cl:cons ':hand_id (hand_id msg))
    (cl:cons ':id (id msg))
    (cl:cons ':time_visible (time_visible msg))
    (cl:cons ':tip_position (tip_position msg))
    (cl:cons ':tip_velocity (tip_velocity msg))
    (cl:cons ':pointing_direction (pointing_direction msg))
    (cl:cons ':stabilized_tip_position (stabilized_tip_position msg))
))
