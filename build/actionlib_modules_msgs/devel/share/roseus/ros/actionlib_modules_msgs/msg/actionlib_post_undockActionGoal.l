;; Auto-generated. Do not edit!


(when (boundp 'actionlib_modules_msgs::actionlib_post_undockActionGoal)
  (if (not (find-package "ACTIONLIB_MODULES_MSGS"))
    (make-package "ACTIONLIB_MODULES_MSGS"))
  (shadow 'actionlib_post_undockActionGoal (find-package "ACTIONLIB_MODULES_MSGS")))
(unless (find-package "ACTIONLIB_MODULES_MSGS::ACTIONLIB_POST_UNDOCKACTIONGOAL")
  (make-package "ACTIONLIB_MODULES_MSGS::ACTIONLIB_POST_UNDOCKACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude actionlib_post_undockActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass actionlib_modules_msgs::actionlib_post_undockActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod actionlib_modules_msgs::actionlib_post_undockActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance actionlib_modules_msgs::actionlib_post_undockGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; actionlib_modules_msgs/actionlib_post_undockGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; actionlib_modules_msgs/actionlib_post_undockGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; actionlib_modules_msgs/actionlib_post_undockGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get actionlib_modules_msgs::actionlib_post_undockActionGoal :md5sum-) "2280ef9afc643f11105660b0de892c22")
(setf (get actionlib_modules_msgs::actionlib_post_undockActionGoal :datatype-) "actionlib_modules_msgs/actionlib_post_undockActionGoal")
(setf (get actionlib_modules_msgs::actionlib_post_undockActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
actionlib_post_undockGoal goal

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
MSG: actionlib_modules_msgs/actionlib_post_undockGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
string call_aclib_name
geometry_msgs/PoseStamped dock_pose
string dock_id
bool use_move_base
float32 post_time
bool use_timeout
float32 timeout

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

")



(provide :actionlib_modules_msgs/actionlib_post_undockActionGoal "2280ef9afc643f11105660b0de892c22")

