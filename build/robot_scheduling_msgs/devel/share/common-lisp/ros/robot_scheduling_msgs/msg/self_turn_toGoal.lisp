; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude self_turn_toGoal.msg.html

(cl:defclass <self_turn_toGoal> (roslisp-msg-protocol:ros-message)
  ((command_type
    :reader command_type
    :initarg :command_type
    :type cl:string
    :initform "")
   (command_id
    :reader command_id
    :initarg :command_id
    :type cl:fixnum
    :initform 0)
   (turn_id
    :reader turn_id
    :initarg :turn_id
    :type cl:string
    :initform "")
   (pid_id
    :reader pid_id
    :initarg :pid_id
    :type cl:string
    :initform "")
   (target_angle
    :reader target_angle
    :initarg :target_angle
    :type cl:float
    :initform 0.0)
   (time_out
    :reader time_out
    :initarg :time_out
    :type cl:float
    :initform 0.0)
   (turn_ac_name
    :reader turn_ac_name
    :initarg :turn_ac_name
    :type cl:string
    :initform ""))
)

(cl:defclass self_turn_toGoal (<self_turn_toGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <self_turn_toGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'self_turn_toGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<self_turn_toGoal> is deprecated: use robot_scheduling_msgs-msg:self_turn_toGoal instead.")))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <self_turn_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:command_type-val is deprecated.  Use robot_scheduling_msgs-msg:command_type instead.")
  (command_type m))

(cl:ensure-generic-function 'command_id-val :lambda-list '(m))
(cl:defmethod command_id-val ((m <self_turn_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:command_id-val is deprecated.  Use robot_scheduling_msgs-msg:command_id instead.")
  (command_id m))

(cl:ensure-generic-function 'turn_id-val :lambda-list '(m))
(cl:defmethod turn_id-val ((m <self_turn_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:turn_id-val is deprecated.  Use robot_scheduling_msgs-msg:turn_id instead.")
  (turn_id m))

(cl:ensure-generic-function 'pid_id-val :lambda-list '(m))
(cl:defmethod pid_id-val ((m <self_turn_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:pid_id-val is deprecated.  Use robot_scheduling_msgs-msg:pid_id instead.")
  (pid_id m))

(cl:ensure-generic-function 'target_angle-val :lambda-list '(m))
(cl:defmethod target_angle-val ((m <self_turn_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:target_angle-val is deprecated.  Use robot_scheduling_msgs-msg:target_angle instead.")
  (target_angle m))

(cl:ensure-generic-function 'time_out-val :lambda-list '(m))
(cl:defmethod time_out-val ((m <self_turn_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:time_out-val is deprecated.  Use robot_scheduling_msgs-msg:time_out instead.")
  (time_out m))

(cl:ensure-generic-function 'turn_ac_name-val :lambda-list '(m))
(cl:defmethod turn_ac_name-val ((m <self_turn_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:turn_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:turn_ac_name instead.")
  (turn_ac_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<self_turn_toGoal>)))
    "Constants for message type '<self_turn_toGoal>"
  '((:TURN_ABS . 1)
    (:TURN_REL . 2)
    (:TURN_INTERRUPE . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'self_turn_toGoal)))
    "Constants for message type 'self_turn_toGoal"
  '((:TURN_ABS . 1)
    (:TURN_REL . 2)
    (:TURN_INTERRUPE . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <self_turn_toGoal>) ostream)
  "Serializes a message object of type '<self_turn_toGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turn_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turn_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pid_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pid_id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turn_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turn_ac_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <self_turn_toGoal>) istream)
  "Deserializes a message object of type '<self_turn_toGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turn_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pid_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_out) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turn_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<self_turn_toGoal>)))
  "Returns string type for a message object of type '<self_turn_toGoal>"
  "robot_scheduling_msgs/self_turn_toGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'self_turn_toGoal)))
  "Returns string type for a message object of type 'self_turn_toGoal"
  "robot_scheduling_msgs/self_turn_toGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<self_turn_toGoal>)))
  "Returns md5sum for a message object of type '<self_turn_toGoal>"
  "ee4eb3479d122eb64fe4a90b44c760ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'self_turn_toGoal)))
  "Returns md5sum for a message object of type 'self_turn_toGoal"
  "ee4eb3479d122eb64fe4a90b44c760ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<self_turn_toGoal>)))
  "Returns full string definition for message of type '<self_turn_toGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string command_type~%uint8 TURN_ABS=1~%uint8 TURN_REL=2~%uint8 TURN_INTERRUPE=99~%uint8 command_id~%string turn_id~%string pid_id~%float64 target_angle~%float32 time_out~%string turn_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'self_turn_toGoal)))
  "Returns full string definition for message of type 'self_turn_toGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string command_type~%uint8 TURN_ABS=1~%uint8 TURN_REL=2~%uint8 TURN_INTERRUPE=99~%uint8 command_id~%string turn_id~%string pid_id~%float64 target_angle~%float32 time_out~%string turn_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <self_turn_toGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command_type))
     1
     4 (cl:length (cl:slot-value msg 'turn_id))
     4 (cl:length (cl:slot-value msg 'pid_id))
     8
     4
     4 (cl:length (cl:slot-value msg 'turn_ac_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <self_turn_toGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'self_turn_toGoal
    (cl:cons ':command_type (command_type msg))
    (cl:cons ':command_id (command_id msg))
    (cl:cons ':turn_id (turn_id msg))
    (cl:cons ':pid_id (pid_id msg))
    (cl:cons ':target_angle (target_angle msg))
    (cl:cons ':time_out (time_out msg))
    (cl:cons ':turn_ac_name (turn_ac_name msg))
))
