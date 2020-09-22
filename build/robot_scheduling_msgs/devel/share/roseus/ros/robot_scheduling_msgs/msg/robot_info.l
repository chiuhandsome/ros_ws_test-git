;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_info)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_info (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INFO")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_INFO"))

(in-package "ROS")
;;//! \htmlinclude robot_info.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_scheduling_msgs::robot_info
  :super ros::object
  :slots (_header _robot_name _pose _shape _shape_variables _mode _status ))

(defmethod robot_scheduling_msgs::robot_info
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_name __robot_name) "")
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:shape __shape) 0)
    ((:shape_variables __shape_variables) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mode __mode) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_name (string __robot_name))
   (setq _pose __pose)
   (setq _shape (round __shape))
   (setq _shape_variables __shape_variables)
   (setq _mode (round __mode))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:shape_variables
   (&optional __shape_variables)
   (if __shape_variables (setq _shape_variables __shape_variables)) _shape_variables)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_name
    4 (length _robot_name)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; int32 _shape
    4
    ;; float32[] _shape_variables
    (* 4    (length _shape_variables)) 4
    ;; int32 _mode
    4
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; int32 _shape
       (write-long _shape s)
     ;; float32[] _shape_variables
     (write-long (length _shape_variables) s)
     (dotimes (i (length _shape_variables))
       (sys::poke (elt _shape_variables i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _mode
       (write-long _mode s)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int32 _shape
     (setq _shape (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _shape_variables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_variables (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shape_variables i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::robot_info :md5sum-) "e0486581f8a0ae440a9a646ed608f045")
(setf (get robot_scheduling_msgs::robot_info :datatype-) "robot_scheduling_msgs/robot_info")
(setf (get robot_scheduling_msgs::robot_info :definition-)
      "Header header                            # the creation time
string robot_name                        # the name of the robot (used in preconditions and topics)
geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header
int32 shape                              # the shape of the robots (see enums)
float32[] shape_variables                # shape variables to define width height, ...
#RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
int32   mode                             # the mode of operation
int32   status                           # the status of the robot
#int32   good_id                          # the good id attached to the robot
#int32   order_id                         # the order id scheduled to this robot (-1: none)
#int32   order_status                     # the status of the assigned order


#Header header                            # the creation time
#string robot_name                        # the name of the robot (used in preconditions and topics)
#geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header
#int32 shape                              # the shape of the robots (see enums)
#float32[] shape_variables                # shape variables to define width height, ...
#RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
#int32   mode                             # the mode of operation
#int32   status                           # the status of the robot
#int32   good_id                          # the good id attached to the robot
#int32   order_id                         # the order id scheduled to this robot (-1: none)
#int32   order_status                     # the status of the assigned order



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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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



(provide :robot_scheduling_msgs/robot_info "e0486581f8a0ae440a9a646ed608f045")


