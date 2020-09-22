; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude function_runGoal.msg.html

(cl:defclass <function_runGoal> (roslisp-msg-protocol:ros-message)
  ((cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:string
    :initform "")
   (cmd_data
    :reader cmd_data
    :initarg :cmd_data
    :type cl:string
    :initform "")
   (cmd_ac_name
    :reader cmd_ac_name
    :initarg :cmd_ac_name
    :type cl:string
    :initform ""))
)

(cl:defclass function_runGoal (<function_runGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <function_runGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'function_runGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<function_runGoal> is deprecated: use robot_scheduling_msgs-msg:function_runGoal instead.")))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <function_runGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_id-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'cmd_data-val :lambda-list '(m))
(cl:defmethod cmd_data-val ((m <function_runGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_data-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_data instead.")
  (cmd_data m))

(cl:ensure-generic-function 'cmd_ac_name-val :lambda-list '(m))
(cl:defmethod cmd_ac_name-val ((m <function_runGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_ac_name instead.")
  (cmd_ac_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <function_runGoal>) ostream)
  "Serializes a message object of type '<function_runGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_ac_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <function_runGoal>) istream)
  "Deserializes a message object of type '<function_runGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'cmd_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<function_runGoal>)))
  "Returns string type for a message object of type '<function_runGoal>"
  "robot_scheduling_msgs/function_runGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'function_runGoal)))
  "Returns string type for a message object of type 'function_runGoal"
  "robot_scheduling_msgs/function_runGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<function_runGoal>)))
  "Returns md5sum for a message object of type '<function_runGoal>"
  "00819e6db779410dfa65de16c51c4683")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'function_runGoal)))
  "Returns md5sum for a message object of type 'function_runGoal"
  "00819e6db779410dfa65de16c51c4683")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<function_runGoal>)))
  "Returns full string definition for message of type '<function_runGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string  cmd_id		#function code~%string  cmd_data~%string cmd_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'function_runGoal)))
  "Returns full string definition for message of type 'function_runGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string  cmd_id		#function code~%string  cmd_data~%string cmd_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <function_runGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd_id))
     4 (cl:length (cl:slot-value msg 'cmd_data))
     4 (cl:length (cl:slot-value msg 'cmd_ac_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <function_runGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'function_runGoal
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':cmd_data (cmd_data msg))
    (cl:cons ':cmd_ac_name (cmd_ac_name msg))
))
