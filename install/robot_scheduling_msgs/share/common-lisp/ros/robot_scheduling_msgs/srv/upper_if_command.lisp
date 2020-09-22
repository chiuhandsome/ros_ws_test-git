; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-srv)


;//! \htmlinclude upper_if_command-request.msg.html

(cl:defclass <upper_if_command-request> (roslisp-msg-protocol:ros-message)
  ((upper_cmd
    :reader upper_cmd
    :initarg :upper_cmd
    :type robot_scheduling_msgs-msg:robot_topic_command
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:robot_topic_command)))
)

(cl:defclass upper_if_command-request (<upper_if_command-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <upper_if_command-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'upper_if_command-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-srv:<upper_if_command-request> is deprecated: use robot_scheduling_msgs-srv:upper_if_command-request instead.")))

(cl:ensure-generic-function 'upper_cmd-val :lambda-list '(m))
(cl:defmethod upper_cmd-val ((m <upper_if_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:upper_cmd-val is deprecated.  Use robot_scheduling_msgs-srv:upper_cmd instead.")
  (upper_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <upper_if_command-request>) ostream)
  "Serializes a message object of type '<upper_if_command-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'upper_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <upper_if_command-request>) istream)
  "Deserializes a message object of type '<upper_if_command-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'upper_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<upper_if_command-request>)))
  "Returns string type for a service object of type '<upper_if_command-request>"
  "robot_scheduling_msgs/upper_if_commandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'upper_if_command-request)))
  "Returns string type for a service object of type 'upper_if_command-request"
  "robot_scheduling_msgs/upper_if_commandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<upper_if_command-request>)))
  "Returns md5sum for a message object of type '<upper_if_command-request>"
  "3942b0151ceecef1e10d75812804f3d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'upper_if_command-request)))
  "Returns md5sum for a message object of type 'upper_if_command-request"
  "3942b0151ceecef1e10d75812804f3d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<upper_if_command-request>)))
  "Returns full string definition for message of type '<upper_if_command-request>"
  (cl:format cl:nil "# set command type and its data ~%~%robot_topic_command upper_cmd~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_topic_command~%# set command type and its data ~%string robot_name                        # the name of the robot (used in preconditions and topics)~%#--------------------------~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type~%#--------------------------	~%uint16 STATUS=1	 ~%uint16 MODE_STANDBY=3	~%uint16 MODE_MANUAL=4	 ~%uint16 MODE_REMOTE=5~%uint16 MODE_MANU_ACT=40	~%uint16 MODE_MANU_SET=41~%uint16 MODE_MANU_NONE=400~%uint16 MODE_MANU_PLANTOEXEC=410	~%uint16 MODE_MANU_PLANTOEXEC_RUN=411~%uint16 MODE_MANU_PLANTOEXEC_END=412	~%uint16 MODE_MANU_MOVEINT=420	~%uint16 MODE_MANU_MOVE=430	~%uint16 MODE_MANU_TURN=440~%uint16 MODE_MANU_WORKSHEET=450	~%uint16 MODE_MANU_SAVE=460~%~%uint16 MODE_REMOTE_ACT=50	~%uint16 MODE_REMOTE_SET=51~%uint16 MODE_REMOTE_NONE=500~%uint16 MODE_REMOTEP_WORKSHEET=510~%uint16 MODE_REMOTEP_WORKSHEET_CONT_TEST=520~%~%#uint16 MODE_REMOTE_WORKSHEET_ACT=50~%#uint16 MODE_REMOTE_WORKSHEET_NO=51~%#uint16 ALARM_CONF=61	~%uint16 ALARM_RESET=60	~%uint16 ALARM_RECOVERY_ACT=70~%uint16 ALARM_RECOVERY_SET=71~%uint16 ALARM_RECOVERY_NONE=700~%uint16 ALARM_RECOVERY_PLANTOEXEC=710	~%uint16 SYSTEM_RESTART=80	~%uint16 cmd_id  	~%#--------------------------~%string cmd_data~%#--------------------------~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'upper_if_command-request)))
  "Returns full string definition for message of type 'upper_if_command-request"
  (cl:format cl:nil "# set command type and its data ~%~%robot_topic_command upper_cmd~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_topic_command~%# set command type and its data ~%string robot_name                        # the name of the robot (used in preconditions and topics)~%#--------------------------~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type~%#--------------------------	~%uint16 STATUS=1	 ~%uint16 MODE_STANDBY=3	~%uint16 MODE_MANUAL=4	 ~%uint16 MODE_REMOTE=5~%uint16 MODE_MANU_ACT=40	~%uint16 MODE_MANU_SET=41~%uint16 MODE_MANU_NONE=400~%uint16 MODE_MANU_PLANTOEXEC=410	~%uint16 MODE_MANU_PLANTOEXEC_RUN=411~%uint16 MODE_MANU_PLANTOEXEC_END=412	~%uint16 MODE_MANU_MOVEINT=420	~%uint16 MODE_MANU_MOVE=430	~%uint16 MODE_MANU_TURN=440~%uint16 MODE_MANU_WORKSHEET=450	~%uint16 MODE_MANU_SAVE=460~%~%uint16 MODE_REMOTE_ACT=50	~%uint16 MODE_REMOTE_SET=51~%uint16 MODE_REMOTE_NONE=500~%uint16 MODE_REMOTEP_WORKSHEET=510~%uint16 MODE_REMOTEP_WORKSHEET_CONT_TEST=520~%~%#uint16 MODE_REMOTE_WORKSHEET_ACT=50~%#uint16 MODE_REMOTE_WORKSHEET_NO=51~%#uint16 ALARM_CONF=61	~%uint16 ALARM_RESET=60	~%uint16 ALARM_RECOVERY_ACT=70~%uint16 ALARM_RECOVERY_SET=71~%uint16 ALARM_RECOVERY_NONE=700~%uint16 ALARM_RECOVERY_PLANTOEXEC=710	~%uint16 SYSTEM_RESTART=80	~%uint16 cmd_id  	~%#--------------------------~%string cmd_data~%#--------------------------~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <upper_if_command-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'upper_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <upper_if_command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'upper_if_command-request
    (cl:cons ':upper_cmd (upper_cmd msg))
))
;//! \htmlinclude upper_if_command-response.msg.html

(cl:defclass <upper_if_command-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (result_state
    :reader result_state
    :initarg :result_state
    :type cl:fixnum
    :initform 0)
   (result_data
    :reader result_data
    :initarg :result_data
    :type cl:string
    :initform ""))
)

(cl:defclass upper_if_command-response (<upper_if_command-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <upper_if_command-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'upper_if_command-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-srv:<upper_if_command-response> is deprecated: use robot_scheduling_msgs-srv:upper_if_command-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <upper_if_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result-val is deprecated.  Use robot_scheduling_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'result_state-val :lambda-list '(m))
(cl:defmethod result_state-val ((m <upper_if_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result_state-val is deprecated.  Use robot_scheduling_msgs-srv:result_state instead.")
  (result_state m))

(cl:ensure-generic-function 'result_data-val :lambda-list '(m))
(cl:defmethod result_data-val ((m <upper_if_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result_data-val is deprecated.  Use robot_scheduling_msgs-srv:result_data instead.")
  (result_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<upper_if_command-response>)))
    "Constants for message type '<upper_if_command-response>"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'upper_if_command-response)))
    "Constants for message type 'upper_if_command-response"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <upper_if_command-response>) ostream)
  "Serializes a message object of type '<upper_if_command-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result_state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <upper_if_command-response>) istream)
  "Deserializes a message object of type '<upper_if_command-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result_state)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<upper_if_command-response>)))
  "Returns string type for a service object of type '<upper_if_command-response>"
  "robot_scheduling_msgs/upper_if_commandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'upper_if_command-response)))
  "Returns string type for a service object of type 'upper_if_command-response"
  "robot_scheduling_msgs/upper_if_commandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<upper_if_command-response>)))
  "Returns md5sum for a message object of type '<upper_if_command-response>"
  "3942b0151ceecef1e10d75812804f3d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'upper_if_command-response)))
  "Returns md5sum for a message object of type 'upper_if_command-response"
  "3942b0151ceecef1e10d75812804f3d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<upper_if_command-response>)))
  "Returns full string definition for message of type '<upper_if_command-response>"
  (cl:format cl:nil "bool result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 result_state~%string result_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'upper_if_command-response)))
  "Returns full string definition for message of type 'upper_if_command-response"
  (cl:format cl:nil "bool result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 result_state~%string result_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <upper_if_command-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'result_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <upper_if_command-response>))
  "Converts a ROS message object to a list"
  (cl:list 'upper_if_command-response
    (cl:cons ':result (result msg))
    (cl:cons ':result_state (result_state msg))
    (cl:cons ':result_data (result_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'upper_if_command)))
  'upper_if_command-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'upper_if_command)))
  'upper_if_command-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'upper_if_command)))
  "Returns string type for a service object of type '<upper_if_command>"
  "robot_scheduling_msgs/upper_if_command")