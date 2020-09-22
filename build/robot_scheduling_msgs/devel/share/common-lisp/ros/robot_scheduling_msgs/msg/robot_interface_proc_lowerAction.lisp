; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude robot_interface_proc_lowerAction.msg.html

(cl:defclass <robot_interface_proc_lowerAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type robot_scheduling_msgs-msg:robot_interface_proc_lowerActionGoal
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:robot_interface_proc_lowerActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type robot_scheduling_msgs-msg:robot_interface_proc_lowerActionResult
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:robot_interface_proc_lowerActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type robot_scheduling_msgs-msg:robot_interface_proc_lowerActionFeedback
    :initform (cl:make-instance 'robot_scheduling_msgs-msg:robot_interface_proc_lowerActionFeedback)))
)

(cl:defclass robot_interface_proc_lowerAction (<robot_interface_proc_lowerAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_interface_proc_lowerAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_interface_proc_lowerAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<robot_interface_proc_lowerAction> is deprecated: use robot_scheduling_msgs-msg:robot_interface_proc_lowerAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <robot_interface_proc_lowerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:action_goal-val is deprecated.  Use robot_scheduling_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <robot_interface_proc_lowerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:action_result-val is deprecated.  Use robot_scheduling_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <robot_interface_proc_lowerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:action_feedback-val is deprecated.  Use robot_scheduling_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_interface_proc_lowerAction>) ostream)
  "Serializes a message object of type '<robot_interface_proc_lowerAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_interface_proc_lowerAction>) istream)
  "Deserializes a message object of type '<robot_interface_proc_lowerAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_interface_proc_lowerAction>)))
  "Returns string type for a message object of type '<robot_interface_proc_lowerAction>"
  "robot_scheduling_msgs/robot_interface_proc_lowerAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_interface_proc_lowerAction)))
  "Returns string type for a message object of type 'robot_interface_proc_lowerAction"
  "robot_scheduling_msgs/robot_interface_proc_lowerAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_interface_proc_lowerAction>)))
  "Returns md5sum for a message object of type '<robot_interface_proc_lowerAction>"
  "814f03994f528231e8af908f760f2905")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_interface_proc_lowerAction)))
  "Returns md5sum for a message object of type 'robot_interface_proc_lowerAction"
  "814f03994f528231e8af908f760f2905")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_interface_proc_lowerAction>)))
  "Returns full string definition for message of type '<robot_interface_proc_lowerAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%robot_interface_proc_lowerActionGoal action_goal~%robot_interface_proc_lowerActionResult action_result~%robot_interface_proc_lowerActionFeedback action_feedback~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%robot_interface_proc_lowerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type	~%uint8 STATUS=1	 ~%uint8 BASE_CONNECT=2   ~%uint8 BASE_READY=3  ~%uint8 BASE_PROC=4   ~%uint8 LED=5	 ~%uint8 MUSIC=6	    ~%uint8 BATTERY=7	   ~%uint8 UTRASONIC=8	  ~%uint8 POWERCHARGE=9~%uint8 cmd_id  	~%string cmd_data~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%robot_interface_proc_lowerResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 PASS=5~%uint8 result_state~%string result_data~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%robot_interface_proc_lowerFeedback feedback~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_interface_proc_lowerAction)))
  "Returns full string definition for message of type 'robot_interface_proc_lowerAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%robot_interface_proc_lowerActionGoal action_goal~%robot_interface_proc_lowerActionResult action_result~%robot_interface_proc_lowerActionFeedback action_feedback~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%robot_interface_proc_lowerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type	~%uint8 STATUS=1	 ~%uint8 BASE_CONNECT=2   ~%uint8 BASE_READY=3  ~%uint8 BASE_PROC=4   ~%uint8 LED=5	 ~%uint8 MUSIC=6	    ~%uint8 BATTERY=7	   ~%uint8 UTRASONIC=8	  ~%uint8 POWERCHARGE=9~%uint8 cmd_id  	~%string cmd_data~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%robot_interface_proc_lowerResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 PASS=5~%uint8 result_state~%string result_data~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%robot_interface_proc_lowerFeedback feedback~%~%================================================================================~%MSG: robot_scheduling_msgs/robot_interface_proc_lowerFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_interface_proc_lowerAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_interface_proc_lowerAction>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_interface_proc_lowerAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))