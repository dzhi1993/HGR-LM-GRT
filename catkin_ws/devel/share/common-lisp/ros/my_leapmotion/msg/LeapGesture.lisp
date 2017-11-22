; Auto-generated. Do not edit!


(cl:in-package my_leapmotion-msg)


;//! \htmlinclude LeapGesture.msg.html

(cl:defclass <LeapGesture> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0)
   (handIds
    :reader handIds
    :initarg :handIds
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (normal
    :reader normal
    :initarg :normal
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pointableIds
    :reader pointableIds
    :initarg :pointableIds
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (progress
    :reader progress
    :initarg :progress
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (startPosition
    :reader startPosition
    :initarg :startPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (gestureType
    :reader gestureType
    :initarg :gestureType
    :type cl:string
    :initform ""))
)

(cl:defclass LeapGesture (<LeapGesture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeapGesture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeapGesture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_leapmotion-msg:<LeapGesture> is deprecated: use my_leapmotion-msg:LeapGesture instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:center-val is deprecated.  Use my_leapmotion-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:direction-val is deprecated.  Use my_leapmotion-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:duration-val is deprecated.  Use my_leapmotion-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'handIds-val :lambda-list '(m))
(cl:defmethod handIds-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:handIds-val is deprecated.  Use my_leapmotion-msg:handIds instead.")
  (handIds m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:ID-val is deprecated.  Use my_leapmotion-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:normal-val is deprecated.  Use my_leapmotion-msg:normal instead.")
  (normal m))

(cl:ensure-generic-function 'pointableIds-val :lambda-list '(m))
(cl:defmethod pointableIds-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:pointableIds-val is deprecated.  Use my_leapmotion-msg:pointableIds instead.")
  (pointableIds m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:position-val is deprecated.  Use my_leapmotion-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:progress-val is deprecated.  Use my_leapmotion-msg:progress instead.")
  (progress m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:radius-val is deprecated.  Use my_leapmotion-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:speed-val is deprecated.  Use my_leapmotion-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'startPosition-val :lambda-list '(m))
(cl:defmethod startPosition-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:startPosition-val is deprecated.  Use my_leapmotion-msg:startPosition instead.")
  (startPosition m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:state-val is deprecated.  Use my_leapmotion-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'gestureType-val :lambda-list '(m))
(cl:defmethod gestureType-val ((m <LeapGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:gestureType-val is deprecated.  Use my_leapmotion-msg:gestureType instead.")
  (gestureType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeapGesture>) ostream)
  "Serializes a message object of type '<LeapGesture>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'handIds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'handIds))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointableIds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'pointableIds))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'startPosition) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gestureType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gestureType))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeapGesture>) istream)
  "Deserializes a message object of type '<LeapGesture>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'handIds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'handIds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointableIds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointableIds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'startPosition) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gestureType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gestureType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeapGesture>)))
  "Returns string type for a message object of type '<LeapGesture>"
  "my_leapmotion/LeapGesture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeapGesture)))
  "Returns string type for a message object of type 'LeapGesture"
  "my_leapmotion/LeapGesture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeapGesture>)))
  "Returns md5sum for a message object of type '<LeapGesture>"
  "967e671f82992095ab401d46b1c41311")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeapGesture)))
  "Returns md5sum for a message object of type 'LeapGesture"
  "967e671f82992095ab401d46b1c41311")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeapGesture>)))
  "Returns full string definition for message of type '<LeapGesture>"
  (cl:format cl:nil "# Leap Motion v6 Gesture JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%geometry_msgs/Point center          # array of floats (vector) -- circle only~%geometry_msgs/Vector3 direction     # array of floats (vector) -- swipe, keyTap, screenTap only~%uint32 duration                     # integer microseconds~%uint32[] handIds                    # array of integers~%uint32 ID                           # integer~%geometry_msgs/Vector3 normal        # array of floats -- circle only~%uint32[] pointableIds               # array~%geometry_msgs/Point position        # array of floats (vector) -- swipe, keyTap, screenTap only~%float64 progress                    # float -- circle, keyTap, screenTap only~%float64 radius                      # float -- circle only~%float64 speed                       # float -- swipe only~%geometry_msgs/Point startPosition   # array of float (vector) -- swipe only~%string state                        # string - one of \"start\", \"update\", \"stop\"~%string gestureType                  # string - one of \"circle\", \"swipe\", \"keyTap\", \"screenTap\"~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeapGesture)))
  "Returns full string definition for message of type 'LeapGesture"
  (cl:format cl:nil "# Leap Motion v6 Gesture JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%geometry_msgs/Point center          # array of floats (vector) -- circle only~%geometry_msgs/Vector3 direction     # array of floats (vector) -- swipe, keyTap, screenTap only~%uint32 duration                     # integer microseconds~%uint32[] handIds                    # array of integers~%uint32 ID                           # integer~%geometry_msgs/Vector3 normal        # array of floats -- circle only~%uint32[] pointableIds               # array~%geometry_msgs/Point position        # array of floats (vector) -- swipe, keyTap, screenTap only~%float64 progress                    # float -- circle, keyTap, screenTap only~%float64 radius                      # float -- circle only~%float64 speed                       # float -- swipe only~%geometry_msgs/Point startPosition   # array of float (vector) -- swipe only~%string state                        # string - one of \"start\", \"update\", \"stop\"~%string gestureType                  # string - one of \"circle\", \"swipe\", \"keyTap\", \"screenTap\"~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeapGesture>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'handIds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointableIds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'startPosition))
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'gestureType))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeapGesture>))
  "Converts a ROS message object to a list"
  (cl:list 'LeapGesture
    (cl:cons ':center (center msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':handIds (handIds msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':normal (normal msg))
    (cl:cons ':pointableIds (pointableIds msg))
    (cl:cons ':position (position msg))
    (cl:cons ':progress (progress msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':startPosition (startPosition msg))
    (cl:cons ':state (state msg))
    (cl:cons ':gestureType (gestureType msg))
))
