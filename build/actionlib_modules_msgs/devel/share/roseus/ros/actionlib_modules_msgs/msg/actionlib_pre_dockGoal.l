;; Auto-generated. Do not edit!


(when (boundp 'actionlib_modules_msgs::actionlib_pre_dockGoal)
  (if (not (find-package "ACTIONLIB_MODULES_MSGS"))
    (make-package "ACTIONLIB_MODULES_MSGS"))
  (shadow 'actionlib_pre_dockGoal (find-package "ACTIONLIB_MODULES_MSGS")))
(unless (find-package "ACTIONLIB_MODULES_MSGS::ACTIONLIB_PRE_DOCKGOAL")
  (make-package "ACTIONLIB_MODULES_MSGS::ACTIONLIB_PRE_DOCKGOAL"))

(in-package "ROS")
;;//! \htmlinclude actionlib_pre_dockGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass actionlib_modules_msgs::actionlib_pre_dockGoal
  :super ros::object
  :slots (_call_aclib_name _dock_pose _dock_id _use_move_base _post_time _use_timeout _timeout ))

(defmethod actionlib_modules_msgs::actionlib_pre_dockGoal
  (:init
   (&key
    ((:call_aclib_name __call_aclib_name) "")
    ((:dock_pose __dock_pose) (instance geometry_msgs::PoseStamped :init))
    ((:dock_id __dock_id) "")
    ((:use_move_base __use_move_base) nil)
    ((:post_time __post_time) 0.0)
    ((:use_timeout __use_timeout) nil)
    ((:timeout __timeout) 0.0)
    )
   (send-super :init)
   (setq _call_aclib_name (string __call_aclib_name))
   (setq _dock_pose __dock_pose)
   (setq _dock_id (string __dock_id))
   (setq _use_move_base __use_move_base)
   (setq _post_time (float __post_time))
   (setq _use_timeout __use_timeout)
   (setq _timeout (float __timeout))
   self)
  (:call_aclib_name
   (&optional __call_aclib_name)
   (if __call_aclib_name (setq _call_aclib_name __call_aclib_name)) _call_aclib_name)
  (:dock_pose
   (&rest __dock_pose)
   (if (keywordp (car __dock_pose))
       (send* _dock_pose __dock_pose)
     (progn
       (if __dock_pose (setq _dock_pose (car __dock_pose)))
       _dock_pose)))
  (:dock_id
   (&optional __dock_id)
   (if __dock_id (setq _dock_id __dock_id)) _dock_id)
  (:use_move_base
   (&optional __use_move_base)
   (if __use_move_base (setq _use_move_base __use_move_base)) _use_move_base)
  (:post_time
   (&optional __post_time)
   (if __post_time (setq _post_time __post_time)) _post_time)
  (:use_timeout
   (&optional __use_timeout)
   (if __use_timeout (setq _use_timeout __use_timeout)) _use_timeout)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; string _call_aclib_name
    4 (length _call_aclib_name)
    ;; geometry_msgs/PoseStamped _dock_pose
    (send _dock_pose :serialization-length)
    ;; string _dock_id
    4 (length _dock_id)
    ;; bool _use_move_base
    1
    ;; float32 _post_time
    4
    ;; bool _use_timeout
    1
    ;; float32 _timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _call_aclib_name
       (write-long (length _call_aclib_name) s) (princ _call_aclib_name s)
     ;; geometry_msgs/PoseStamped _dock_pose
       (send _dock_pose :serialize s)
     ;; string _dock_id
       (write-long (length _dock_id) s) (princ _dock_id s)
     ;; bool _use_move_base
       (if _use_move_base (write-byte -1 s) (write-byte 0 s))
     ;; float32 _post_time
       (sys::poke _post_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _use_timeout
       (if _use_timeout (write-byte -1 s) (write-byte 0 s))
     ;; float32 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _call_aclib_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _call_aclib_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _dock_pose
     (send _dock_pose :deserialize buf ptr-) (incf ptr- (send _dock_pose :serialization-length))
   ;; string _dock_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dock_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _use_move_base
     (setq _use_move_base (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _post_time
     (setq _post_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _use_timeout
     (setq _use_timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _timeout
     (setq _timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get actionlib_modules_msgs::actionlib_pre_dockGoal :md5sum-) "9c7a95ee383b31fc48324995326aa2f7")
(setf (get actionlib_modules_msgs::actionlib_pre_dockGoal :datatype-) "actionlib_modules_msgs/actionlib_pre_dockGoal")
(setf (get actionlib_modules_msgs::actionlib_pre_dockGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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



(provide :actionlib_modules_msgs/actionlib_pre_dockGoal "9c7a95ee383b31fc48324995326aa2f7")

