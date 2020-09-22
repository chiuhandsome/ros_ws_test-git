; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-srv)


;//! \htmlinclude bot_getenabledi_cmd-request.msg.html

(cl:defclass <bot_getenabledi_cmd-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass bot_getenabledi_cmd-request (<bot_getenabledi_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_getenabledi_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_getenabledi_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_getenabledi_cmd-request> is deprecated: use botcmd_msgs-srv:bot_getenabledi_cmd-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <bot_getenabledi_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:command-val is deprecated.  Use botcmd_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_getenabledi_cmd-request>) ostream)
  "Serializes a message object of type '<bot_getenabledi_cmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_getenabledi_cmd-request>) istream)
  "Deserializes a message object of type '<bot_getenabledi_cmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_getenabledi_cmd-request>)))
  "Returns string type for a service object of type '<bot_getenabledi_cmd-request>"
  "botcmd_msgs/bot_getenabledi_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_getenabledi_cmd-request)))
  "Returns string type for a service object of type 'bot_getenabledi_cmd-request"
  "botcmd_msgs/bot_getenabledi_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_getenabledi_cmd-request>)))
  "Returns md5sum for a message object of type '<bot_getenabledi_cmd-request>"
  "c310784b062f6ef0f7752130ef306c28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_getenabledi_cmd-request)))
  "Returns md5sum for a message object of type 'bot_getenabledi_cmd-request"
  "c310784b062f6ef0f7752130ef306c28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_getenabledi_cmd-request>)))
  "Returns full string definition for message of type '<bot_getenabledi_cmd-request>"
  (cl:format cl:nil "int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_getenabledi_cmd-request)))
  "Returns full string definition for message of type 'bot_getenabledi_cmd-request"
  (cl:format cl:nil "int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_getenabledi_cmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_getenabledi_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_getenabledi_cmd-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude bot_getenabledi_cmd-response.msg.html

(cl:defclass <bot_getenabledi_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass bot_getenabledi_cmd-response (<bot_getenabledi_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_getenabledi_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_getenabledi_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_getenabledi_cmd-response> is deprecated: use botcmd_msgs-srv:bot_getenabledi_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_getenabledi_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:result-val is deprecated.  Use botcmd_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <bot_getenabledi_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:status-val is deprecated.  Use botcmd_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_getenabledi_cmd-response>) ostream)
  "Serializes a message object of type '<bot_getenabledi_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_getenabledi_cmd-response>) istream)
  "Deserializes a message object of type '<bot_getenabledi_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_getenabledi_cmd-response>)))
  "Returns string type for a service object of type '<bot_getenabledi_cmd-response>"
  "botcmd_msgs/bot_getenabledi_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_getenabledi_cmd-response)))
  "Returns string type for a service object of type 'bot_getenabledi_cmd-response"
  "botcmd_msgs/bot_getenabledi_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_getenabledi_cmd-response>)))
  "Returns md5sum for a message object of type '<bot_getenabledi_cmd-response>"
  "c310784b062f6ef0f7752130ef306c28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_getenabledi_cmd-response)))
  "Returns md5sum for a message object of type 'bot_getenabledi_cmd-response"
  "c310784b062f6ef0f7752130ef306c28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_getenabledi_cmd-response>)))
  "Returns full string definition for message of type '<bot_getenabledi_cmd-response>"
  (cl:format cl:nil "bool result~%int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_getenabledi_cmd-response)))
  "Returns full string definition for message of type 'bot_getenabledi_cmd-response"
  (cl:format cl:nil "bool result~%int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_getenabledi_cmd-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_getenabledi_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_getenabledi_cmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bot_getenabledi_cmd)))
  'bot_getenabledi_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bot_getenabledi_cmd)))
  'bot_getenabledi_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_getenabledi_cmd)))
  "Returns string type for a service object of type '<bot_getenabledi_cmd>"
  "botcmd_msgs/bot_getenabledi_cmd")