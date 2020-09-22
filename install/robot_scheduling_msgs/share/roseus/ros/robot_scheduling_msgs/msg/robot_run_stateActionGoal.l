;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_run_stateActionGoal)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_run_stateActionGoal (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEACTIONGOAL")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude robot_run_stateActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_scheduling_msgs::robot_run_stateActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod robot_scheduling_msgs::robot_run_stateActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance robot_scheduling_msgs::robot_run_stateGoal :init))
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
    ;; robot_scheduling_msgs/robot_run_stateGoal _goal
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
     ;; robot_scheduling_msgs/robot_run_stateGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; robot_scheduling_msgs/robot_run_stateGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::robot_run_stateActionGoal :md5sum-) "cd3d751c0dad406d5fc5d0c665a3fda4")
(setf (get robot_scheduling_msgs::robot_run_stateActionGoal :datatype-) "robot_scheduling_msgs/robot_run_stateActionGoal")
(setf (get robot_scheduling_msgs::robot_run_stateActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
robot_run_stateGoal goal

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
MSG: robot_scheduling_msgs/robot_run_stateGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
uint8 GET=1
uint8 SET=2
uint8 GETALL=3
uint8 PRE_GET=4
uint8 PRE_SET=5
uint8 PRE_GETALL=6
uint8 MANU_GET=7
uint8 MANU_SET=8
uint8 MANU_GETALL=9
uint8 MANU_STARTCHECK=10
uint8 MANU_MODESET=11
uint8 ALARM_RESETCHECK=12
uint8 ALARM_RECOVERYCHECK=13
uint8 ALARM_RECOVERY_GETALL=14
uint8 SYS_RESTARTCHECK=15
uint8 REMOTE_STARTCHECK=16
uint8 REMOTE_GETALL=17
uint8 REMOTE_MODESET=18
uint8 PLANTOEXEC=19
uint8 command
uint8 set_status
#uint8[] set_alarmcode
string set_status_code	#for alarm code or other's application

")



(provide :robot_scheduling_msgs/robot_run_stateActionGoal "cd3d751c0dad406d5fc5d0c665a3fda4")

