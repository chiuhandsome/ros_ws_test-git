; Auto-generated. Do not edit!


(cl:in-package actionlib_modules_msgs-msg)


;//! \htmlinclude recovery_not_actionlib_agv_movetoActionGoal.msg.html

(cl:defclass <recovery_not_actionlib_agv_movetoActionGoal> (roslisp-msg-protocol:ros-message)
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
    :type actionlib_modules_msgs-msg:recovery_not_actionlib_agv_movetoGoal
    :initform (cl:make-instance 'actionlib_modules_msgs-msg:recovery_not_actionlib_agv_movetoGoal)))
)

(cl:defclass recovery_not_actionlib_agv_movetoActionGoal (<recovery_not_actionlib_agv_movetoActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recovery_not_actionlib_agv_movetoActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recovery_not_actionlib_agv_movetoActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_modules_msgs-msg:<recovery_not_actionlib_agv_movetoActionGoal> is deprecated: use actionlib_modules_msgs-msg:recovery_not_actionlib_agv_movetoActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <recovery_not_actionlib_agv_movetoActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:header-val is deprecated.  Use actionlib_modules_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <recovery_not_actionlib_agv_movetoActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:goal_id-val is deprecated.  Use actionlib_modules_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <recovery_not_actionlib_agv_movetoActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:goal-val is deprecated.  Use actionlib_modules_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recovery_not_actionlib_agv_movetoActionGoal>) ostream)
  "Serializes a message object of type '<recovery_not_actionlib_agv_movetoActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recovery_not_actionlib_agv_movetoActionGoal>) istream)
  "Deserializes a message object of type '<recovery_not_actionlib_agv_movetoActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recovery_not_actionlib_agv_movetoActionGoal>)))
  "Returns string type for a message object of type '<recovery_not_actionlib_agv_movetoActionGoal>"
  "actionlib_modules_msgs/recovery_not_actionlib_agv_movetoActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recovery_not_actionlib_agv_movetoActionGoal)))
  "Returns string type for a message object of type 'recovery_not_actionlib_agv_movetoActionGoal"
  "actionlib_modules_msgs/recovery_not_actionlib_agv_movetoActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recovery_not_actionlib_agv_movetoActionGoal>)))
  "Returns md5sum for a message object of type '<recovery_not_actionlib_agv_movetoActionGoal>"
  "4b30be6cd12b9e72826df56b481f40e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recovery_not_actionlib_agv_movetoActionGoal)))
  "Returns md5sum for a message object of type 'recovery_not_actionlib_agv_movetoActionGoal"
  "4b30be6cd12b9e72826df56b481f40e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recovery_not_actionlib_agv_movetoActionGoal>)))
  "Returns full string definition for message of type '<recovery_not_actionlib_agv_movetoActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%recovery_not_actionlib_agv_movetoGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: actionlib_modules_msgs/recovery_not_actionlib_agv_movetoGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recovery_not_actionlib_agv_movetoActionGoal)))
  "Returns full string definition for message of type 'recovery_not_actionlib_agv_movetoActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%recovery_not_actionlib_agv_movetoGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: actionlib_modules_msgs/recovery_not_actionlib_agv_movetoGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recovery_not_actionlib_agv_movetoActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recovery_not_actionlib_agv_movetoActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'recovery_not_actionlib_agv_movetoActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
