; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude function_run_recoveryGoal.msg.html

(cl:defclass <function_run_recoveryGoal> (roslisp-msg-protocol:ros-message)
  ((rcvr_ac_name
    :reader rcvr_ac_name
    :initarg :rcvr_ac_name
    :type cl:string
    :initform "")
   (function_id
    :reader function_id
    :initarg :function_id
    :type cl:string
    :initform ""))
)

(cl:defclass function_run_recoveryGoal (<function_run_recoveryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <function_run_recoveryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'function_run_recoveryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<function_run_recoveryGoal> is deprecated: use robot_scheduling_msgs-msg:function_run_recoveryGoal instead.")))

(cl:ensure-generic-function 'rcvr_ac_name-val :lambda-list '(m))
(cl:defmethod rcvr_ac_name-val ((m <function_run_recoveryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:rcvr_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:rcvr_ac_name instead.")
  (rcvr_ac_name m))

(cl:ensure-generic-function 'function_id-val :lambda-list '(m))
(cl:defmethod function_id-val ((m <function_run_recoveryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:function_id-val is deprecated.  Use robot_scheduling_msgs-msg:function_id instead.")
  (function_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <function_run_recoveryGoal>) ostream)
  "Serializes a message object of type '<function_run_recoveryGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rcvr_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rcvr_ac_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'function_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'function_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <function_run_recoveryGoal>) istream)
  "Deserializes a message object of type '<function_run_recoveryGoal>"
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
      (cl:setf (cl:slot-value msg 'function_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'function_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<function_run_recoveryGoal>)))
  "Returns string type for a message object of type '<function_run_recoveryGoal>"
  "robot_scheduling_msgs/function_run_recoveryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'function_run_recoveryGoal)))
  "Returns string type for a message object of type 'function_run_recoveryGoal"
  "robot_scheduling_msgs/function_run_recoveryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<function_run_recoveryGoal>)))
  "Returns md5sum for a message object of type '<function_run_recoveryGoal>"
  "6118c2ef42432f8efef999d7e9b56616")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'function_run_recoveryGoal)))
  "Returns md5sum for a message object of type 'function_run_recoveryGoal"
  "6118c2ef42432f8efef999d7e9b56616")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<function_run_recoveryGoal>)))
  "Returns full string definition for message of type '<function_run_recoveryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string rcvr_ac_name~%string  function_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'function_run_recoveryGoal)))
  "Returns full string definition for message of type 'function_run_recoveryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string rcvr_ac_name~%string  function_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <function_run_recoveryGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rcvr_ac_name))
     4 (cl:length (cl:slot-value msg 'function_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <function_run_recoveryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'function_run_recoveryGoal
    (cl:cons ':rcvr_ac_name (rcvr_ac_name msg))
    (cl:cons ':function_id (function_id msg))
))
