; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude robot_topic_command.msg.html

(cl:defclass <robot_topic_command> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (cmd_data
    :reader cmd_data
    :initarg :cmd_data
    :type cl:string
    :initform ""))
)

(cl:defclass robot_topic_command (<robot_topic_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_topic_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_topic_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<robot_topic_command> is deprecated: use robot_scheduling_msgs-msg:robot_topic_command instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <robot_topic_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:robot_name-val is deprecated.  Use robot_scheduling_msgs-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <robot_topic_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_type-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <robot_topic_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_id-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'cmd_data-val :lambda-list '(m))
(cl:defmethod cmd_data-val ((m <robot_topic_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_data-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_data instead.")
  (cmd_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<robot_topic_command>)))
    "Constants for message type '<robot_topic_command>"
  '((:GET_STATUS . 1)
    (:SET_COMMAND . 2)
    (:STATUS . 1)
    (:MODE_STANDBY . 3)
    (:MODE_MANUAL . 4)
    (:MODE_REMOTE . 5)
    (:MODE_MANU_ACT . 40)
    (:MODE_MANU_SET . 41)
    (:MODE_MANU_NONE . 400)
    (:MODE_MANU_PLANTOEXEC . 410)
    (:MODE_MANU_PLANTOEXEC_RUN . 411)
    (:MODE_MANU_PLANTOEXEC_END . 412)
    (:MODE_MANU_MOVEINT . 420)
    (:MODE_MANU_MOVE . 430)
    (:MODE_MANU_TURN . 440)
    (:MODE_MANU_WORKSHEET . 450)
    (:MODE_MANU_SAVE . 460)
    (:MODE_REMOTE_ACT . 50)
    (:MODE_REMOTE_SET . 51)
    (:MODE_REMOTE_NONE . 500)
    (:MODE_REMOTEP_WORKSHEET . 510)
    (:MODE_REMOTEP_WORKSHEET_CONT_TEST . 520)
    (:ALARM_RESET . 60)
    (:ALARM_RECOVERY_ACT . 70)
    (:ALARM_RECOVERY_SET . 71)
    (:ALARM_RECOVERY_NONE . 700)
    (:ALARM_RECOVERY_PLANTOEXEC . 710)
    (:SYSTEM_RESTART . 80))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'robot_topic_command)))
    "Constants for message type 'robot_topic_command"
  '((:GET_STATUS . 1)
    (:SET_COMMAND . 2)
    (:STATUS . 1)
    (:MODE_STANDBY . 3)
    (:MODE_MANUAL . 4)
    (:MODE_REMOTE . 5)
    (:MODE_MANU_ACT . 40)
    (:MODE_MANU_SET . 41)
    (:MODE_MANU_NONE . 400)
    (:MODE_MANU_PLANTOEXEC . 410)
    (:MODE_MANU_PLANTOEXEC_RUN . 411)
    (:MODE_MANU_PLANTOEXEC_END . 412)
    (:MODE_MANU_MOVEINT . 420)
    (:MODE_MANU_MOVE . 430)
    (:MODE_MANU_TURN . 440)
    (:MODE_MANU_WORKSHEET . 450)
    (:MODE_MANU_SAVE . 460)
    (:MODE_REMOTE_ACT . 50)
    (:MODE_REMOTE_SET . 51)
    (:MODE_REMOTE_NONE . 500)
    (:MODE_REMOTEP_WORKSHEET . 510)
    (:MODE_REMOTEP_WORKSHEET_CONT_TEST . 520)
    (:ALARM_RESET . 60)
    (:ALARM_RECOVERY_ACT . 70)
    (:ALARM_RECOVERY_SET . 71)
    (:ALARM_RECOVERY_NONE . 700)
    (:ALARM_RECOVERY_PLANTOEXEC . 710)
    (:SYSTEM_RESTART . 80))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_topic_command>) ostream)
  "Serializes a message object of type '<robot_topic_command>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_topic_command>) istream)
  "Deserializes a message object of type '<robot_topic_command>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_topic_command>)))
  "Returns string type for a message object of type '<robot_topic_command>"
  "robot_scheduling_msgs/robot_topic_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_topic_command)))
  "Returns string type for a message object of type 'robot_topic_command"
  "robot_scheduling_msgs/robot_topic_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_topic_command>)))
  "Returns md5sum for a message object of type '<robot_topic_command>"
  "69f0d27f0773a518111335f643914c01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_topic_command)))
  "Returns md5sum for a message object of type 'robot_topic_command"
  "69f0d27f0773a518111335f643914c01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_topic_command>)))
  "Returns full string definition for message of type '<robot_topic_command>"
  (cl:format cl:nil "# set command type and its data ~%string robot_name                        # the name of the robot (used in preconditions and topics)~%#--------------------------~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type~%#--------------------------	~%uint16 STATUS=1	 ~%uint16 MODE_STANDBY=3	~%uint16 MODE_MANUAL=4	 ~%uint16 MODE_REMOTE=5~%uint16 MODE_MANU_ACT=40	~%uint16 MODE_MANU_SET=41~%uint16 MODE_MANU_NONE=400~%uint16 MODE_MANU_PLANTOEXEC=410	~%uint16 MODE_MANU_PLANTOEXEC_RUN=411~%uint16 MODE_MANU_PLANTOEXEC_END=412	~%uint16 MODE_MANU_MOVEINT=420	~%uint16 MODE_MANU_MOVE=430	~%uint16 MODE_MANU_TURN=440~%uint16 MODE_MANU_WORKSHEET=450	~%uint16 MODE_MANU_SAVE=460~%~%uint16 MODE_REMOTE_ACT=50	~%uint16 MODE_REMOTE_SET=51~%uint16 MODE_REMOTE_NONE=500~%uint16 MODE_REMOTEP_WORKSHEET=510~%uint16 MODE_REMOTEP_WORKSHEET_CONT_TEST=520~%~%#uint16 MODE_REMOTE_WORKSHEET_ACT=50~%#uint16 MODE_REMOTE_WORKSHEET_NO=51~%#uint16 ALARM_CONF=61	~%uint16 ALARM_RESET=60	~%uint16 ALARM_RECOVERY_ACT=70~%uint16 ALARM_RECOVERY_SET=71~%uint16 ALARM_RECOVERY_NONE=700~%uint16 ALARM_RECOVERY_PLANTOEXEC=710	~%uint16 SYSTEM_RESTART=80	~%uint16 cmd_id  	~%#--------------------------~%string cmd_data~%#--------------------------~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_topic_command)))
  "Returns full string definition for message of type 'robot_topic_command"
  (cl:format cl:nil "# set command type and its data ~%string robot_name                        # the name of the robot (used in preconditions and topics)~%#--------------------------~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type~%#--------------------------	~%uint16 STATUS=1	 ~%uint16 MODE_STANDBY=3	~%uint16 MODE_MANUAL=4	 ~%uint16 MODE_REMOTE=5~%uint16 MODE_MANU_ACT=40	~%uint16 MODE_MANU_SET=41~%uint16 MODE_MANU_NONE=400~%uint16 MODE_MANU_PLANTOEXEC=410	~%uint16 MODE_MANU_PLANTOEXEC_RUN=411~%uint16 MODE_MANU_PLANTOEXEC_END=412	~%uint16 MODE_MANU_MOVEINT=420	~%uint16 MODE_MANU_MOVE=430	~%uint16 MODE_MANU_TURN=440~%uint16 MODE_MANU_WORKSHEET=450	~%uint16 MODE_MANU_SAVE=460~%~%uint16 MODE_REMOTE_ACT=50	~%uint16 MODE_REMOTE_SET=51~%uint16 MODE_REMOTE_NONE=500~%uint16 MODE_REMOTEP_WORKSHEET=510~%uint16 MODE_REMOTEP_WORKSHEET_CONT_TEST=520~%~%#uint16 MODE_REMOTE_WORKSHEET_ACT=50~%#uint16 MODE_REMOTE_WORKSHEET_NO=51~%#uint16 ALARM_CONF=61	~%uint16 ALARM_RESET=60	~%uint16 ALARM_RECOVERY_ACT=70~%uint16 ALARM_RECOVERY_SET=71~%uint16 ALARM_RECOVERY_NONE=700~%uint16 ALARM_RECOVERY_PLANTOEXEC=710	~%uint16 SYSTEM_RESTART=80	~%uint16 cmd_id  	~%#--------------------------~%string cmd_data~%#--------------------------~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_topic_command>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     1
     2
     4 (cl:length (cl:slot-value msg 'cmd_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_topic_command>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_topic_command
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':cmd_data (cmd_data msg))
))
