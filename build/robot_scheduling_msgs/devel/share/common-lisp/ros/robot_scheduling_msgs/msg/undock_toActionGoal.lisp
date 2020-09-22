; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude undock_toActionGoal.msg.html

(cl:defclass <undock_toActionGoal> (roslisp-msg-protocol:ros-message)
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
    :type robot_scheduling_msgs-msg:undock_toGoal
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:undock_toGoal)))
)

(cl:defclass undock_toActionGoal (<undock_toActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <undock_toActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'undock_toActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<undock_toActionGoal> is deprecated: use robot_scheduling_msgs-msg:undock_toActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <undock_toActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:header-val is deprecated.  Use robot_scheduling_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <undock_toActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:goal_id-val is deprecated.  Use robot_scheduling_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <undock_toActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:goal-val is deprecated.  Use robot_scheduling_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <undock_toActionGoal>) ostream)
  "Serializes a message object of type '<undock_toActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <undock_toActionGoal>) istream)
  "Deserializes a message object of type '<undock_toActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<undock_toActionGoal>)))
  "Returns string type for a message object of type '<undock_toActionGoal>"
  "robot_scheduling_msgs/undock_toActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'undock_toActionGoal)))
  "Returns string type for a message object of type 'undock_toActionGoal"
  "robot_scheduling_msgs/undock_toActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<undock_toActionGoal>)))
  "Returns md5sum for a message object of type '<undock_toActionGoal>"
  "d5273614ee4267b0c744c8c144f43a78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'undock_toActionGoal)))
  "Returns md5sum for a message object of type 'undock_toActionGoal"
  "d5273614ee4267b0c744c8c144f43a78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<undock_toActionGoal>)))
  "Returns full string definition for message of type '<undock_toActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%undock_toGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: robot_scheduling_msgs/undock_toGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string undock_id~%string pre_undock_id~%string frame_id~%uint8 command~%string undock_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'undock_toActionGoal)))
  "Returns full string definition for message of type 'undock_toActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%undock_toGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: robot_scheduling_msgs/undock_toGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string undock_id~%string pre_undock_id~%string frame_id~%uint8 command~%string undock_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <undock_toActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <undock_toActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'undock_toActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
