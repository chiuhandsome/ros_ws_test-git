; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude robot_interface_proc_lowerActionGoal.msg.html

(cl:defclass <robot_interface_proc_lowerActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type robot_scheduling_msgs-msg:robot_interface_proc_lowerGoal
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:robot_interface_proc_lowerGoal)))
)

(cl:defclass robot_interface_proc_lowerActionGoal (<robot_interface_proc_lowerActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_interface_proc_lowerActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_interface_proc_lowerActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<robot_interface_proc_lowerActionGoal> is deprecated: use robot_scheduling_msgs-msg:robot_interface_proc_lowerActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <robot_interface_proc_lowerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:header-val is deprecated.  Use robot_scheduling_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <robot_interface_proc_lowerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:goal_id-val is deprecated.  Use robot_scheduling_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <robot_interface_proc_lowerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:goal-val is deprecated.  Use robot_scheduling_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_interface_proc_lowerActionGoal>) ostream)
  "Serializes a message object of type '<robot_interface_proc_lowerActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_interface_proc_lowerActionGoal>) istream)
  "Deserializes a message object of type '<robot_interface_proc_lowerActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_interface_proc_lowerActionGoal>)))
  "Returns string type for a message object of type '<robot_interface_proc_lowerActionGoal>"
  "robot_scheduling_msgs/robot_interface_proc_lowerActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_interface_proc_lowerActionGoal)))
  "Returns string type for a message object of type 'robot_interface_proc_lowerActionGoal"
  "robot_scheduling_msgs/robot_interface_proc_lowerActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_interface_proc_lowerActionGoal>)))
  "Returns md5sum for a message object of type '<robot_interface_proc_lowerActionGoal>"
  "6613cbc19deae59dea64e2cdbd279916")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_interface_proc_lowerActionGoal)))
  "Returns md5sum for a message object of type 'robot_interface_proc_lowerActionGoal"
  "6613cbc19deae59dea64e2cdbd279916")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_interface_proc_lowerActionGoal>)))
  "Returns full string definition for message of type '<robot_interface_proc_lowerActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%robot_interface_proc_lowerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type	~%uint8 STATUS=1	 ~%uint8 BASE_CONNECT=2   ~%uint8 BASE_READY=3  ~%uint8 BASE_PROC=4   ~%uint8 LED=5	 ~%uint8 MUSIC=6	    ~%uint8 BATTERY=7	   ~%uint8 UTRASONIC=8	  ~%uint8 POWERCHARGE=9~%uint8 cmd_id  	~%string cmd_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_interface_proc_lowerActionGoal)))
  "Returns full string definition for message of type 'robot_interface_proc_lowerActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%robot_interface_proc_lowerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type	~%uint8 STATUS=1	 ~%uint8 BASE_CONNECT=2   ~%uint8 BASE_READY=3  ~%uint8 BASE_PROC=4   ~%uint8 LED=5	 ~%uint8 MUSIC=6	    ~%uint8 BATTERY=7	   ~%uint8 UTRASONIC=8	  ~%uint8 POWERCHARGE=9~%uint8 cmd_id  	~%string cmd_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_interface_proc_lowerActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_interface_proc_lowerActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_interface_proc_lowerActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
