; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude time_waitGoal.msg.html

(cl:defclass <time_waitGoal> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (cmd_time
    :reader cmd_time
    :initarg :cmd_time
    :type cl:float
    :initform 0.0)
   (time_wait_ac_name
    :reader time_wait_ac_name
    :initarg :time_wait_ac_name
    :type cl:string
    :initform ""))
)

(cl:defclass time_waitGoal (<time_waitGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <time_waitGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'time_waitGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<time_waitGoal> is deprecated: use robot_scheduling_msgs-msg:time_waitGoal instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <time_waitGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_type-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'cmd_time-val :lambda-list '(m))
(cl:defmethod cmd_time-val ((m <time_waitGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_time-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_time instead.")
  (cmd_time m))

(cl:ensure-generic-function 'time_wait_ac_name-val :lambda-list '(m))
(cl:defmethod time_wait_ac_name-val ((m <time_waitGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:time_wait_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:time_wait_ac_name instead.")
  (time_wait_ac_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<time_waitGoal>)))
    "Constants for message type '<time_waitGoal>"
  '((:NORMAL . 1)
    (:PARAMETER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'time_waitGoal)))
    "Constants for message type 'time_waitGoal"
  '((:NORMAL . 1)
    (:PARAMETER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <time_waitGoal>) ostream)
  "Serializes a message object of type '<time_waitGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time_wait_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time_wait_ac_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <time_waitGoal>) istream)
  "Deserializes a message object of type '<time_waitGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_wait_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time_wait_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<time_waitGoal>)))
  "Returns string type for a message object of type '<time_waitGoal>"
  "robot_scheduling_msgs/time_waitGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'time_waitGoal)))
  "Returns string type for a message object of type 'time_waitGoal"
  "robot_scheduling_msgs/time_waitGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<time_waitGoal>)))
  "Returns md5sum for a message object of type '<time_waitGoal>"
  "fe11ba37038c6ebc8694fd608ddc333f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'time_waitGoal)))
  "Returns md5sum for a message object of type 'time_waitGoal"
  "fe11ba37038c6ebc8694fd608ddc333f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<time_waitGoal>)))
  "Returns full string definition for message of type '<time_waitGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 NORMAL=1~%uint8 PARAMETER=2~%uint8 cmd_type~%float32 cmd_time	~%string time_wait_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'time_waitGoal)))
  "Returns full string definition for message of type 'time_waitGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 NORMAL=1~%uint8 PARAMETER=2~%uint8 cmd_type~%float32 cmd_time	~%string time_wait_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <time_waitGoal>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'time_wait_ac_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <time_waitGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'time_waitGoal
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':cmd_time (cmd_time msg))
    (cl:cons ':time_wait_ac_name (time_wait_ac_name msg))
))
