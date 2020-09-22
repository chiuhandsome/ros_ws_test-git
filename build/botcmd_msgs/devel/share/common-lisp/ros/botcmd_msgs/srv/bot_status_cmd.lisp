; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-srv)


;//! \htmlinclude bot_status_cmd-request.msg.html

(cl:defclass <bot_status_cmd-request> (roslisp-msg-protocol:ros-message)
  ((Command
    :reader Command
    :initarg :Command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass bot_status_cmd-request (<bot_status_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_status_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_status_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_status_cmd-request> is deprecated: use botcmd_msgs-srv:bot_status_cmd-request instead.")))

(cl:ensure-generic-function 'Command-val :lambda-list '(m))
(cl:defmethod Command-val ((m <bot_status_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:Command-val is deprecated.  Use botcmd_msgs-srv:Command instead.")
  (Command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_status_cmd-request>) ostream)
  "Serializes a message object of type '<bot_status_cmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'Command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_status_cmd-request>) istream)
  "Deserializes a message object of type '<bot_status_cmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Command) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_status_cmd-request>)))
  "Returns string type for a service object of type '<bot_status_cmd-request>"
  "botcmd_msgs/bot_status_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_status_cmd-request)))
  "Returns string type for a service object of type 'bot_status_cmd-request"
  "botcmd_msgs/bot_status_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_status_cmd-request>)))
  "Returns md5sum for a message object of type '<bot_status_cmd-request>"
  "78fe28ceb8cdb5fbcfec0625a620666c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_status_cmd-request)))
  "Returns md5sum for a message object of type 'bot_status_cmd-request"
  "78fe28ceb8cdb5fbcfec0625a620666c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_status_cmd-request>)))
  "Returns full string definition for message of type '<bot_status_cmd-request>"
  (cl:format cl:nil "int16 Command ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_status_cmd-request)))
  "Returns full string definition for message of type 'bot_status_cmd-request"
  (cl:format cl:nil "int16 Command ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_status_cmd-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_status_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_status_cmd-request
    (cl:cons ':Command (Command msg))
))
;//! \htmlinclude bot_status_cmd-response.msg.html

(cl:defclass <bot_status_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (result_Command
    :reader result_Command
    :initarg :result_Command
    :type cl:fixnum
    :initform 0)
   (status_code
    :reader status_code
    :initarg :status_code
    :type cl:fixnum
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass bot_status_cmd-response (<bot_status_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_status_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_status_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_status_cmd-response> is deprecated: use botcmd_msgs-srv:bot_status_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_status_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:result-val is deprecated.  Use botcmd_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <bot_status_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:stamp-val is deprecated.  Use botcmd_msgs-srv:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'result_Command-val :lambda-list '(m))
(cl:defmethod result_Command-val ((m <bot_status_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:result_Command-val is deprecated.  Use botcmd_msgs-srv:result_Command instead.")
  (result_Command m))

(cl:ensure-generic-function 'status_code-val :lambda-list '(m))
(cl:defmethod status_code-val ((m <bot_status_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:status_code-val is deprecated.  Use botcmd_msgs-srv:status_code instead.")
  (status_code m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <bot_status_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:error_code-val is deprecated.  Use botcmd_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <bot_status_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:data-val is deprecated.  Use botcmd_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_status_cmd-response>) ostream)
  "Serializes a message object of type '<bot_status_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'result_Command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_status_cmd-response>) istream)
  "Deserializes a message object of type '<bot_status_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_Command) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_status_cmd-response>)))
  "Returns string type for a service object of type '<bot_status_cmd-response>"
  "botcmd_msgs/bot_status_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_status_cmd-response)))
  "Returns string type for a service object of type 'bot_status_cmd-response"
  "botcmd_msgs/bot_status_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_status_cmd-response>)))
  "Returns md5sum for a message object of type '<bot_status_cmd-response>"
  "78fe28ceb8cdb5fbcfec0625a620666c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_status_cmd-response)))
  "Returns md5sum for a message object of type 'bot_status_cmd-response"
  "78fe28ceb8cdb5fbcfec0625a620666c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_status_cmd-response>)))
  "Returns full string definition for message of type '<bot_status_cmd-response>"
  (cl:format cl:nil "bool result~%time stamp~%int16 result_Command ~%int8 status_code~%int8 error_code~%string data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_status_cmd-response)))
  "Returns full string definition for message of type 'bot_status_cmd-response"
  (cl:format cl:nil "bool result~%time stamp~%int16 result_Command ~%int8 status_code~%int8 error_code~%string data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_status_cmd-response>))
  (cl:+ 0
     1
     8
     2
     1
     1
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_status_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_status_cmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':result_Command (result_Command msg))
    (cl:cons ':status_code (status_code msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bot_status_cmd)))
  'bot_status_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bot_status_cmd)))
  'bot_status_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_status_cmd)))
  "Returns string type for a service object of type '<bot_status_cmd>"
  "botcmd_msgs/bot_status_cmd")