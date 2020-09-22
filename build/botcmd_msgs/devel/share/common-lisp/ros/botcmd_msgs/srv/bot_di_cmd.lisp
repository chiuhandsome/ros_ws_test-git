; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-srv)


;//! \htmlinclude bot_di_cmd-request.msg.html

(cl:defclass <bot_di_cmd-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass bot_di_cmd-request (<bot_di_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_di_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_di_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_di_cmd-request> is deprecated: use botcmd_msgs-srv:bot_di_cmd-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <bot_di_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:command-val is deprecated.  Use botcmd_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_di_cmd-request>) ostream)
  "Serializes a message object of type '<bot_di_cmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_di_cmd-request>) istream)
  "Deserializes a message object of type '<bot_di_cmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_di_cmd-request>)))
  "Returns string type for a service object of type '<bot_di_cmd-request>"
  "botcmd_msgs/bot_di_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_di_cmd-request)))
  "Returns string type for a service object of type 'bot_di_cmd-request"
  "botcmd_msgs/bot_di_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_di_cmd-request>)))
  "Returns md5sum for a message object of type '<bot_di_cmd-request>"
  "1370eea95d2e64a2a473cf48bbf54676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_di_cmd-request)))
  "Returns md5sum for a message object of type 'bot_di_cmd-request"
  "1370eea95d2e64a2a473cf48bbf54676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_di_cmd-request>)))
  "Returns full string definition for message of type '<bot_di_cmd-request>"
  (cl:format cl:nil "int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_di_cmd-request)))
  "Returns full string definition for message of type 'bot_di_cmd-request"
  (cl:format cl:nil "int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_di_cmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_di_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_di_cmd-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude bot_di_cmd-response.msg.html

(cl:defclass <bot_di_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass bot_di_cmd-response (<bot_di_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_di_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_di_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_di_cmd-response> is deprecated: use botcmd_msgs-srv:bot_di_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_di_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:result-val is deprecated.  Use botcmd_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <bot_di_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:status-val is deprecated.  Use botcmd_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_di_cmd-response>) ostream)
  "Serializes a message object of type '<bot_di_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_di_cmd-response>) istream)
  "Deserializes a message object of type '<bot_di_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_di_cmd-response>)))
  "Returns string type for a service object of type '<bot_di_cmd-response>"
  "botcmd_msgs/bot_di_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_di_cmd-response)))
  "Returns string type for a service object of type 'bot_di_cmd-response"
  "botcmd_msgs/bot_di_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_di_cmd-response>)))
  "Returns md5sum for a message object of type '<bot_di_cmd-response>"
  "1370eea95d2e64a2a473cf48bbf54676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_di_cmd-response)))
  "Returns md5sum for a message object of type 'bot_di_cmd-response"
  "1370eea95d2e64a2a473cf48bbf54676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_di_cmd-response>)))
  "Returns full string definition for message of type '<bot_di_cmd-response>"
  (cl:format cl:nil "bool result~%string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_di_cmd-response)))
  "Returns full string definition for message of type 'bot_di_cmd-response"
  (cl:format cl:nil "bool result~%string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_di_cmd-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_di_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_di_cmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bot_di_cmd)))
  'bot_di_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bot_di_cmd)))
  'bot_di_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_di_cmd)))
  "Returns string type for a service object of type '<bot_di_cmd>"
  "botcmd_msgs/bot_di_cmd")