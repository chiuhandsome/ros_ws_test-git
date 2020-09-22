; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude pose_move_toGoal.msg.html

(cl:defclass <pose_move_toGoal> (roslisp-msg-protocol:ros-message)
  ((pose_id
    :reader pose_id
    :initarg :pose_id
    :type cl:string
    :initform "")
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (move_ac_name
    :reader move_ac_name
    :initarg :move_ac_name
    :type cl:string
    :initform ""))
)

(cl:defclass pose_move_toGoal (<pose_move_toGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_move_toGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_move_toGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<pose_move_toGoal> is deprecated: use robot_scheduling_msgs-msg:pose_move_toGoal instead.")))

(cl:ensure-generic-function 'pose_id-val :lambda-list '(m))
(cl:defmethod pose_id-val ((m <pose_move_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:pose_id-val is deprecated.  Use robot_scheduling_msgs-msg:pose_id instead.")
  (pose_id m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <pose_move_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:frame_id-val is deprecated.  Use robot_scheduling_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <pose_move_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:command-val is deprecated.  Use robot_scheduling_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'move_ac_name-val :lambda-list '(m))
(cl:defmethod move_ac_name-val ((m <pose_move_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:move_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:move_ac_name instead.")
  (move_ac_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<pose_move_toGoal>)))
    "Constants for message type '<pose_move_toGoal>"
  '((:CMD_MOVE . 1)
    (:CMD_STOP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'pose_move_toGoal)))
    "Constants for message type 'pose_move_toGoal"
  '((:CMD_MOVE . 1)
    (:CMD_STOP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_move_toGoal>) ostream)
  "Serializes a message object of type '<pose_move_toGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pose_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pose_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'move_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'move_ac_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_move_toGoal>) istream)
  "Deserializes a message object of type '<pose_move_toGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pose_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'move_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_move_toGoal>)))
  "Returns string type for a message object of type '<pose_move_toGoal>"
  "robot_scheduling_msgs/pose_move_toGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_move_toGoal)))
  "Returns string type for a message object of type 'pose_move_toGoal"
  "robot_scheduling_msgs/pose_move_toGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_move_toGoal>)))
  "Returns md5sum for a message object of type '<pose_move_toGoal>"
  "9eac014566724125d63c274f8dce5ded")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_move_toGoal)))
  "Returns md5sum for a message object of type 'pose_move_toGoal"
  "9eac014566724125d63c274f8dce5ded")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_move_toGoal>)))
  "Returns full string definition for message of type '<pose_move_toGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string  pose_id~%string frame_id~%uint8 CMD_MOVE=1~%uint8 CMD_STOP=2~%#uint8 CMD_INTERRUPE=99~%uint8  command~%string move_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_move_toGoal)))
  "Returns full string definition for message of type 'pose_move_toGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string  pose_id~%string frame_id~%uint8 CMD_MOVE=1~%uint8 CMD_STOP=2~%#uint8 CMD_INTERRUPE=99~%uint8  command~%string move_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_move_toGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pose_id))
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
     4 (cl:length (cl:slot-value msg 'move_ac_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_move_toGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_move_toGoal
    (cl:cons ':pose_id (pose_id msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':command (command msg))
    (cl:cons ':move_ac_name (move_ac_name msg))
))
