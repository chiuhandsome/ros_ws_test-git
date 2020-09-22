; Auto-generated. Do not edit!


(cl:in-package mongodb_store-srv)


;//! \htmlinclude SetParam-request.msg.html

(cl:defclass <SetParam-request> (roslisp-msg-protocol:ros-message)
  ((param
    :reader param
    :initarg :param
    :type cl:string
    :initform ""))
)

(cl:defclass SetParam-request (<SetParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<SetParam-request> is deprecated: use mongodb_store-srv:SetParam-request instead.")))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <SetParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:param-val is deprecated.  Use mongodb_store-srv:param instead.")
  (param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParam-request>) ostream)
  "Serializes a message object of type '<SetParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParam-request>) istream)
  "Deserializes a message object of type '<SetParam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParam-request>)))
  "Returns string type for a service object of type '<SetParam-request>"
  "mongodb_store/SetParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam-request)))
  "Returns string type for a service object of type 'SetParam-request"
  "mongodb_store/SetParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParam-request>)))
  "Returns md5sum for a message object of type '<SetParam-request>"
  "0ca675cadcc7920678717a658779319b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParam-request)))
  "Returns md5sum for a message object of type 'SetParam-request"
  "0ca675cadcc7920678717a658779319b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParam-request>)))
  "Returns full string definition for message of type '<SetParam-request>"
  (cl:format cl:nil "string param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParam-request)))
  "Returns full string definition for message of type 'SetParam-request"
  (cl:format cl:nil "string param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'param))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParam-request
    (cl:cons ':param (param msg))
))
;//! \htmlinclude SetParam-response.msg.html

(cl:defclass <SetParam-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetParam-response (<SetParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<SetParam-response> is deprecated: use mongodb_store-srv:SetParam-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:success-val is deprecated.  Use mongodb_store-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParam-response>) ostream)
  "Serializes a message object of type '<SetParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParam-response>) istream)
  "Deserializes a message object of type '<SetParam-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParam-response>)))
  "Returns string type for a service object of type '<SetParam-response>"
  "mongodb_store/SetParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam-response)))
  "Returns string type for a service object of type 'SetParam-response"
  "mongodb_store/SetParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParam-response>)))
  "Returns md5sum for a message object of type '<SetParam-response>"
  "0ca675cadcc7920678717a658779319b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParam-response)))
  "Returns md5sum for a message object of type 'SetParam-response"
  "0ca675cadcc7920678717a658779319b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParam-response>)))
  "Returns full string definition for message of type '<SetParam-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParam-response)))
  "Returns full string definition for message of type 'SetParam-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParam-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParam-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetParam)))
  'SetParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetParam)))
  'SetParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam)))
  "Returns string type for a service object of type '<SetParam>"
  "mongodb_store/SetParam")