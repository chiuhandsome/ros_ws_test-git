; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-srv)


;//! \htmlinclude bot_do_cmd-request.msg.html

(cl:defclass <bot_do_cmd-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (parameter
    :reader parameter
    :initarg :parameter
    :type cl:string
    :initform ""))
)

(cl:defclass bot_do_cmd-request (<bot_do_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_do_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_do_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_do_cmd-request> is deprecated: use botcmd_msgs-srv:bot_do_cmd-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <bot_do_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:command-val is deprecated.  Use botcmd_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <bot_do_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:parameter-val is deprecated.  Use botcmd_msgs-srv:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_do_cmd-request>) ostream)
  "Serializes a message object of type '<bot_do_cmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_do_cmd-request>) istream)
  "Deserializes a message object of type '<bot_do_cmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_do_cmd-request>)))
  "Returns string type for a service object of type '<bot_do_cmd-request>"
  "botcmd_msgs/bot_do_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_do_cmd-request)))
  "Returns string type for a service object of type 'bot_do_cmd-request"
  "botcmd_msgs/bot_do_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_do_cmd-request>)))
  "Returns md5sum for a message object of type '<bot_do_cmd-request>"
  "843195841fd9bccb9459230778ac6303")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_do_cmd-request)))
  "Returns md5sum for a message object of type 'bot_do_cmd-request"
  "843195841fd9bccb9459230778ac6303")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_do_cmd-request>)))
  "Returns full string definition for message of type '<bot_do_cmd-request>"
  (cl:format cl:nil "int8 command~%string parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_do_cmd-request)))
  "Returns full string definition for message of type 'bot_do_cmd-request"
  (cl:format cl:nil "int8 command~%string parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_do_cmd-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'parameter))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_do_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_do_cmd-request
    (cl:cons ':command (command msg))
    (cl:cons ':parameter (parameter msg))
))
;//! \htmlinclude bot_do_cmd-response.msg.html

(cl:defclass <bot_do_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bot_do_cmd-response (<bot_do_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_do_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_do_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_do_cmd-response> is deprecated: use botcmd_msgs-srv:bot_do_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_do_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:result-val is deprecated.  Use botcmd_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_do_cmd-response>) ostream)
  "Serializes a message object of type '<bot_do_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_do_cmd-response>) istream)
  "Deserializes a message object of type '<bot_do_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_do_cmd-response>)))
  "Returns string type for a service object of type '<bot_do_cmd-response>"
  "botcmd_msgs/bot_do_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_do_cmd-response)))
  "Returns string type for a service object of type 'bot_do_cmd-response"
  "botcmd_msgs/bot_do_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_do_cmd-response>)))
  "Returns md5sum for a message object of type '<bot_do_cmd-response>"
  "843195841fd9bccb9459230778ac6303")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_do_cmd-response)))
  "Returns md5sum for a message object of type 'bot_do_cmd-response"
  "843195841fd9bccb9459230778ac6303")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_do_cmd-response>)))
  "Returns full string definition for message of type '<bot_do_cmd-response>"
  (cl:format cl:nil "bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_do_cmd-response)))
  "Returns full string definition for message of type 'bot_do_cmd-response"
  (cl:format cl:nil "bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_do_cmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_do_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_do_cmd-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bot_do_cmd)))
  'bot_do_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bot_do_cmd)))
  'bot_do_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_do_cmd)))
  "Returns string type for a service object of type '<bot_do_cmd>"
  "botcmd_msgs/bot_do_cmd")