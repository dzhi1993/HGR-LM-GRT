; Auto-generated. Do not edit!


(cl:in-package my_leapmotion-msg)


;//! \htmlinclude LeapHand.msg.html

(cl:defclass <LeapHand> (roslisp-msg-protocol:ros-message)
  ((armBasis
    :reader armBasis
    :initarg :armBasis
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 3 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (armWidth
    :reader armWidth
    :initarg :armWidth
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (elbow
    :reader elbow
    :initarg :elbow
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (grabStrength
    :reader grabStrength
    :initarg :grabStrength
    :type cl:float
    :initform 0.0)
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (palmNormal
    :reader palmNormal
    :initarg :palmNormal
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (palmPosition
    :reader palmPosition
    :initarg :palmPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (palmVelocity
    :reader palmVelocity
    :initarg :palmVelocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pinchStrength
    :reader pinchStrength
    :initarg :pinchStrength
    :type cl:float
    :initform 0.0)
   (r
    :reader r
    :initarg :r
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 3 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (sphereCenter
    :reader sphereCenter
    :initarg :sphereCenter
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (sphereRadius
    :reader sphereRadius
    :initarg :sphereRadius
    :type cl:float
    :initform 0.0)
   (stabilizedPalmPosition
    :reader stabilizedPalmPosition
    :initarg :stabilizedPalmPosition
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (t
    :reader t
    :initarg :t
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (timeVisible
    :reader timeVisible
    :initarg :timeVisible
    :type cl:float
    :initform 0.0)
   (handType
    :reader handType
    :initarg :handType
    :type cl:string
    :initform "")
   (wrist
    :reader wrist
    :initarg :wrist
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass LeapHand (<LeapHand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeapHand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeapHand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_leapmotion-msg:<LeapHand> is deprecated: use my_leapmotion-msg:LeapHand instead.")))

(cl:ensure-generic-function 'armBasis-val :lambda-list '(m))
(cl:defmethod armBasis-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:armBasis-val is deprecated.  Use my_leapmotion-msg:armBasis instead.")
  (armBasis m))

(cl:ensure-generic-function 'armWidth-val :lambda-list '(m))
(cl:defmethod armWidth-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:armWidth-val is deprecated.  Use my_leapmotion-msg:armWidth instead.")
  (armWidth m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:confidence-val is deprecated.  Use my_leapmotion-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:direction-val is deprecated.  Use my_leapmotion-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'elbow-val :lambda-list '(m))
(cl:defmethod elbow-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:elbow-val is deprecated.  Use my_leapmotion-msg:elbow instead.")
  (elbow m))

(cl:ensure-generic-function 'grabStrength-val :lambda-list '(m))
(cl:defmethod grabStrength-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:grabStrength-val is deprecated.  Use my_leapmotion-msg:grabStrength instead.")
  (grabStrength m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:ID-val is deprecated.  Use my_leapmotion-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'palmNormal-val :lambda-list '(m))
(cl:defmethod palmNormal-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:palmNormal-val is deprecated.  Use my_leapmotion-msg:palmNormal instead.")
  (palmNormal m))

(cl:ensure-generic-function 'palmPosition-val :lambda-list '(m))
(cl:defmethod palmPosition-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:palmPosition-val is deprecated.  Use my_leapmotion-msg:palmPosition instead.")
  (palmPosition m))

(cl:ensure-generic-function 'palmVelocity-val :lambda-list '(m))
(cl:defmethod palmVelocity-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:palmVelocity-val is deprecated.  Use my_leapmotion-msg:palmVelocity instead.")
  (palmVelocity m))

(cl:ensure-generic-function 'pinchStrength-val :lambda-list '(m))
(cl:defmethod pinchStrength-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:pinchStrength-val is deprecated.  Use my_leapmotion-msg:pinchStrength instead.")
  (pinchStrength m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:r-val is deprecated.  Use my_leapmotion-msg:r instead.")
  (r m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:s-val is deprecated.  Use my_leapmotion-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'sphereCenter-val :lambda-list '(m))
(cl:defmethod sphereCenter-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:sphereCenter-val is deprecated.  Use my_leapmotion-msg:sphereCenter instead.")
  (sphereCenter m))

(cl:ensure-generic-function 'sphereRadius-val :lambda-list '(m))
(cl:defmethod sphereRadius-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:sphereRadius-val is deprecated.  Use my_leapmotion-msg:sphereRadius instead.")
  (sphereRadius m))

(cl:ensure-generic-function 'stabilizedPalmPosition-val :lambda-list '(m))
(cl:defmethod stabilizedPalmPosition-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:stabilizedPalmPosition-val is deprecated.  Use my_leapmotion-msg:stabilizedPalmPosition instead.")
  (stabilizedPalmPosition m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:t-val is deprecated.  Use my_leapmotion-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'timeVisible-val :lambda-list '(m))
(cl:defmethod timeVisible-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:timeVisible-val is deprecated.  Use my_leapmotion-msg:timeVisible instead.")
  (timeVisible m))

(cl:ensure-generic-function 'handType-val :lambda-list '(m))
(cl:defmethod handType-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:handType-val is deprecated.  Use my_leapmotion-msg:handType instead.")
  (handType m))

(cl:ensure-generic-function 'wrist-val :lambda-list '(m))
(cl:defmethod wrist-val ((m <LeapHand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-msg:wrist-val is deprecated.  Use my_leapmotion-msg:wrist instead.")
  (wrist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeapHand>) ostream)
  "Serializes a message object of type '<LeapHand>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'armBasis))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'armWidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'elbow) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'grabStrength))))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'palmNormal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'palmPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'palmVelocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pinchStrength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sphereCenter) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sphereRadius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stabilizedPalmPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeVisible))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'handType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'handType))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeapHand>) istream)
  "Deserializes a message object of type '<LeapHand>"
  (cl:setf (cl:slot-value msg 'armBasis) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'armBasis)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'armWidth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'elbow) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grabStrength) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'palmNormal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'palmPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'palmVelocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pinchStrength) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'r) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'r)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sphereCenter) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sphereRadius) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stabilizedPalmPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't) istream)
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'handType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeapHand>)))
  "Returns string type for a message object of type '<LeapHand>"
  "my_leapmotion/LeapHand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeapHand)))
  "Returns string type for a message object of type 'LeapHand"
  "my_leapmotion/LeapHand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeapHand>)))
  "Returns md5sum for a message object of type '<LeapHand>"
  "e1f168193e08481c556346f6b4c70f16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeapHand)))
  "Returns md5sum for a message object of type 'LeapHand"
  "e1f168193e08481c556346f6b4c70f16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeapHand>)))
  "Returns full string definition for message of type '<LeapHand>"
  (cl:format cl:nil "# Leap Motion v6 Hand JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%geometry_msgs/Vector3[3] armBasis           # the 3 basis vectors of the arm (array of vectors)~%float64 armWidth~%float64 confidence~%geometry_msgs/Vector3 direction             # array of floats (vector)~%geometry_msgs/Point elbow~%float64 grabStrength~%uint32 ID~%geometry_msgs/Vector3 palmNormal~%geometry_msgs/Point palmPosition~%geometry_msgs/Vector3 palmVelocity~%float64 pinchStrength~%geometry_msgs/Vector3[3] r                  # Leap Motion documentation as Matrix (ambigous)~%float64 s~%geometry_msgs/Point sphereCenter~%float64 sphereRadius~%geometry_msgs/Point stabilizedPalmPosition~%geometry_msgs/Vector3 t~%float64 timeVisible~%string handType                                 # string - one of \"right\", \"left\"~%geometry_msgs/Point wrist~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeapHand)))
  "Returns full string definition for message of type 'LeapHand"
  (cl:format cl:nil "# Leap Motion v6 Hand JSON-based submessage~%# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6~%#~%#~%geometry_msgs/Vector3[3] armBasis           # the 3 basis vectors of the arm (array of vectors)~%float64 armWidth~%float64 confidence~%geometry_msgs/Vector3 direction             # array of floats (vector)~%geometry_msgs/Point elbow~%float64 grabStrength~%uint32 ID~%geometry_msgs/Vector3 palmNormal~%geometry_msgs/Point palmPosition~%geometry_msgs/Vector3 palmVelocity~%float64 pinchStrength~%geometry_msgs/Vector3[3] r                  # Leap Motion documentation as Matrix (ambigous)~%float64 s~%geometry_msgs/Point sphereCenter~%float64 sphereRadius~%geometry_msgs/Point stabilizedPalmPosition~%geometry_msgs/Vector3 t~%float64 timeVisible~%string handType                                 # string - one of \"right\", \"left\"~%geometry_msgs/Point wrist~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeapHand>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'armBasis) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'elbow))
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'palmNormal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'palmPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'palmVelocity))
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'r) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sphereCenter))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stabilizedPalmPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't))
     8
     4 (cl:length (cl:slot-value msg 'handType))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeapHand>))
  "Converts a ROS message object to a list"
  (cl:list 'LeapHand
    (cl:cons ':armBasis (armBasis msg))
    (cl:cons ':armWidth (armWidth msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':elbow (elbow msg))
    (cl:cons ':grabStrength (grabStrength msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':palmNormal (palmNormal msg))
    (cl:cons ':palmPosition (palmPosition msg))
    (cl:cons ':palmVelocity (palmVelocity msg))
    (cl:cons ':pinchStrength (pinchStrength msg))
    (cl:cons ':r (r msg))
    (cl:cons ':s (s msg))
    (cl:cons ':sphereCenter (sphereCenter msg))
    (cl:cons ':sphereRadius (sphereRadius msg))
    (cl:cons ':stabilizedPalmPosition (stabilizedPalmPosition msg))
    (cl:cons ':t (t msg))
    (cl:cons ':timeVisible (timeVisible msg))
    (cl:cons ':handType (handType msg))
    (cl:cons ':wrist (wrist msg))
))
