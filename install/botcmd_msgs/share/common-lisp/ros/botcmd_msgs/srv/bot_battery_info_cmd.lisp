; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-srv)


;//! \htmlinclude bot_battery_info_cmd-request.msg.html

(cl:defclass <bot_battery_info_cmd-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass bot_battery_info_cmd-request (<bot_battery_info_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_battery_info_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_battery_info_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_battery_info_cmd-request> is deprecated: use botcmd_msgs-srv:bot_battery_info_cmd-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <bot_battery_info_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:command-val is deprecated.  Use botcmd_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_battery_info_cmd-request>) ostream)
  "Serializes a message object of type '<bot_battery_info_cmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_battery_info_cmd-request>) istream)
  "Deserializes a message object of type '<bot_battery_info_cmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_battery_info_cmd-request>)))
  "Returns string type for a service object of type '<bot_battery_info_cmd-request>"
  "botcmd_msgs/bot_battery_info_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_battery_info_cmd-request)))
  "Returns string type for a service object of type 'bot_battery_info_cmd-request"
  "botcmd_msgs/bot_battery_info_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_battery_info_cmd-request>)))
  "Returns md5sum for a message object of type '<bot_battery_info_cmd-request>"
  "37f5b24189cc92ce3ca44682c06b0a43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_battery_info_cmd-request)))
  "Returns md5sum for a message object of type 'bot_battery_info_cmd-request"
  "37f5b24189cc92ce3ca44682c06b0a43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_battery_info_cmd-request>)))
  "Returns full string definition for message of type '<bot_battery_info_cmd-request>"
  (cl:format cl:nil "int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_battery_info_cmd-request)))
  "Returns full string definition for message of type 'bot_battery_info_cmd-request"
  (cl:format cl:nil "int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_battery_info_cmd-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_battery_info_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_battery_info_cmd-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude bot_battery_info_cmd-response.msg.html

(cl:defclass <bot_battery_info_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (Command_Params
    :reader Command_Params
    :initarg :Command_Params
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (alarmcode
    :reader alarmcode
    :initarg :alarmcode
    :type cl:fixnum
    :initform 0)
   (chargstate
    :reader chargstate
    :initarg :chargstate
    :type cl:fixnum
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:fixnum
    :initform 0)
   (full_capacity
    :reader full_capacity
    :initarg :full_capacity
    :type cl:fixnum
    :initform 0)
   (percentage
    :reader percentage
    :initarg :percentage
    :type cl:fixnum
    :initform 0))
)

(cl:defclass bot_battery_info_cmd-response (<bot_battery_info_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_battery_info_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_battery_info_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_battery_info_cmd-response> is deprecated: use botcmd_msgs-srv:bot_battery_info_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:result-val is deprecated.  Use botcmd_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'Command_Params-val :lambda-list '(m))
(cl:defmethod Command_Params-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:Command_Params-val is deprecated.  Use botcmd_msgs-srv:Command_Params instead.")
  (Command_Params m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:stamp-val is deprecated.  Use botcmd_msgs-srv:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'alarmcode-val :lambda-list '(m))
(cl:defmethod alarmcode-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:alarmcode-val is deprecated.  Use botcmd_msgs-srv:alarmcode instead.")
  (alarmcode m))

(cl:ensure-generic-function 'chargstate-val :lambda-list '(m))
(cl:defmethod chargstate-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:chargstate-val is deprecated.  Use botcmd_msgs-srv:chargstate instead.")
  (chargstate m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:voltage-val is deprecated.  Use botcmd_msgs-srv:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:current-val is deprecated.  Use botcmd_msgs-srv:current instead.")
  (current m))

(cl:ensure-generic-function 'full_capacity-val :lambda-list '(m))
(cl:defmethod full_capacity-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:full_capacity-val is deprecated.  Use botcmd_msgs-srv:full_capacity instead.")
  (full_capacity m))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <bot_battery_info_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:percentage-val is deprecated.  Use botcmd_msgs-srv:percentage instead.")
  (percentage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_battery_info_cmd-response>) ostream)
  "Serializes a message object of type '<bot_battery_info_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Command_Params)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
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
  (cl:let* ((signed (cl:slot-value msg 'alarmcode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'chargstate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'voltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'full_capacity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_battery_info_cmd-response>) istream)
  "Deserializes a message object of type '<bot_battery_info_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Command_Params) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
      (cl:setf (cl:slot-value msg 'alarmcode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chargstate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'voltage) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'full_capacity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'percentage) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_battery_info_cmd-response>)))
  "Returns string type for a service object of type '<bot_battery_info_cmd-response>"
  "botcmd_msgs/bot_battery_info_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_battery_info_cmd-response)))
  "Returns string type for a service object of type 'bot_battery_info_cmd-response"
  "botcmd_msgs/bot_battery_info_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_battery_info_cmd-response>)))
  "Returns md5sum for a message object of type '<bot_battery_info_cmd-response>"
  "37f5b24189cc92ce3ca44682c06b0a43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_battery_info_cmd-response)))
  "Returns md5sum for a message object of type 'bot_battery_info_cmd-response"
  "37f5b24189cc92ce3ca44682c06b0a43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_battery_info_cmd-response>)))
  "Returns full string definition for message of type '<bot_battery_info_cmd-response>"
  (cl:format cl:nil "bool  result~%int8 Command_Params~%time stamp~%int16 alarmcode	~%int16 chargstate	 ~%int16 voltage	~%int16 current	~%int16 full_capacity~%int16 percentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_battery_info_cmd-response)))
  "Returns full string definition for message of type 'bot_battery_info_cmd-response"
  (cl:format cl:nil "bool  result~%int8 Command_Params~%time stamp~%int16 alarmcode	~%int16 chargstate	 ~%int16 voltage	~%int16 current	~%int16 full_capacity~%int16 percentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_battery_info_cmd-response>))
  (cl:+ 0
     1
     1
     8
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_battery_info_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_battery_info_cmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':Command_Params (Command_Params msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':alarmcode (alarmcode msg))
    (cl:cons ':chargstate (chargstate msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':full_capacity (full_capacity msg))
    (cl:cons ':percentage (percentage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bot_battery_info_cmd)))
  'bot_battery_info_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bot_battery_info_cmd)))
  'bot_battery_info_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_battery_info_cmd)))
  "Returns string type for a service object of type '<bot_battery_info_cmd>"
  "botcmd_msgs/bot_battery_info_cmd")