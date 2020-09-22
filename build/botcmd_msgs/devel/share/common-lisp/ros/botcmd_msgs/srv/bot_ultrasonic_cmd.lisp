; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-srv)


;//! \htmlinclude bot_ultrasonic_cmd-request.msg.html

(cl:defclass <bot_ultrasonic_cmd-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass bot_ultrasonic_cmd-request (<bot_ultrasonic_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_ultrasonic_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_ultrasonic_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_ultrasonic_cmd-request> is deprecated: use botcmd_msgs-srv:bot_ultrasonic_cmd-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <bot_ultrasonic_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:command-val is deprecated.  Use botcmd_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_ultrasonic_cmd-request>) ostream)
  "Serializes a message object of type '<bot_ultrasonic_cmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_ultrasonic_cmd-request>) istream)
  "Deserializes a message object of type '<bot_ultrasonic_cmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_ultrasonic_cmd-request>)))
  "Returns string type for a service object of type '<bot_ultrasonic_cmd-request>"
  "botcmd_msgs/bot_ultrasonic_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_ultrasonic_cmd-request)))
  "Returns string type for a service object of type 'bot_ultrasonic_cmd-request"
  "botcmd_msgs/bot_ultrasonic_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_ultrasonic_cmd-request>)))
  "Returns md5sum for a message object of type '<bot_ultrasonic_cmd-request>"
  "eb2706d46118bd280836f581d94cbcfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_ultrasonic_cmd-request)))
  "Returns md5sum for a message object of type 'bot_ultrasonic_cmd-request"
  "eb2706d46118bd280836f581d94cbcfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_ultrasonic_cmd-request>)))
  "Returns full string definition for message of type '<bot_ultrasonic_cmd-request>"
  (cl:format cl:nil "int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_ultrasonic_cmd-request)))
  "Returns full string definition for message of type 'bot_ultrasonic_cmd-request"
  (cl:format cl:nil "int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_ultrasonic_cmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_ultrasonic_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_ultrasonic_cmd-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude bot_ultrasonic_cmd-response.msg.html

(cl:defclass <bot_ultrasonic_cmd-response> (roslisp-msg-protocol:ros-message)
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
   (Command_Params
    :reader Command_Params
    :initarg :Command_Params
    :type cl:fixnum
    :initform 0)
   (quantity
    :reader quantity
    :initarg :quantity
    :type cl:fixnum
    :initform 0)
   (ranges
    :reader ranges
    :initarg :ranges
    :type cl:string
    :initform ""))
)

(cl:defclass bot_ultrasonic_cmd-response (<bot_ultrasonic_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_ultrasonic_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_ultrasonic_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_ultrasonic_cmd-response> is deprecated: use botcmd_msgs-srv:bot_ultrasonic_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_ultrasonic_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:result-val is deprecated.  Use botcmd_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <bot_ultrasonic_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:stamp-val is deprecated.  Use botcmd_msgs-srv:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'Command_Params-val :lambda-list '(m))
(cl:defmethod Command_Params-val ((m <bot_ultrasonic_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:Command_Params-val is deprecated.  Use botcmd_msgs-srv:Command_Params instead.")
  (Command_Params m))

(cl:ensure-generic-function 'quantity-val :lambda-list '(m))
(cl:defmethod quantity-val ((m <bot_ultrasonic_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:quantity-val is deprecated.  Use botcmd_msgs-srv:quantity instead.")
  (quantity m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <bot_ultrasonic_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:ranges-val is deprecated.  Use botcmd_msgs-srv:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_ultrasonic_cmd-response>) ostream)
  "Serializes a message object of type '<bot_ultrasonic_cmd-response>"
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
  (cl:let* ((signed (cl:slot-value msg 'Command_Params)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'quantity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_ultrasonic_cmd-response>) istream)
  "Deserializes a message object of type '<bot_ultrasonic_cmd-response>"
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
      (cl:setf (cl:slot-value msg 'Command_Params) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quantity) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ranges) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ranges) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_ultrasonic_cmd-response>)))
  "Returns string type for a service object of type '<bot_ultrasonic_cmd-response>"
  "botcmd_msgs/bot_ultrasonic_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_ultrasonic_cmd-response)))
  "Returns string type for a service object of type 'bot_ultrasonic_cmd-response"
  "botcmd_msgs/bot_ultrasonic_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_ultrasonic_cmd-response>)))
  "Returns md5sum for a message object of type '<bot_ultrasonic_cmd-response>"
  "eb2706d46118bd280836f581d94cbcfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_ultrasonic_cmd-response)))
  "Returns md5sum for a message object of type 'bot_ultrasonic_cmd-response"
  "eb2706d46118bd280836f581d94cbcfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_ultrasonic_cmd-response>)))
  "Returns full string definition for message of type '<bot_ultrasonic_cmd-response>"
  (cl:format cl:nil "bool  result~%time stamp~%int8 Command_Params~%int8 quantity~%string ranges           #float32[] ranges~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_ultrasonic_cmd-response)))
  "Returns full string definition for message of type 'bot_ultrasonic_cmd-response"
  (cl:format cl:nil "bool  result~%time stamp~%int8 Command_Params~%int8 quantity~%string ranges           #float32[] ranges~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_ultrasonic_cmd-response>))
  (cl:+ 0
     1
     8
     1
     1
     4 (cl:length (cl:slot-value msg 'ranges))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_ultrasonic_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_ultrasonic_cmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':Command_Params (Command_Params msg))
    (cl:cons ':quantity (quantity msg))
    (cl:cons ':ranges (ranges msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bot_ultrasonic_cmd)))
  'bot_ultrasonic_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bot_ultrasonic_cmd)))
  'bot_ultrasonic_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_ultrasonic_cmd)))
  "Returns string type for a service object of type '<bot_ultrasonic_cmd>"
  "botcmd_msgs/bot_ultrasonic_cmd")