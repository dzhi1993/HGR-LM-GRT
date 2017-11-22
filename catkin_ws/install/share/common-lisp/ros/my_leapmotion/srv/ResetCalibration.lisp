; Auto-generated. Do not edit!


(cl:in-package my_leapmotion-srv)


;//! \htmlinclude ResetCalibration-request.msg.html

(cl:defclass <ResetCalibration-request> (roslisp-msg-protocol:ros-message)
  ((resetRequest
    :reader resetRequest
    :initarg :resetRequest
    :type cl:integer
    :initform 0))
)

(cl:defclass ResetCalibration-request (<ResetCalibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetCalibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetCalibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_leapmotion-srv:<ResetCalibration-request> is deprecated: use my_leapmotion-srv:ResetCalibration-request instead.")))

(cl:ensure-generic-function 'resetRequest-val :lambda-list '(m))
(cl:defmethod resetRequest-val ((m <ResetCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_leapmotion-srv:resetRequest-val is deprecated.  Use my_leapmotion-srv:resetRequest instead.")
  (resetRequest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetCalibration-request>) ostream)
  "Serializes a message object of type '<ResetCalibration-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resetRequest)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetCalibration-request>) istream)
  "Deserializes a message object of type '<ResetCalibration-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resetRequest)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetCalibration-request>)))
  "Returns string type for a service object of type '<ResetCalibration-request>"
  "my_leapmotion/ResetCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCalibration-request)))
  "Returns string type for a service object of type 'ResetCalibration-request"
  "my_leapmotion/ResetCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetCalibration-request>)))
  "Returns md5sum for a message object of type '<ResetCalibration-request>"
  "65b5a0f951bad2a491fc17152c517af8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetCalibration-request)))
  "Returns md5sum for a message object of type 'ResetCalibration-request"
  "65b5a0f951bad2a491fc17152c517af8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetCalibration-request>)))
  "Returns full string definition for message of type '<ResetCalibration-request>"
  (cl:format cl:nil "char resetRequest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetCalibration-request)))
  "Returns full string definition for message of type 'ResetCalibration-request"
  (cl:format cl:nil "char resetRequest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetCalibration-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetCalibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetCalibration-request
    (cl:cons ':resetRequest (resetRequest msg))
))
;//! \htmlinclude ResetCalibration-response.msg.html

(cl:defclass <ResetCalibration-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetCalibration-response (<ResetCalibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetCalibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetCalibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_leapmotion-srv:<ResetCalibration-response> is deprecated: use my_leapmotion-srv:ResetCalibration-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetCalibration-response>) ostream)
  "Serializes a message object of type '<ResetCalibration-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetCalibration-response>) istream)
  "Deserializes a message object of type '<ResetCalibration-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetCalibration-response>)))
  "Returns string type for a service object of type '<ResetCalibration-response>"
  "my_leapmotion/ResetCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCalibration-response)))
  "Returns string type for a service object of type 'ResetCalibration-response"
  "my_leapmotion/ResetCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetCalibration-response>)))
  "Returns md5sum for a message object of type '<ResetCalibration-response>"
  "65b5a0f951bad2a491fc17152c517af8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetCalibration-response)))
  "Returns md5sum for a message object of type 'ResetCalibration-response"
  "65b5a0f951bad2a491fc17152c517af8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetCalibration-response>)))
  "Returns full string definition for message of type '<ResetCalibration-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetCalibration-response)))
  "Returns full string definition for message of type 'ResetCalibration-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetCalibration-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetCalibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetCalibration-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetCalibration)))
  'ResetCalibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetCalibration)))
  'ResetCalibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCalibration)))
  "Returns string type for a service object of type '<ResetCalibration>"
  "my_leapmotion/ResetCalibration")