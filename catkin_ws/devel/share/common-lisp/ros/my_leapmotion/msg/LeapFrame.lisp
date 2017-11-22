; Auto-generated. Do not edit!


(cl:in-package my_leapmotion-msg)


;//! \htmlinclude LeapFrame.msg.html

(cl:defclass <LeapFrame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (currentFrameRate
    :reader currentFrameRate
    :initarg :currentFrameRate
    :type cl:float
    :initform 0.0)
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (r
    :reader r
    :initarg :r
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (t
    :reader t
    :initarg :t
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (gestures
    :reader gestures
    :initarg :gestures
    :type (cl:vector my_leapmotion-msg:LeapGesture)
   :initform (cl:make-array 0 :element-type 'my_leapmotion-msg:LeapGesture :initial-element (cl:make-instance 'my_leapmotion-msg:LeapGesture)))
   (hands
    :reader hands
    :initarg :hands
    :type (cl:vector my_leapmotion-msg:LeapHand)
   :initform (cl:make-array 0 :element-type 'my_leapmotion-msg:LeapHand :initial-element (cl:make-instance 'my_leapmotion-msg:LeapHand)))
   (pointables
    :reader pointables
    :initarg :pointables
    :type (cl:vector my_leapmotion-msg:LeapPointable)
   :initform (cl:make-array 0 :element-type 'my_leapmotion-msg:LeapPointable :initial-element (cl:make-instance 'my_leapmotion-msg:LeapPointable))))
)

