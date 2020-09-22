; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude pose_move_to_recoveryGoal.msg.html

(cl:defclass <pose_move_to_recoveryGoal> (roslisp-msg-protocol:ros-message)
  ((rcvr_ac_name
    :reader rcvr_ac_name
    :initarg :rcvr_ac_name
    :type cl:string
    :initform "")
   (pose_id
    :reader pose_id
    :initarg :pose_id
    :type cl:string
    :initform ""))
)

(cl:defclass pose_move_to_recoveryGoal (<pose_move_to_recoveryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_move_to_recoveryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_move_to_recoveryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<pose_move_to_recoveryGoal> is deprecated: use robot_scheduling_msgs-msg:pose_move_to_recoveryGoal instead.")))

(cl:ensure-generic-function 'rcvr_ac_name-val :lambda-list '(m))
(cl:defmethod rcvr_ac_name-val ((m <pose_move_to_recoveryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:rcvr_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:rcvr_ac_name instead.")
  (rcvr_ac_name m))

(cl:ensure-generic-function 'pose_id-val :lambda-list '(m))
(cl:defmethod pose_id-val ((m <pose_move_to_recoveryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:pose_id-val is deprecated.  Use robot_scheduling_msgs-msg:pose_id instead.")
  (pose_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_move_to_recoveryGoal>) ostream)
  "Serializes a message object of type '<pose_move_to_recoveryGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rcvr_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rcvr_ac_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pose_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pose_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_move_to_recoveryGoal>) istream)
  "Deserializes a message object of type '<pose_move_to_recoveryGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcvr_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rcvr_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pose_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_move_to_recoveryGoal>)))
  "Returns string type for a message object of type '<pose_move_to_recoveryGoal>"
  "robot_scheduling_msgs/pose_move_to_recoveryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_move_to_recoveryGoal)))
  "Returns string type for a message object of type 'pose_move_to_recoveryGoal"
  "robot_scheduling_msgs/pose_move_to_recoveryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_move_to_recoveryGoal>)))
  "Returns md5sum for a message object of type '<pose_move_to_recoveryGoal>"
  "347ee43f2732c93a544ab894b2d65873")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_move_to_recoveryGoal)))
  "Returns md5sum for a message object of type 'pose_move_to_recoveryGoal"
  "347ee43f2732c93a544ab894b2d65873")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_move_to_recoveryGoal>)))
  "Returns full string definition for message of type '<pose_move_to_recoveryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string rcvr_ac_name~%string  pose_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_move_to_recoveryGoal)))
  "Returns full string definition for message of type 'pose_move_to_recoveryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string rcvr_ac_name~%string  pose_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_move_to_recoveryGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rcvr_ac_name))
     4 (cl:length (cl:slot-value msg 'pose_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_move_to_recoveryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_move_to_recoveryGoal
    (cl:cons ':rcvr_ac_name (rcvr_ac_name msg))
    (cl:cons ':pose_id (pose_id msg))
))
