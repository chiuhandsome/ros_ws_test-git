;; Auto-generated. Do not edit!


(when (boundp 'robot_control_msgs::hyc_RobotInfo)
  (if (not (find-package "ROBOT_CONTROL_MSGS"))
    (make-package "ROBOT_CONTROL_MSGS"))
  (shadow 'hyc_RobotInfo (find-package "ROBOT_CONTROL_MSGS")))
(unless (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO")
  (make-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))

(in-package "ROS")
;;//! \htmlinclude hyc_RobotInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SHAPE_CIRCLE*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*SHAPE_CIRCLE* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*SHAPE_CIRCLE* 0)
(intern "*HANDLERTYPE_NA*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*HANDLERTYPE_NA* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*HANDLERTYPE_NA* 0)
(intern "*HANDLERTYPE_ROLLER*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*HANDLERTYPE_ROLLER* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*HANDLERTYPE_ROLLER* 1)
(intern "*HANDLERTYPE_ARM*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*HANDLERTYPE_ARM* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*HANDLERTYPE_ARM* 2)
(intern "*HANDLERTYPE_PNP*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*HANDLERTYPE_PNP* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*HANDLERTYPE_PNP* 3)
(intern "*MODE_NA*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*MODE_NA* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*MODE_NA* 0)
(intern "*MODE_IDLE*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*MODE_IDLE* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*MODE_IDLE* 1)
(intern "*MODE_SEGMENT_FOLLOWING*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*MODE_SEGMENT_FOLLOWING* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*MODE_SEGMENT_FOLLOWING* 2)
(intern "*MODE_PICKUP*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*MODE_PICKUP* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*MODE_PICKUP* 3)
(intern "*STATUS_NONE*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*STATUS_NONE* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*STATUS_NONE* -1)
(intern "*STATUS_DRIVING*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*STATUS_DRIVING* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*STATUS_DRIVING* 0)
(intern "*STATUS_STOPPED*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*STATUS_STOPPED* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*STATUS_STOPPED* 1)
(intern "*STATUS_DONE*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*STATUS_DONE* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*STATUS_DONE* 2)
(intern "*STATUS_BROKEN*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*STATUS_BROKEN* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*STATUS_BROKEN* 3)
(intern "*GOOD_EMPTY*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*GOOD_EMPTY* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*GOOD_EMPTY* -1)
(intern "*GOOD_NA*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*GOOD_NA* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*GOOD_NA* -2)
(intern "*ORDER_NONE*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*ORDER_NONE* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*ORDER_NONE* 0)
(intern "*ORDER_APPROACH*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*ORDER_APPROACH* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*ORDER_APPROACH* 1)
(intern "*ORDER_PICKUP*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*ORDER_PICKUP* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*ORDER_PICKUP* 2)
(intern "*ORDER_TRANSPORT*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*ORDER_TRANSPORT* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*ORDER_TRANSPORT* 3)
(intern "*ORDER_DROP*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*ORDER_DROP* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*ORDER_DROP* 4)
(intern "*ORDER_FINSIH*" (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(shadow '*ORDER_FINSIH* (find-package "ROBOT_CONTROL_MSGS::HYC_ROBOTINFO"))
(defconstant robot_control_msgs::hyc_RobotInfo::*ORDER_FINSIH* 5)
(defclass robot_control_msgs::hyc_RobotInfo
  :super ros::object
  :slots (_header _robot_name _pose _current_route_segment _shape _shape_variables _handler_type _battery_id _battery_capacity _battery_chargetime _battery_servicetime _mode _status _error_code _good_id _order_id _order_status ))

(defmethod robot_control_msgs::hyc_RobotInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_name __robot_name) "")
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:current_route_segment __current_route_segment) 0)
    ((:shape __shape) 0)
    ((:shape_variables __shape_variables) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:handler_type __handler_type) 0)
    ((:battery_id __battery_id) "")
    ((:battery_capacity __battery_capacity) 0.0)
    ((:battery_chargetime __battery_chargetime) 0)
    ((:battery_servicetime __battery_servicetime) 0)
    ((:mode __mode) 0)
    ((:status __status) 0)
    ((:error_code __error_code) "")
    ((:good_id __good_id) 0)
    ((:order_id __order_id) 0)
    ((:order_status __order_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_name (string __robot_name))
   (setq _pose __pose)
   (setq _current_route_segment (round __current_route_segment))
   (setq _shape (round __shape))
   (setq _shape_variables __shape_variables)
   (setq _handler_type (round __handler_type))
   (setq _battery_id (string __battery_id))
   (setq _battery_capacity (float __battery_capacity))
   (setq _battery_chargetime (round __battery_chargetime))
   (setq _battery_servicetime (round __battery_servicetime))
   (setq _mode (round __mode))
   (setq _status (round __status))
   (setq _error_code (string __error_code))
   (setq _good_id (round __good_id))
   (setq _order_id (round __order_id))
   (setq _order_status (round __order_status))
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
  (:current_route_segment
   (&optional __current_route_segment)
   (if __current_route_segment (setq _current_route_segment __current_route_segment)) _current_route_segment)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:shape_variables
   (&optional __shape_variables)
   (if __shape_variables (setq _shape_variables __shape_variables)) _shape_variables)
  (:handler_type
   (&optional __handler_type)
   (if __handler_type (setq _handler_type __handler_type)) _handler_type)
  (:battery_id
   (&optional __battery_id)
   (if __battery_id (setq _battery_id __battery_id)) _battery_id)
  (:battery_capacity
   (&optional __battery_capacity)
   (if __battery_capacity (setq _battery_capacity __battery_capacity)) _battery_capacity)
  (:battery_chargetime
   (&optional __battery_chargetime)
   (if __battery_chargetime (setq _battery_chargetime __battery_chargetime)) _battery_chargetime)
  (:battery_servicetime
   (&optional __battery_servicetime)
   (if __battery_servicetime (setq _battery_servicetime __battery_servicetime)) _battery_servicetime)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:good_id
   (&optional __good_id)
   (if __good_id (setq _good_id __good_id)) _good_id)
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:order_status
   (&optional __order_status)
   (if __order_status (setq _order_status __order_status)) _order_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_name
    4 (length _robot_name)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; int32 _current_route_segment
    4
    ;; int32 _shape
    4
    ;; float32[] _shape_variables
    (* 4    (length _shape_variables)) 4
    ;; int32 _handler_type
    4
    ;; string _battery_id
    4 (length _battery_id)
    ;; float32 _battery_capacity
    4
    ;; int32 _battery_chargetime
    4
    ;; int32 _battery_servicetime
    4
    ;; int32 _mode
    4
    ;; int32 _status
    4
    ;; string _error_code
    4 (length _error_code)
    ;; int32 _good_id
    4
    ;; int32 _order_id
    4
    ;; int32 _order_status
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
     ;; int32 _current_route_segment
       (write-long _current_route_segment s)
     ;; int32 _shape
       (write-long _shape s)
     ;; float32[] _shape_variables
     (write-long (length _shape_variables) s)
     (dotimes (i (length _shape_variables))
       (sys::poke (elt _shape_variables i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _handler_type
       (write-long _handler_type s)
     ;; string _battery_id
       (write-long (length _battery_id) s) (princ _battery_id s)
     ;; float32 _battery_capacity
       (sys::poke _battery_capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _battery_chargetime
       (write-long _battery_chargetime s)
     ;; int32 _battery_servicetime
       (write-long _battery_servicetime s)
     ;; int32 _mode
       (write-long _mode s)
     ;; int32 _status
       (write-long _status s)
     ;; string _error_code
       (write-long (length _error_code) s) (princ _error_code s)
     ;; int32 _good_id
       (write-long _good_id s)
     ;; int32 _order_id
       (write-long _order_id s)
     ;; int32 _order_status
       (write-long _order_status s)
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
   ;; int32 _current_route_segment
     (setq _current_route_segment (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _shape
     (setq _shape (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _shape_variables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_variables (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shape_variables i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _handler_type
     (setq _handler_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _battery_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _battery_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _battery_capacity
     (setq _battery_capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _battery_chargetime
     (setq _battery_chargetime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _battery_servicetime
     (setq _battery_servicetime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _error_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _good_id
     (setq _good_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _order_id
     (setq _order_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _order_status
     (setq _order_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_control_msgs::hyc_RobotInfo :md5sum-) "acf6224ebc0054473268910daf81c8c4")
(setf (get robot_control_msgs::hyc_RobotInfo :datatype-) "robot_control_msgs/hyc_RobotInfo")
(setf (get robot_control_msgs::hyc_RobotInfo :definition-)
      "#################################################################
## Presents dynamic parameters of a hyc'srobot
#################################################################

Header header                           # the creation time
string robot_name                       # the name of the robot (used in preconditions and topics)
geometry_msgs/PoseWithCovariance pose   # the robots current pose within the frame related to the msgs header
#RoutePrecondition sync                  # the current position in the last received plan (-1 means none)
int32 current_route_segment      	# the segment nr of the route executed by the given robot
############### shape type of robot ###################################
int32 shape                             # the shape of the robots (see enums)
float32[] shape_variables               # shape variables to define width height, ...

int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars
############### type of robot ###################################
int32   handler_type                    # the type of Handling module

int32 HANDLERTYPE_NA = 0                # undefined Handling module
int32 HANDLERTYPE_ROLLER = 1            # roller type of  Handling module
int32 HANDLERTYPE_ARM = 2            	# robot_arm of  Handling module
int32 HANDLERTYPE_PNP = 3            	# pick_place of  Handling module
############### type of target align ############################
#int32   align_type                      # the type of target align
#string  align_id                        # the id of target align (position-align management db)

#int32 ALIGNTYPE_NA = 0                  # undefined type of target align
#int32 ALIGNTYPE_DOCKER = 1              # docker type of target align
############### type of target align ############################
string  battery_id 			# the id of battery (battery management db included maintenance)
float32 battery_capacity		# unit: %
int32 battery_chargetime      
int32 battery_servicetime   		# using time caculation (uint: minute)
############### type of mode ####################################
int32   mode                            # the mode of operation

int32 MODE_NA = 0                   	# undefined mode
int32 MODE_IDLE = 1                 	# robot is idle
int32 MODE_SEGMENT_FOLLOWING = 2    	# robot is in mode segment following
int32 MODE_PICKUP = 3               	# robot is picking up goods
############### type of status ####################################
int32   status                          # the status of the robot
string  error_code 			# the error_code of robot (error_code management db included its history)

int32 STATUS_NONE = -1            	# robot is not_ready (stm not ready ...)
int32 STATUS_DRIVING = 0            	# robot is driving
int32 STATUS_STOPPED = 1            	# robot has stopped
int32 STATUS_DONE = 2               	# robot has finished its last job
int32 STATUS_BROKEN = 3             	# robot is broken and not ready for any task

############### order's information ################################
int32   good_id                         # the good id attached to the robot

int32 GOOD_EMPTY = -1               	# no goods attached
int32 GOOD_NA = -2                  	# undefined good
############### order's information ################################
int32   order_id                        # the order id scheduled to this robot (-1: none)
int32   order_status                    # the status of the assigned order

int32 ORDER_NONE = 0                	# no order assigned
int32 ORDER_APPROACH = 1            	# the robot approaches the first station of the order
int32 ORDER_PICKUP = 2              	# the robot picks up a good at the station
int32 ORDER_TRANSPORT = 3          	# the robot currently transports a good from one station to another
int32 ORDER_DROP = 4                	# the robot drops a good at the last station of its order, finishing the order
int32 ORDER_FINSIH = 5              	# the robot drops a good at the last station of its order, finishing the order





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



(provide :robot_control_msgs/hyc_RobotInfo "acf6224ebc0054473268910daf81c8c4")