(cl:defclass LeapFrame (<LeapFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeapFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeapFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_leapmotion-msg:<LeapFrame> is deprecated: use my_leapmotion-msg:LeapFrame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:header-val is deprecated.  Use my_leapmotion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'currentFrameRate-val :lambda-list '(m))
(cl:defmethod currentFrameRate-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:currentFrameRate-val is deprecated.  Use my_leapmotion-msg:currentFrameRate instead.")
  (currentFrameRate m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:ID-val is deprecated.  Use my_leapmotion-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:r-val is deprecated.  Use my_leapmotion-msg:r instead.")
  (r m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:s-val is deprecated.  Use my_leapmotion-msg:s instead.")
  (s m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:t-val is deprecated.  Use my_leapmotion-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:timestamp-val is deprecated.  Use my_leapmotion-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'gestures-val :lambda-list '(m))
(cl:defmethod gestures-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:gestures-val is deprecated.  Use my_leapmotion-msg:gestures instead.")
  (gestures m))

(cl:ensure-generic-function 'hands-val :lambda-list '(m))
(cl:defmethod hands-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:hands-val is deprecated.  Use my_leapmotion-msg:hands instead.")
  (hands m))

(cl:ensure-generic-function 'pointables-val :lambda-list '(m))
(cl:defmethod pointables-val ((m <LeapFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:pointables-val is deprecated.  Use my_leapmotion-msg:pointables instead.")
  (pointables m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeapFrame>) ostream)
  "Serializes a message object of type '<LeapFrame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'currentFrameRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'r))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gestures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gestures))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hands))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointables))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pointables))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeapFrame>) istream)
  "Deserializes a message object of type '<LeapFrame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'currentFrameRate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'r) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'r)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gestures) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gestures)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'my_leapmotion-msg:LeapGesture))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'my_leapmotion-msg:LeapHand))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pointables) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointables)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'my_leapmotion-msg:LeapPointable))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeapFrame>)))
  "Returns string type for a message object of type '<LeapFrame>"
  "my_leapmotion/LeapFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeapFrame)))
  "Returns string type for a message object of type 'LeapFrame"
  "my_leapmotion/LeapFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeapFrame>)))
  "Returns md5sum for a message object of type '<LeapFrame>"
  "1be96930b5a5f7da0ae5f4ae85fd4442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeapFrame)))
  "Returns md5sum for a message object of type 'LeapFrame"
  "1be96930b5a5f7da0ae5f4ae85fd4442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeapFrame>)))
  "Returns full string definition for message of type '<LeapFrame>"
  (cl:format cl:nil "# Leap Motion v6 Frame JSON-based message~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%Header header~%float64 currentFrameRate~%uint32 ID                       # Leap Motion documents this as a float, but that's not right~%geometry_msgs/Vector3[] r      # Leap Motion documentation as Matrix (ambigous)~%float64 s~%geometry_msgs/Vector3 t~%time timestamp~%LeapGesture[] gestures~%LeapHand[] hands~%# interaction box not included~%LeapPointable[] pointables~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: my_leapmotion/LeapGesture~%# Leap Motion v6 Gesture JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%geometry_msgs/Point center          # array of floats (vector) -- circle only~%geometry_msgs/Vector3 direction     # array of floats (vector) -- swipe, keyTap, screenTap only~%uint32 duration                     # integer microseconds~%uint32[] handIds                    # array of integers~%uint32 ID                           # integer~%geometry_msgs/Vector3 normal        # array of floats -- circle only~%uint32[] pointableIds               # array~%geometry_msgs/Point position        # array of floats (vector) -- swipe, keyTap, screenTap only~%float64 progress                    # float -- circle, keyTap, screenTap only~%float64 radius                      # float -- circle only~%float64 speed                       # float -- swipe only~%geometry_msgs/Point startPosition   # array of float (vector) -- swipe only~%string state                        # string - one of \"start\", \"update\", \"stop\"~%string gestureType                  # string - one of \"circle\", \"swipe\", \"keyTap\", \"screenTap\"~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: my_leapmotion/LeapHand~%# Leap Motion v6 Hand JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%geometry_msgs/Vector3[3] armBasis           # the 3 basis vectors of the arm (array of vectors)~%float64 armWidth~%float64 confidence~%geometry_msgs/Vector3 direction             # array of floats (vector)~%geometry_msgs/Point elbow~%float64 grabStrength~%uint32 ID~%geometry_msgs/Vector3 palmNormal~%geometry_msgs/Point palmPosition~%geometry_msgs/Vector3 palmVelocity~%float64 pinchStrength~%geometry_msgs/Vector3[3] r                  # Leap Motion documentation as Matrix (ambigous)~%float64 s~%geometry_msgs/Point sphereCenter~%float64 sphereRadius~%geometry_msgs/Point stabilizedPalmPosition~%geometry_msgs/Vector3 t~%float64 timeVisible~%string handType                                 # string - one of \"right\", \"left\"~%geometry_msgs/Point wrist~%~%================================================================================~%MSG: my_leapmotion/LeapPointable~%# Leap Motion v6 Pointable JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%~%# Leap uses a two dimensional array for the bases but ROS messages only support one dimension~%# Unroll the Leap bases into individual bone basis instead~%# geometry_msgs/Vector3[3][] bases          # the 3 basis vectors for each bone, in index order, wrist to tip, metacarpal, proximal, intermediate, and distal.~%geometry_msgs/Vector3[3] metacarpalBasis~%geometry_msgs/Vector3[3] proximalBasis~%geometry_msgs/Vector3[3] intermediateBasis~%geometry_msgs/Vector3[3] distalBasis~%geometry_msgs/Point btipPosition            # the position of the tip of the distal phalanx as an array of 3 floats.~%geometry_msgs/Point carpPosition            # the position of the base of metacarpal bone as an array of 3 floats.~%geometry_msgs/Point dipPosition             # the position of the base of the distal phalanx as an array of 3 floats.~%geometry_msgs/Vector3 direction~%bool extended~%uint32 handId~%uint32 ID~%float64 length~%geometry_msgs/Point mcpPosition             # a position vector as an array of 3 floating point numbers~%geometry_msgs/Point pipPosition             # a position vector as an array of 3 floating point numbers~%geometry_msgs/Point stabilizedTipPosition   # array of floats (vector)~%float64 timeVisible~%geometry_msgs/Point tipPosition             #  array of floats (vector)~%geometry_msgs/Vector3 tipVelocity           #  array of floats (vector)~%bool tool~%float64 touchDistance~%string touchZone                            # string - one of \"none\", \"hovering\", \"touching\"~%uint32 pointableType                        # integer - 0 is thumb; 4 is pinky~%float64 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeapFrame)))
  "Returns full string definition for message of type 'LeapFrame"
  (cl:format cl:nil "# Leap Motion v6 Frame JSON-based message~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%Header header~%float64 currentFrameRate~%uint32 ID                       # Leap Motion documents this as a float, but that's not right~%geometry_msgs/Vector3[] r      # Leap Motion documentation as Matrix (ambigous)~%float64 s~%geometry_msgs/Vector3 t~%time timestamp~%LeapGesture[] gestures~%LeapHand[] hands~%# interaction box not included~%LeapPointable[] pointables~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: my_leapmotion/LeapGesture~%# Leap Motion v6 Gesture JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%geometry_msgs/Point center          # array of floats (vector) -- circle only~%geometry_msgs/Vector3 direction     # array of floats (vector) -- swipe, keyTap, screenTap only~%uint32 duration                     # integer microseconds~%uint32[] handIds                    # array of integers~%uint32 ID                           # integer~%geometry_msgs/Vector3 normal        # array of floats -- circle only~%uint32[] pointableIds               # array~%geometry_msgs/Point position        # array of floats (vector) -- swipe, keyTap, screenTap only~%float64 progress                    # float -- circle, keyTap, screenTap only~%float64 radius                      # float -- circle only~%float64 speed                       # float -- swipe only~%geometry_msgs/Point startPosition   # array of float (vector) -- swipe only~%string state                        # string - one of \"start\", \"update\", \"stop\"~%string gestureType                  # string - one of \"circle\", \"swipe\", \"keyTap\", \"screenTap\"~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: my_leapmotion/LeapHand~%# Leap Motion v6 Hand JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%geometry_msgs/Vector3[3] armBasis           # the 3 basis vectors of the arm (array of vectors)~%float64 armWidth~%float64 confidence~%geometry_msgs/Vector3 direction             # array of floats (vector)~%geometry_msgs/Point elbow~%float64 grabStrength~%uint32 ID~%geometry_msgs/Vector3 palmNormal~%geometry_msgs/Point palmPosition~%geometry_msgs/Vector3 palmVelocity~%float64 pinchStrength~%geometry_msgs/Vector3[3] r                  # Leap Motion documentation as Matrix (ambigous)~%float64 s~%geometry_msgs/Point sphereCenter~%float64 sphereRadius~%geometry_msgs/Point stabilizedPalmPosition~%geometry_msgs/Vector3 t~%float64 timeVisible~%string handType                                 # string - one of \"right\", \"left\"~%geometry_msgs/Point wrist~%~%================================================================================~%MSG: my_leapmotion/LeapPointable~%# Leap Motion v6 Pointable JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%~%# Leap uses a two dimensional array for the bases but ROS messages only support one dimension~%# Unroll the Leap bases into individual bone basis instead~%# geometry_msgs/Vector3[3][] bases          # the 3 basis vectors for each bone, in index order, wrist to tip, metacarpal, proximal, intermediate, and distal.~%geometry_msgs/Vector3[3] metacarpalBasis~%geometry_msgs/Vector3[3] proximalBasis~%geometry_msgs/Vector3[3] intermediateBasis~%geometry_msgs/Vector3[3] distalBasis~%geometry_msgs/Point btipPosition            # the position of the tip of the distal phalanx as an array of 3 floats.~%geometry_msgs/Point carpPosition            # the position of the base of metacarpal bone as an array of 3 floats.~%geometry_msgs/Point dipPosition             # the position of the base of the distal phalanx as an array of 3 floats.~%geometry_msgs/Vector3 direction~%bool extended~%uint32 handId~%uint32 ID~%float64 length~%geometry_msgs/Point mcpPosition             # a position vector as an array of 3 floating point numbers~%geometry_msgs/Point pipPosition             # a position vector as an array of 3 floating point numbers~%geometry_msgs/Point stabilizedTipPosition   # array of floats (vector)~%float64 timeVisible~%geometry_msgs/Point tipPosition             #  array of floats (vector)~%geometry_msgs/Vector3 tipVelocity           #  array of floats (vector)~%bool tool~%float64 touchDistance~%string touchZone                            # string - one of \"none\", \"hovering\", \"touching\"~%uint32 pointableType                        # integer - 0 is thumb; 4 is pinky~%float64 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeapFrame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'r) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gestures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointables) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeapFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'LeapFrame
    (cl:cons ':header (header msg))
    (cl:cons ':currentFrameRate (currentFrameRate msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':r (r msg))
    (cl:cons ':s (s msg))
    (cl:cons ':t (t msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':gestures (gestures msg))
    (cl:cons ':hands (hands msg))
    (cl:cons ':pointables (pointables msg))
))
