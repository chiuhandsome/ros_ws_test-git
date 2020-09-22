; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude db_processGoal.msg.html

(cl:defclass <db_processGoal> (roslisp-msg-protocol:ros-message)
  ((cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (cmd_data
    :reader cmd_data
    :initarg :cmd_data
    :type cl:string
    :initform "")
   (db_process_ac_name
    :reader db_process_ac_name
    :initarg :db_process_ac_name
    :type cl:string
    :initform ""))
)

(cl:defclass db_processGoal (<db_processGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <db_processGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'db_processGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<db_processGoal> is deprecated: use robot_scheduling_msgs-msg:db_processGoal instead.")))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_id-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'cmd_data-val :lambda-list '(m))
(cl:defmethod cmd_data-val ((m <db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_data-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_data instead.")
  (cmd_data m))

(cl:ensure-generic-function 'db_process_ac_name-val :lambda-list '(m))
(cl:defmethod db_process_ac_name-val ((m <db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:db_process_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:db_process_ac_name instead.")
  (db_process_ac_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<db_processGoal>)))
    "Constants for message type '<db_processGoal>"
  '((:DBCMD_GET_CHKPARAMS . 1)
    (:DBCMD_GET_POSE_ID . 2)
    (:DBCMD_GET_FUNC_ID . 3)
    (:DBCMD_GET_WKSHEET . 4)
    (:DBCMD_GET_ALMCODE . 5)
    (:DBCMD_GET_OPCODE . 6)
    (:DBCMD_GET_PIDPARAMS . 7)
    (:DBCMD_SET_ALMHIST . 11)
    (:DBCMD_SET_OPHIST . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'db_processGoal)))
    "Constants for message type 'db_processGoal"
  '((:DBCMD_GET_CHKPARAMS . 1)
    (:DBCMD_GET_POSE_ID . 2)
    (:DBCMD_GET_FUNC_ID . 3)
    (:DBCMD_GET_WKSHEET . 4)
    (:DBCMD_GET_ALMCODE . 5)
    (:DBCMD_GET_OPCODE . 6)
    (:DBCMD_GET_PIDPARAMS . 7)
    (:DBCMD_SET_ALMHIST . 11)
    (:DBCMD_SET_OPHIST . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <db_processGoal>) ostream)
  "Serializes a message object of type '<db_processGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'db_process_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'db_process_ac_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <db_processGoal>) istream)
  "Deserializes a message object of type '<db_processGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'db_process_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'db_process_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<db_processGoal>)))
  "Returns string type for a message object of type '<db_processGoal>"
  "robot_scheduling_msgs/db_processGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'db_processGoal)))
  "Returns string type for a message object of type 'db_processGoal"
  "robot_scheduling_msgs/db_processGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<db_processGoal>)))
  "Returns md5sum for a message object of type '<db_processGoal>"
  "6d7cf9300754e278f65edfc9d4a39c3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'db_processGoal)))
  "Returns md5sum for a message object of type 'db_processGoal"
  "6d7cf9300754e278f65edfc9d4a39c3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<db_processGoal>)))
  "Returns full string definition for message of type '<db_processGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 DBCMD_GET_CHKPARAMS=1~%uint8 DBCMD_GET_POSE_ID=2~%uint8 DBCMD_GET_FUNC_ID=3~%uint8 DBCMD_GET_WKSHEET=4~%uint8 DBCMD_GET_ALMCODE=5~%uint8 DBCMD_GET_OPCODE=6~%uint8 DBCMD_GET_PIDPARAMS=7~%uint8 DBCMD_SET_ALMHIST=11~%uint8 DBCMD_SET_OPHIST=12~%uint8 cmd_id~%string cmd_data~%string db_process_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'db_processGoal)))
  "Returns full string definition for message of type 'db_processGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 DBCMD_GET_CHKPARAMS=1~%uint8 DBCMD_GET_POSE_ID=2~%uint8 DBCMD_GET_FUNC_ID=3~%uint8 DBCMD_GET_WKSHEET=4~%uint8 DBCMD_GET_ALMCODE=5~%uint8 DBCMD_GET_OPCODE=6~%uint8 DBCMD_GET_PIDPARAMS=7~%uint8 DBCMD_SET_ALMHIST=11~%uint8 DBCMD_SET_OPHIST=12~%uint8 cmd_id~%string cmd_data~%string db_process_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <db_processGoal>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'cmd_data))
     4 (cl:length (cl:slot-value msg 'db_process_ac_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <db_processGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'db_processGoal
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':cmd_data (cmd_data msg))
    (cl:cons ':db_process_ac_name (db_process_ac_name msg))
))
