; Auto-generated. Do not edit!


(cl:in-package mongodb_store-srv)


;//! \htmlinclude GetParam-request.msg.html

(cl:defclass <GetParam-request> (roslisp-msg-protocol:ros-message)
  ((param_name
    :reader param_name
    :initarg :param_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetParam-request (<GetParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<GetParam-request> is deprecated: use mongodb_store-srv:GetParam-request instead.")))

(cl:ensure-generic-function 'param_name-val :lambda-list '(m))
(cl:defmethod param_name-val ((m <GetParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:param_name-val is deprecated.  Use mongodb_store-srv:param_name instead.")
  (param_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetParam-request>) ostream)
  "Serializes a message object of type '<GetParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetParam-request>) istream)
  "Deserializes a message object of type '<GetParam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetParam-request>)))
  "Returns string type for a service object of type '<GetParam-request>"
  "mongodb_store/GetParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParam-request)))
  "Returns string type for a service object of type 'GetParam-request"
  "mongodb_store/GetParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetParam-request>)))
  "Returns md5sum for a message object of type '<GetParam-request>"
  "add0a9ca8505353703e4f0dfd366c0c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetParam-request)))
  "Returns md5sum for a message object of type 'GetParam-request"
  "add0a9ca8505353703e4f0dfd366c0c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetParam-request>)))
  "Returns full string definition for message of type '<GetParam-request>"
  (cl:format cl:nil "string param_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetParam-request)))
  "Returns full string definition for message of type 'GetParam-request"
  (cl:format cl:nil "string param_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'param_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetParam-request
    (cl:cons ':param_name (param_name msg))
))
;//! \htmlinclude GetParam-response.msg.html

(cl:defclass <GetParam-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (param_value
    :reader param_value
    :initarg :param_value
    :type cl:string
    :initform ""))
)

(cl:defclass GetParam-response (<GetParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<GetParam-response> is deprecated: use mongodb_store-srv:GetParam-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:success-val is deprecated.  Use mongodb_store-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'param_value-val :lambda-list '(m))
(cl:defmethod param_value-val ((m <GetParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:param_value-val is deprecated.  Use mongodb_store-srv:param_value instead.")
  (param_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetParam-response>) ostream)
  "Serializes a message object of type '<GetParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetParam-response>) istream)
  "Deserializes a message object of type '<GetParam-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetParam-response>)))
  "Returns string type for a service object of type '<GetParam-response>"
  "mongodb_store/GetParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParam-response)))
  "Returns string type for a service object of type 'GetParam-response"
  "mongodb_store/GetParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetParam-response>)))
  "Returns md5sum for a message object of type '<GetParam-response>"
  "add0a9ca8505353703e4f0dfd366c0c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetParam-response)))
  "Returns md5sum for a message object of type 'GetParam-response"
  "add0a9ca8505353703e4f0dfd366c0c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetParam-response>)))
  "Returns full string definition for message of type '<GetParam-response>"
  (cl:format cl:nil "bool success~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetParam-response)))
  "Returns full string definition for message of type 'GetParam-response"
  (cl:format cl:nil "bool success~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetParam-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'param_value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetParam-response
    (cl:cons ':success (success msg))
    (cl:cons ':param_value (param_value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetParam)))
  'GetParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetParam)))
  'GetParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParam)))
  "Returns string type for a service object of type '<GetParam>"
  "mongodb_store/GetParam")