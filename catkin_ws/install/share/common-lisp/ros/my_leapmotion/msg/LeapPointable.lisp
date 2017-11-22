; Auto-generated. Do not edit!


(cl:in-package my_leapmotion-msg)


;//! \htmlinclude LeapPointable.msg.html

(cl:defclass <LeapPointable> (roslisp-msg-protocol:ros-message)
  ((metacarpalBasis
    :reader metacarpalBasis
    :initarg :metacarpalBasis
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 3 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (proximalBasis
    :reader proximalBasis
    :initarg :proximalBasis
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 3 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (intermediateBasis
    :reader intermediateBasis
    :initarg :intermediateBasis
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 3 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (distalBasis
    :reader distalBasis
    :initarg :distalBasis
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 3 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (btipPosition
    :reader btipPosition
    :initarg :btipPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (carpPosition
    :reader carpPosition
    :initarg :carpPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (dipPosition
    :reader dipPosition
    :initarg :dipPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (extended
    :reader extended
    :initarg :extended
    :type cl:boolean
    :initform cl:nil)
   (handId
    :reader handId
    :initarg :handId
    :type cl:integer
    :initform 0)
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (mcpPosition
    :reader mcpPosition
    :initarg :mcpPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pipPosition
    :reader pipPosition
    :initarg :pipPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (stabilizedTipPosition
    :reader stabilizedTipPosition
    :initarg :stabilizedTipPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (timeVisible
    :reader timeVisible
    :initarg :timeVisible
    :type cl:float
    :initform 0.0)
   (tipPosition
    :reader tipPosition
    :initarg :tipPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (tipVelocity
    :reader tipVelocity
    :initarg :tipVelocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (tool
    :reader tool
    :initarg :tool
    :type cl:boolean
    :initform cl:nil)
   (touchDistance
    :reader touchDistance
    :initarg :touchDistance
    :type cl:float
    :initform 0.0)
   (touchZone
    :reader touchZone
    :initarg :touchZone
    :type cl:string
    :initform "")
   (pointableType
    :reader pointableType
    :initarg :pointableType
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass LeapPointable (<LeapPointable>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeapPointable>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeapPointable)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_leapmotion-msg:<LeapPointable> is deprecated: use my_leapmotion-msg:LeapPointable instead.")))

(cl:ensure-generic-function 'metacarpalBasis-val :lambda-list '(m))
(cl:defmethod metacarpalBasis-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:metacarpalBasis-val is deprecated.  Use my_leapmotion-msg:metacarpalBasis instead.")
  (metacarpalBasis m))

(cl:ensure-generic-function 'proximalBasis-val :lambda-list '(m))
(cl:defmethod proximalBasis-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:proximalBasis-val is deprecated.  Use my_leapmotion-msg:proximalBasis instead.")
  (proximalBasis m))

(cl:ensure-generic-function 'intermediateBasis-val :lambda-list '(m))
(cl:defmethod intermediateBasis-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:intermediateBasis-val is deprecated.  Use my_leapmotion-msg:intermediateBasis instead.")
  (intermediateBasis m))

(cl:ensure-generic-function 'distalBasis-val :lambda-list '(m))
(cl:defmethod distalBasis-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:distalBasis-val is deprecated.  Use my_leapmotion-msg:distalBasis instead.")
  (distalBasis m))

(cl:ensure-generic-function 'btipPosition-val :lambda-list '(m))
(cl:defmethod btipPosition-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:btipPosition-val is deprecated.  Use my_leapmotion-msg:btipPosition instead.")
  (btipPosition m))

(cl:ensure-generic-function 'carpPosition-val :lambda-list '(m))
(cl:defmethod carpPosition-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:carpPosition-val is deprecated.  Use my_leapmotion-msg:carpPosition instead.")
  (carpPosition m))

(cl:ensure-generic-function 'dipPosition-val :lambda-list '(m))
(cl:defmethod dipPosition-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:dipPosition-val is deprecated.  Use my_leapmotion-msg:dipPosition instead.")
  (dipPosition m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:direction-val is deprecated.  Use my_leapmotion-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'extended-val :lambda-list '(m))
(cl:defmethod extended-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:extended-val is deprecated.  Use my_leapmotion-msg:extended instead.")
  (extended m))

(cl:ensure-generic-function 'handId-val :lambda-list '(m))
(cl:defmethod handId-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:handId-val is deprecated.  Use my_leapmotion-msg:handId instead.")
  (handId m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:ID-val is deprecated.  Use my_leapmotion-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:length-val is deprecated.  Use my_leapmotion-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'mcpPosition-val :lambda-list '(m))
(cl:defmethod mcpPosition-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:mcpPosition-val is deprecated.  Use my_leapmotion-msg:mcpPosition instead.")
  (mcpPosition m))

(cl:ensure-generic-function 'pipPosition-val :lambda-list '(m))
(cl:defmethod pipPosition-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:pipPosition-val is deprecated.  Use my_leapmotion-msg:pipPosition instead.")
  (pipPosition m))

(cl:ensure-generic-function 'stabilizedTipPosition-val :lambda-list '(m))
(cl:defmethod stabilizedTipPosition-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:stabilizedTipPosition-val is deprecated.  Use my_leapmotion-msg:stabilizedTipPosition instead.")
  (stabilizedTipPosition m))

(cl:ensure-generic-function 'timeVisible-val :lambda-list '(m))
(cl:defmethod timeVisible-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:timeVisible-val is deprecated.  Use my_leapmotion-msg:timeVisible instead.")
  (timeVisible m))

(cl:ensure-generic-function 'tipPosition-val :lambda-list '(m))
(cl:defmethod tipPosition-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:tipPosition-val is deprecated.  Use my_leapmotion-msg:tipPosition instead.")
  (tipPosition m))

(cl:ensure-generic-function 'tipVelocity-val :lambda-list '(m))
(cl:defmethod tipVelocity-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:tipVelocity-val is deprecated.  Use my_leapmotion-msg:tipVelocity instead.")
  (tipVelocity m))

(cl:ensure-generic-function 'tool-val :lambda-list '(m))
(cl:defmethod tool-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:tool-val is deprecated.  Use my_leapmotion-msg:tool instead.")
  (tool m))

(cl:ensure-generic-function 'touchDistance-val :lambda-list '(m))
(cl:defmethod touchDistance-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:touchDistance-val is deprecated.  Use my_leapmotion-msg:touchDistance instead.")
  (touchDistance m))

(cl:ensure-generic-function 'touchZone-val :lambda-list '(m))
(cl:defmethod touchZone-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:touchZone-val is deprecated.  Use my_leapmotion-msg:touchZone instead.")
  (touchZone m))

(cl:ensure-generic-function 'pointableType-val :lambda-list '(m))
(cl:defmethod pointableType-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:pointableType-val is deprecated.  Use my_leapmotion-msg:pointableType instead.")
  (pointableType m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <LeapPointable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:width-val is deprecated.  Use my_leapmotion-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeapPointable>) ostream)
  "Serializes a message object of type '<LeapPointable>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'metacarpalBasis))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'proximalBasis))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'intermediateBasis))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'distalBasis))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'btipPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'carpPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dipPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'extended) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mcpPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pipPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stabilizedTipPosition) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeVisible))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tipPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tipVelocity) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tool) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'touchDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'touchZone))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'touchZone))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pointableType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pointableType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pointableType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pointableType)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeapPointable>) istream)
  "Deserializes a message object of type '<LeapPointable>"
  (cl:setf (cl:slot-value msg 'metacarpalBasis) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'metacarpalBasis)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'proximalBasis) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'proximalBasis)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'intermediateBasis) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'intermediateBasis)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'distalBasis) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'distalBasis)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'btipPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'carpPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dipPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
    (cl:setf (cl:slot-value msg 'extended) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mcpPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pipPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stabilizedTipPosition) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeVisible) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tipPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tipVelocity) istream)
    (cl:setf (cl:slot-value msg 'tool) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'touchDistance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'touchZone) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'touchZone) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pointableType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pointableType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pointableType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pointableType)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeapPointable>)))
  "Returns string type for a message object of type '<LeapPointable>"
  "my_leapmotion/LeapPointable")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeapPointable)))
  "Returns string type for a message object of type 'LeapPointable"
  "my_leapmotion/LeapPointable")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeapPointable>)))
  "Returns md5sum for a message object of type '<LeapPointable>"
  "17349b2abd8a7a1f31586b0c52c91cb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeapPointable)))
  "Returns md5sum for a message object of type 'LeapPointable"
  "17349b2abd8a7a1f31586b0c52c91cb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeapPointable>)))
  "Returns full string definition for message of type '<LeapPointable>"
  (cl:format cl:nil "# Leap Motion v6 Pointable JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%~%# Leap uses a two dimensional array for the bases but ROS messages only support one dimension~%# Unroll the Leap bases into individual bone basis instead~%# geometry_msgs/Vector3[3][] bases          # the 3 basis vectors for each bone, in index order, wrist to tip, metacarpal, proximal, intermediate, and distal.~%geometry_msgs/Vector3[3] metacarpalBasis~%geometry_msgs/Vector3[3] proximalBasis~%geometry_msgs/Vector3[3] intermediateBasis~%geometry_msgs/Vector3[3] distalBasis~%geometry_msgs/Point btipPosition            # the position of the tip of the distal phalanx as an array of 3 floats.~%geometry_msgs/Point carpPosition            # the position of the base of metacarpal bone as an array of 3 floats.~%geometry_msgs/Point dipPosition             # the position of the base of the distal phalanx as an array of 3 floats.~%geometry_msgs/Vector3 direction~%bool extended~%uint32 handId~%uint32 ID~%float64 length~%geometry_msgs/Point mcpPosition             # a position vector as an array of 3 floating point numbers~%geometry_msgs/Point pipPosition             # a position vector as an array of 3 floating point numbers~%geometry_msgs/Point stabilizedTipPosition   # array of floats (vector)~%float64 timeVisible~%geometry_msgs/Point tipPosition             #  array of floats (vector)~%geometry_msgs/Vector3 tipVelocity           #  array of floats (vector)~%bool tool~%float64 touchDistance~%string touchZone                            # string - one of \"none\", \"hovering\", \"touching\"~%uint32 pointableType                        # integer - 0 is thumb; 4 is pinky~%float64 width~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeapPointable)))
  "Returns full string definition for message of type 'LeapPointable"
  (cl:format cl:nil "# Leap Motion v6 Pointable JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%~%# Leap uses a two dimensional array for the bases but ROS messages only support one dimension~%# Unroll the Leap bases into individual bone basis instead~%# geometry_msgs/Vector3[3][] bases          # the 3 basis vectors for each bone, in index order, wrist to tip, metacarpal, proximal, intermediate, and distal.~%geometry_msgs/Vector3[3] metacarpalBasis~%geometry_msgs/Vector3[3] proximalBasis~%geometry_msgs/Vector3[3] intermediateBasis~%geometry_msgs/Vector3[3] distalBasis~%geometry_msgs/Point btipPosition            # the position of the tip of the distal phalanx as an array of 3 floats.~%geometry_msgs/Point carpPosition            # the position of the base of metacarpal bone as an array of 3 floats.~%geometry_msgs/Point dipPosition             # the position of the base of the distal phalanx as an array of 3 floats.~%geometry_msgs/Vector3 direction~%bool extended~%uint32 handId~%uint32 ID~%float64 length~%geometry_msgs/Point mcpPosition             # a position vector as an array of 3 floating point numbers~%geometry_msgs/Point pipPosition             # a position vector as an array of 3 floating point numbers~%geometry_msgs/Point stabilizedTipPosition   # array of floats (vector)~%float64 timeVisible~%geometry_msgs/Point tipPosition             #  array of floats (vector)~%geometry_msgs/Vector3 tipVelocity           #  array of floats (vector)~%bool tool~%float64 touchDistance~%string touchZone                            # string - one of \"none\", \"hovering\", \"touching\"~%uint32 pointableType                        # integer - 0 is thumb; 4 is pinky~%float64 width~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeapPointable>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'metacarpalBasis) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'proximalBasis) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'intermediateBasis) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'distalBasis) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'btipPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'carpPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dipPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     1
     4
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mcpPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pipPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stabilizedTipPosition))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tipPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tipVelocity))
     1
     8
     4 (cl:length (cl:slot-value msg 'touchZone))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeapPointable>))
  "Converts a ROS message object to a list"
  (cl:list 'LeapPointable
    (cl:cons ':metacarpalBasis (metacarpalBasis msg))
    (cl:cons ':proximalBasis (proximalBasis msg))
    (cl:cons ':intermediateBasis (intermediateBasis msg))
    (cl:cons ':distalBasis (distalBasis msg))
    (cl:cons ':btipPosition (btipPosition msg))
    (cl:cons ':carpPosition (carpPosition msg))
    (cl:cons ':dipPosition (dipPosition msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':extended (extended msg))
    (cl:cons ':handId (handId msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':length (length msg))
    (cl:cons ':mcpPosition (mcpPosition msg))
    (cl:cons ':pipPosition (pipPosition msg))
    (cl:cons ':stabilizedTipPosition (stabilizedTipPosition msg))
    (cl:cons ':timeVisible (timeVisible msg))
    (cl:cons ':tipPosition (tipPosition msg))
    (cl:cons ':tipVelocity (tipVelocity msg))
    (cl:cons ':tool (tool msg))
    (cl:cons ':touchDistance (touchDistance msg))
    (cl:cons ':touchZone (touchZone msg))
    (cl:cons ':pointableType (pointableType msg))
    (cl:cons ':width (width msg))
))
