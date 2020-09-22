;; Auto-generated. Do not edit!


(when (boundp 'open_auto_dock_msgs::UndockAction)
  (if (not (find-package "OPEN_AUTO_DOCK_MSGS"))
    (make-package "OPEN_AUTO_DOCK_MSGS"))
  (shadow 'UndockAction (find-package "OPEN_AUTO_DOCK_MSGS")))
(unless (find-package "OPEN_AUTO_DOCK_MSGS::UNDOCKACTION")
  (make-package "OPEN_AUTO_DOCK_MSGS::UNDOCKACTION"))

(in-package "ROS")
;;//! \htmlinclude UndockAction.msg.html


(defclass open_auto_dock_msgs::UndockAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod open_auto_dock_msgs::UndockAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance open_auto_dock_msgs::UndockActionGoal :init))
    ((:action_result __action_result) (instance open_auto_dock_msgs::UndockActionResult :init))
    ((:action_feedback __action_feedback) (instance open_auto_dock_msgs::UndockActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; open_auto_dock_msgs/UndockActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; open_auto_dock_msgs/UndockActionResult _action_result
    (send _action_result :serialization-length)
    ;; open_auto_dock_msgs/UndockActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; open_auto_dock_msgs/UndockActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; open_auto_dock_msgs/UndockActionResult _action_result
       (send _action_result :serialize s)
     ;; open_auto_dock_msgs/UndockActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; open_auto_dock_msgs/UndockActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; open_auto_dock_msgs/UndockActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; open_auto_dock_msgs/UndockActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get open_auto_dock_msgs::UndockAction :md5sum-) "2d6165a59b83f22b1122306ec8465c78")
(setf (get open_auto_dock_msgs::UndockAction :datatype-) "open_auto_dock_msgs/UndockAction")
(setf (get open_auto_dock_msgs::UndockAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

UndockActionGoal action_goal
UndockActionResult action_result
UndockActionFeedback action_feedback

================================================================================
MSG: open_auto_dock_msgs/UndockActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
UndockGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: open_auto_dock_msgs/UndockGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# This action will always pull backwards off the dock
# Optionally, we can also turn around 180 degrees
bool rotate_in_place

================================================================================
MSG: open_auto_dock_msgs/UndockActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
UndockResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: open_auto_dock_msgs/UndockResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Have we undocked?
bool undocked

================================================================================
MSG: open_auto_dock_msgs/UndockActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
UndockFeedback feedback

================================================================================
MSG: open_auto_dock_msgs/UndockFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback is the detected pose of the dock.
geometry_msgs/PoseStamped dock_pose

# Plus the control output
geometry_msgs/Twist command

# Have we undocked?
bool undocked


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :open_auto_dock_msgs/UndockAction "2d6165a59b83f22b1122306ec8465c78")

