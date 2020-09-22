; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude robot_run_stateGoal.msg.html

(cl:defclass <robot_run_stateGoal> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (set_status
    :reader set_status
    :initarg :set_status
    :type cl:fixnum
    :initform 0)
   (set_status_code
    :reader set_status_code
    :initarg :set_status_code
    :type cl:string
    :initform ""))
)

(cl:defclass robot_run_stateGoal (<robot_run_stateGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_run_stateGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_run_stateGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<robot_run_stateGoal> is deprecated: use robot_scheduling_msgs-msg:robot_run_stateGoal instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <robot_run_stateGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:command-val is deprecated.  Use robot_scheduling_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'set_status-val :lambda-list '(m))
(cl:defmethod set_status-val ((m <robot_run_stateGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:set_status-val is deprecated.  Use robot_scheduling_msgs-msg:set_status instead.")
  (set_status m))

(cl:ensure-generic-function 'set_status_code-val :lambda-list '(m))
(cl:defmethod set_status_code-val ((m <robot_run_stateGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:set_status_code-val is deprecated.  Use robot_scheduling_msgs-msg:set_status_code instead.")
  (set_status_code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<robot_run_stateGoal>)))
    "Constants for message type '<robot_run_stateGoal>"
  '((:GET . 1)
    (:SET . 2)
    (:GETALL . 3)
    (:PRE_GET . 4)
    (:PRE_SET . 5)
    (:PRE_GETALL . 6)
    (:MANU_GET . 7)
    (:MANU_SET . 8)
    (:MANU_GETALL . 9)
    (:MANU_STARTCHECK . 10)
    (:MANU_MODESET . 11)
    (:ALARM_RESETCHECK . 12)
    (:ALARM_RECOVERYCHECK . 13)
    (:ALARM_RECOVERY_GETALL . 14)
    (:SYS_RESTARTCHECK . 15)
    (:REMOTE_STARTCHECK . 16)
    (:REMOTE_GETALL . 17)
    (:REMOTE_MODESET . 18)
    (:PLANTOEXEC . 19))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'robot_run_stateGoal)))
    "Constants for message type 'robot_run_stateGoal"
  '((:GET . 1)
    (:SET . 2)
    (:GETALL . 3)
    (:PRE_GET . 4)
    (:PRE_SET . 5)
    (:PRE_GETALL . 6)
    (:MANU_GET . 7)
    (:MANU_SET . 8)
    (:MANU_GETALL . 9)
    (:MANU_STARTCHECK . 10)
    (:MANU_MODESET . 11)
    (:ALARM_RESETCHECK . 12)
    (:ALARM_RECOVERYCHECK . 13)
    (:ALARM_RECOVERY_GETALL . 14)
    (:SYS_RESTARTCHECK . 15)
    (:REMOTE_STARTCHECK . 16)
    (:REMOTE_GETALL . 17)
    (:REMOTE_MODESET . 18)
    (:PLANTOEXEC . 19))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_run_stateGoal>) ostream)
  "Serializes a message object of type '<robot_run_stateGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'set_status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'set_status_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'set_status_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_run_stateGoal>) istream)
  "Deserializes a message object of type '<robot_run_stateGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'set_status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set_status_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'set_status_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_run_stateGoal>)))
  "Returns string type for a message object of type '<robot_run_stateGoal>"
  "robot_scheduling_msgs/robot_run_stateGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_run_stateGoal)))
  "Returns string type for a message object of type 'robot_run_stateGoal"
  "robot_scheduling_msgs/robot_run_stateGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_run_stateGoal>)))
  "Returns md5sum for a message object of type '<robot_run_stateGoal>"
  "689dd4985997762e8811a55ee18bb5f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_run_stateGoal)))
  "Returns md5sum for a message object of type 'robot_run_stateGoal"
  "689dd4985997762e8811a55ee18bb5f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_run_stateGoal>)))
  "Returns full string definition for message of type '<robot_run_stateGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET=1~%uint8 SET=2~%uint8 GETALL=3~%uint8 PRE_GET=4~%uint8 PRE_SET=5~%uint8 PRE_GETALL=6~%uint8 MANU_GET=7~%uint8 MANU_SET=8~%uint8 MANU_GETALL=9~%uint8 MANU_STARTCHECK=10~%uint8 MANU_MODESET=11~%uint8 ALARM_RESETCHECK=12~%uint8 ALARM_RECOVERYCHECK=13~%uint8 ALARM_RECOVERY_GETALL=14~%uint8 SYS_RESTARTCHECK=15~%uint8 REMOTE_STARTCHECK=16~%uint8 REMOTE_GETALL=17~%uint8 REMOTE_MODESET=18~%uint8 PLANTOEXEC=19~%uint8 command~%uint8 set_status~%#uint8[] set_alarmcode~%string set_status_code	#for alarm code or other's application~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_run_stateGoal)))
  "Returns full string definition for message of type 'robot_run_stateGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET=1~%uint8 SET=2~%uint8 GETALL=3~%uint8 PRE_GET=4~%uint8 PRE_SET=5~%uint8 PRE_GETALL=6~%uint8 MANU_GET=7~%uint8 MANU_SET=8~%uint8 MANU_GETALL=9~%uint8 MANU_STARTCHECK=10~%uint8 MANU_MODESET=11~%uint8 ALARM_RESETCHECK=12~%uint8 ALARM_RECOVERYCHECK=13~%uint8 ALARM_RECOVERY_GETALL=14~%uint8 SYS_RESTARTCHECK=15~%uint8 REMOTE_STARTCHECK=16~%uint8 REMOTE_GETALL=17~%uint8 REMOTE_MODESET=18~%uint8 PLANTOEXEC=19~%uint8 command~%uint8 set_status~%#uint8[] set_alarmcode~%string set_status_code	#for alarm code or other's application~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_run_stateGoal>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'set_status_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_run_stateGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_run_stateGoal
    (cl:cons ':command (command msg))
    (cl:cons ':set_status (set_status msg))
    (cl:cons ':set_status_code (set_status_code msg))
))
