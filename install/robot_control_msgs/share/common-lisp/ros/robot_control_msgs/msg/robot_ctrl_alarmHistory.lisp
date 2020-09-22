; Auto-generated. Do not edit!


(cl:in-package robot_control_msgs-msg)


;//! \htmlinclude robot_ctrl_alarmHistory.msg.html

(cl:defclass <robot_ctrl_alarmHistory> (roslisp-msg-protocol:ros-message)
  ((system_id
    :reader system_id
    :initarg :system_id
    :type cl:string
    :initform "")
   (alarm_id
    :reader alarm_id
    :initarg :alarm_id
    :type cl:string
    :initform "")
   (alarm_code
    :reader alarm_code
    :initarg :alarm_code
    :type cl:string
    :initform "")
   (alarm_level
    :reader alarm_level
    :initarg :alarm_level
    :type cl:string
    :initform "")
   (alarm_occure_time
    :reader alarm_occure_time
    :initarg :alarm_occure_time
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass robot_ctrl_alarmHistory (<robot_ctrl_alarmHistory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_ctrl_alarmHistory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_ctrl_alarmHistory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control_msgs-msg:<robot_ctrl_alarmHistory> is deprecated: use robot_control_msgs-msg:robot_ctrl_alarmHistory instead.")))

(cl:ensure-generic-function 'system_id-val :lambda-list '(m))
(cl:defmethod system_id-val ((m <robot_ctrl_alarmHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:system_id-val is deprecated.  Use robot_control_msgs-msg:system_id instead.")
  (system_id m))

(cl:ensure-generic-function 'alarm_id-val :lambda-list '(m))
(cl:defmethod alarm_id-val ((m <robot_ctrl_alarmHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:alarm_id-val is deprecated.  Use robot_control_msgs-msg:alarm_id instead.")
  (alarm_id m))

(cl:ensure-generic-function 'alarm_code-val :lambda-list '(m))
(cl:defmethod alarm_code-val ((m <robot_ctrl_alarmHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:alarm_code-val is deprecated.  Use robot_control_msgs-msg:alarm_code instead.")
  (alarm_code m))

(cl:ensure-generic-function 'alarm_level-val :lambda-list '(m))
(cl:defmethod alarm_level-val ((m <robot_ctrl_alarmHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:alarm_level-val is deprecated.  Use robot_control_msgs-msg:alarm_level instead.")
  (alarm_level m))

(cl:ensure-generic-function 'alarm_occure_time-val :lambda-list '(m))
(cl:defmethod alarm_occure_time-val ((m <robot_ctrl_alarmHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:alarm_occure_time-val is deprecated.  Use robot_control_msgs-msg:alarm_occure_time instead.")
  (alarm_occure_time m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <robot_ctrl_alarmHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:update_time-val is deprecated.  Use robot_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_ctrl_alarmHistory>) ostream)
  "Serializes a message object of type '<robot_ctrl_alarmHistory>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'system_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'system_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_level))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_occure_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_occure_time))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_ctrl_alarmHistory>) istream)
  "Deserializes a message object of type '<robot_ctrl_alarmHistory>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'system_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_occure_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_occure_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'update_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'update_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_ctrl_alarmHistory>)))
  "Returns string type for a message object of type '<robot_ctrl_alarmHistory>"
  "robot_control_msgs/robot_ctrl_alarmHistory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_ctrl_alarmHistory)))
  "Returns string type for a message object of type 'robot_ctrl_alarmHistory"
  "robot_control_msgs/robot_ctrl_alarmHistory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_ctrl_alarmHistory>)))
  "Returns md5sum for a message object of type '<robot_ctrl_alarmHistory>"
  "9b1377e9612e5919160e7b5630dcb6dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_ctrl_alarmHistory)))
  "Returns md5sum for a message object of type 'robot_ctrl_alarmHistory"
  "9b1377e9612e5919160e7b5630dcb6dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_ctrl_alarmHistory>)))
  "Returns full string definition for message of type '<robot_ctrl_alarmHistory>"
  (cl:format cl:nil "string system_id ~%string alarm_id 			# module_no(3) + module alarm code(3)	~%string alarm_code 			# same as alarm_id,preper for special requirement~%string alarm_level 			# level of ararm: 1:alart 2:alarm	~%string alarm_occure_time 	# occure time of alarm~%string update_time ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_ctrl_alarmHistory)))
  "Returns full string definition for message of type 'robot_ctrl_alarmHistory"
  (cl:format cl:nil "string system_id ~%string alarm_id 			# module_no(3) + module alarm code(3)	~%string alarm_code 			# same as alarm_id,preper for special requirement~%string alarm_level 			# level of ararm: 1:alart 2:alarm	~%string alarm_occure_time 	# occure time of alarm~%string update_time ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_ctrl_alarmHistory>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'system_id))
     4 (cl:length (cl:slot-value msg 'alarm_id))
     4 (cl:length (cl:slot-value msg 'alarm_code))
     4 (cl:length (cl:slot-value msg 'alarm_level))
     4 (cl:length (cl:slot-value msg 'alarm_occure_time))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_ctrl_alarmHistory>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_ctrl_alarmHistory
    (cl:cons ':system_id (system_id msg))
    (cl:cons ':alarm_id (alarm_id msg))
    (cl:cons ':alarm_code (alarm_code msg))
    (cl:cons ':alarm_level (alarm_level msg))
    (cl:cons ':alarm_occure_time (alarm_occure_time msg))
    (cl:cons ':update_time (update_time msg))
))