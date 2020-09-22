;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::pose_move_toFeedback)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'pose_move_toFeedback (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::POSE_MOVE_TOFEEDBACK")
  (make-package "ROBOT_SCHEDULING_MSGS::POSE_MOVE_TOFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude pose_move_toFeedback.msg.html
(if (not (find-package "LOCOMOTOR_MSGS"))
  (ros::roseus-add-msgs "locomotor_msgs"))


(defclass robot_scheduling_msgs::pose_move_toFeedback
  :super ros::object
  :slots (_state _percent_complete _distance_traveled _estimated_distance_remaining ))

(defmethod robot_scheduling_msgs::pose_move_toFeedback
  (:init
   (&key
    ((:state __state) (instance locomotor_msgs::NavigationState :init))
    ((:percent_complete __percent_complete) 0.0)
    ((:distance_traveled __distance_traveled) 0.0)
    ((:estimated_distance_remaining __estimated_distance_remaining) 0.0)
    )
   (send-super :init)
   (setq _state __state)
   (setq _percent_complete (float __percent_complete))
   (setq _distance_traveled (float __distance_traveled))
   (setq _estimated_distance_remaining (float __estimated_distance_remaining))
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:percent_complete
   (&optional __percent_complete)
   (if __percent_complete (setq _percent_complete __percent_complete)) _percent_complete)
  (:distance_traveled
   (&optional __distance_traveled)
   (if __distance_traveled (setq _distance_traveled __distance_traveled)) _distance_traveled)
  (:estimated_distance_remaining
   (&optional __estimated_distance_remaining)
   (if __estimated_distance_remaining (setq _estimated_distance_remaining __estimated_distance_remaining)) _estimated_distance_remaining)
  (:serialization-length
   ()
   (+
    ;; locomotor_msgs/NavigationState _state
    (send _state :serialization-length)
    ;; float32 _percent_complete
    4
    ;; float32 _distance_traveled
    4
    ;; float32 _estimated_distance_remaining
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; locomotor_msgs/NavigationState _state
       (send _state :serialize s)
     ;; float32 _percent_complete
       (sys::poke _percent_complete (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_traveled
       (sys::poke _distance_traveled (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _estimated_distance_remaining
       (sys::poke _estimated_distance_remaining (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; locomotor_msgs/NavigationState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; float32 _percent_complete
     (setq _percent_complete (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_traveled
     (setq _distance_traveled (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _estimated_distance_remaining
     (setq _estimated_distance_remaining (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::pose_move_toFeedback :md5sum-) "731b38cf0756acb428661980c367590e")
(setf (get robot_scheduling_msgs::pose_move_toFeedback :datatype-) "robot_scheduling_msgs/pose_move_toFeedback")
(setf (get robot_scheduling_msgs::pose_move_toFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message
locomotor_msgs/NavigationState state
float32 percent_complete
float32 distance_traveled
float32 estimated_distance_remaining


================================================================================
MSG: locomotor_msgs/NavigationState
nav_2d_msgs/Pose2DStamped global_pose
nav_2d_msgs/Pose2DStamped local_pose
nav_2d_msgs/Pose2DStamped goal
nav_2d_msgs/Twist2DStamped current_velocity
nav_2d_msgs/Twist2DStamped command_velocity
nav_2d_msgs/Path2D global_plan

================================================================================
MSG: nav_2d_msgs/Pose2DStamped
Header header
geometry_msgs/Pose2D pose

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Twist2DStamped
std_msgs/Header header
Twist2D velocity

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Path2D
Header header
geometry_msgs/Pose2D[] poses

")



(provide :robot_scheduling_msgs/pose_move_toFeedback "731b38cf0756acb428661980c367590e")

