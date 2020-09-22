; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude robot_interface_proc_upperGoal.msg.html

(cl:defclass <robot_interface_proc_upperGoal> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (cmd_data
    :reader cmd_data
    :initarg :cmd_data
    :type cl:string
    :initform ""))
)

(cl:defclass robot_interface_proc_upperGoal (<robot_interface_proc_upperGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_interface_proc_upperGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_interface_proc_upperGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<robot_interface_proc_upperGoal> is deprecated: use robot_scheduling_msgs-msg:robot_interface_proc_upperGoal instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <robot_interface_proc_upperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_type-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <robot_interface_proc_upperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_id-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'cmd_data-val :lambda-list '(m))
(cl:defmethod cmd_data-val ((m <robot_interface_proc_upperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_data-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_data instead.")
  (cmd_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<robot_interface_proc_upperGoal>)))
    "Constants for message type '<robot_interface_proc_upperGoal>"
  '((:GET_STATUS . 1)
    (:SET_COMMAND . 2)
    (:PUBLISH . 1)
    (:BASE_CONNECT . 2)
    (:BASE_READY . 3)
    (:BASE_PROC . 4)
    (:LED . 5)
    (:MUSIC . 6)
    (:BATTERY . 7)
    (:UTRASONIC . 8)
    (:POWERCHARGE . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'robot_interface_proc_upperGoal)))
    "Constants for message type 'robot_interface_proc_upperGoal"
  '((:GET_STATUS . 1)
    (:SET_COMMAND . 2)
    (:PUBLISH . 1)
    (:BASE_CONNECT . 2)
    (:BASE_READY . 3)
    (:BASE_PROC . 4)
    (:LED . 5)
    (:MUSIC . 6)
    (:BATTERY . 7)
    (:UTRASONIC . 8)
    (:POWERCHARGE . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_interface_proc_upperGoal>) ostream)
  "Serializes a message object of type '<robot_interface_proc_upperGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_interface_proc_upperGoal>) istream)
  "Deserializes a message object of type '<robot_interface_proc_upperGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_interface_proc_upperGoal>)))
  "Returns string type for a message object of type '<robot_interface_proc_upperGoal>"
  "robot_scheduling_msgs/robot_interface_proc_upperGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_interface_proc_upperGoal)))
  "Returns string type for a message object of type 'robot_interface_proc_upperGoal"
  "robot_scheduling_msgs/robot_interface_proc_upperGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_interface_proc_upperGoal>)))
  "Returns md5sum for a message object of type '<robot_interface_proc_upperGoal>"
  "3da02b69b8ebe7813f2a6a2b1eba6025")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_interface_proc_upperGoal)))
  "Returns md5sum for a message object of type 'robot_interface_proc_upperGoal"
  "3da02b69b8ebe7813f2a6a2b1eba6025")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_interface_proc_upperGoal>)))
  "Returns full string definition for message of type '<robot_interface_proc_upperGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type	~%uint8 PUBLISH=1	 ~%uint8 BASE_CONNECT=2   ~%uint8 BASE_READY=3  ~%uint8 BASE_PROC=4   ~%uint8 LED=5	 ~%uint8 MUSIC=6	    ~%uint8 BATTERY=7	   ~%uint8 UTRASONIC=8	  ~%uint8 POWERCHARGE=9~%uint8 cmd_id  	~%string cmd_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_interface_proc_upperGoal)))
  "Returns full string definition for message of type 'robot_interface_proc_upperGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type	~%uint8 PUBLISH=1	 ~%uint8 BASE_CONNECT=2   ~%uint8 BASE_READY=3  ~%uint8 BASE_PROC=4   ~%uint8 LED=5	 ~%uint8 MUSIC=6	    ~%uint8 BATTERY=7	   ~%uint8 UTRASONIC=8	  ~%uint8 POWERCHARGE=9~%uint8 cmd_id  	~%string cmd_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_interface_proc_upperGoal>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'cmd_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_interface_proc_upperGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_interface_proc_upperGoal
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':cmd_data (cmd_data msg))
))
