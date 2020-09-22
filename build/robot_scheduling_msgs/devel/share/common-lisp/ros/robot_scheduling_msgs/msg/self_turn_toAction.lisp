; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude self_turn_toAction.msg.html

(cl:defclass <self_turn_toAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type robot_scheduling_msgs-msg:self_turn_toActionGoal
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:self_turn_toActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type robot_scheduling_msgs-msg:self_turn_toActionResult
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:self_turn_toActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type robot_scheduling_msgs-msg:self_turn_toActionFeedback
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:self_turn_toActionFeedback)))
)

(cl:defclass self_turn_toAction (<self_turn_toAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <self_turn_toAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'self_turn_toAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<self_turn_toAction> is deprecated: use robot_scheduling_msgs-msg:self_turn_toAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <self_turn_toAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:action_goal-val is deprecated.  Use robot_scheduling_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <self_turn_toAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:action_result-val is deprecated.  Use robot_scheduling_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <self_turn_toAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:action_feedback-val is deprecated.  Use robot_scheduling_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <self_turn_toAction>) ostream)
  "Serializes a message object of type '<self_turn_toAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <self_turn_toAction>) istream)
  "Deserializes a message object of type '<self_turn_toAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<self_turn_toAction>)))
  "Returns string type for a message object of type '<self_turn_toAction>"
  "robot_scheduling_msgs/self_turn_toAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'self_turn_toAction)))
  "Returns string type for a message object of type 'self_turn_toAction"
  "robot_scheduling_msgs/self_turn_toAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<self_turn_toAction>)))
  "Returns md5sum for a message object of type '<self_turn_toAction>"
  "3a05b110ee5fefce457a8a599e5c2859")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'self_turn_toAction)))
  "Returns md5sum for a message object of type 'self_turn_toAction"
  "3a05b110ee5fefce457a8a599e5c2859")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<self_turn_toAction>)))
  "Returns full string definition for message of type '<self_turn_toAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%self_turn_toActionGoal action_goal~%self_turn_toActionResult action_result~%self_turn_toActionFeedback action_feedback~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%self_turn_toGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string command_type~%uint8 TURN_ABS=1~%uint8 TURN_REL=2~%uint8 TURN_INTERRUPE=99~%uint8 command_id~%string turn_id~%string pid_id~%float64 target_angle~%float32 time_out~%string turn_ac_name~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%self_turn_toResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 NOT_PID_ID=5~%uint8 NOT_PARAMSCHK_ID=6~%#uint8 NOT_POSE_ID=6~%uint8 NOT_POSE_MAP=7~%uint8 result~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%self_turn_toFeedback feedback~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float64 delta_angle~%bool tuened~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'self_turn_toAction)))
  "Returns full string definition for message of type 'self_turn_toAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%self_turn_toActionGoal action_goal~%self_turn_toActionResult action_result~%self_turn_toActionFeedback action_feedback~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%self_turn_toGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string command_type~%uint8 TURN_ABS=1~%uint8 TURN_REL=2~%uint8 TURN_INTERRUPE=99~%uint8 command_id~%string turn_id~%string pid_id~%float64 target_angle~%float32 time_out~%string turn_ac_name~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%self_turn_toResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 NOT_PID_ID=5~%uint8 NOT_PARAMSCHK_ID=6~%#uint8 NOT_POSE_ID=6~%uint8 NOT_POSE_MAP=7~%uint8 result~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%self_turn_toFeedback feedback~%~%================================================================================~%MSG: robot_scheduling_msgs/self_turn_toFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float64 delta_angle~%bool tuened~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <self_turn_toAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <self_turn_toAction>))
  "Converts a ROS message object to a list"
  (cl:list 'self_turn_toAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
