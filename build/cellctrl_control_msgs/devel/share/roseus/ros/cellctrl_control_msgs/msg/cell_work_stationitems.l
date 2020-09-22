;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_work_stationitems)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_work_stationitems (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_STATIONITEMS")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_STATIONITEMS"))

(in-package "ROS")
;;//! \htmlinclude cell_work_stationitems.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cellctrl_control_msgs::cell_work_stationitems
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _station_name _station_ser _cellcontroller_code _positioned_pose _mc_func_code _transfer_code _transfer_state _align_type _align_metadata _pre_positioned_pose _Identify_id _update_time ))

(defmethod cellctrl_control_msgs::cell_work_stationitems
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:station_name __station_name) "")
    ((:station_ser __station_ser) 0)
    ((:cellcontroller_code __cellcontroller_code) "")
    ((:positioned_pose __positioned_pose) (instance geometry_msgs::Pose :init))
    ((:mc_func_code __mc_func_code) 0)
    ((:transfer_code __transfer_code) 0)
    ((:transfer_state __transfer_state) 0)
    ((:align_type __align_type) 0)
    ((:align_metadata __align_metadata) "")
    ((:pre_positioned_pose __pre_positioned_pose) (instance geometry_msgs::Pose :init))
    ((:Identify_id __Identify_id) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _station_name (string __station_name))
   (setq _station_ser (round __station_ser))
   (setq _cellcontroller_code (string __cellcontroller_code))
   (setq _positioned_pose __positioned_pose)
   (setq _mc_func_code (round __mc_func_code))
   (setq _transfer_code (round __transfer_code))
   (setq _transfer_state (round __transfer_state))
   (setq _align_type (round __align_type))
   (setq _align_metadata (string __align_metadata))
   (setq _pre_positioned_pose __pre_positioned_pose)
   (setq _Identify_id (string __Identify_id))
   (setq _update_time (string __update_time))
   self)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:foreign_key
   (&optional __foreign_key)
   (if __foreign_key (setq _foreign_key __foreign_key)) _foreign_key)
  (:unique_code
   (&optional __unique_code)
   (if __unique_code (setq _unique_code __unique_code)) _unique_code)
  (:station_name
   (&optional __station_name)
   (if __station_name (setq _station_name __station_name)) _station_name)
  (:station_ser
   (&optional __station_ser)
   (if __station_ser (setq _station_ser __station_ser)) _station_ser)
  (:cellcontroller_code
   (&optional __cellcontroller_code)
   (if __cellcontroller_code (setq _cellcontroller_code __cellcontroller_code)) _cellcontroller_code)
  (:positioned_pose
   (&rest __positioned_pose)
   (if (keywordp (car __positioned_pose))
       (send* _positioned_pose __positioned_pose)
     (progn
       (if __positioned_pose (setq _positioned_pose (car __positioned_pose)))
       _positioned_pose)))
  (:mc_func_code
   (&optional __mc_func_code)
   (if __mc_func_code (setq _mc_func_code __mc_func_code)) _mc_func_code)
  (:transfer_code
   (&optional __transfer_code)
   (if __transfer_code (setq _transfer_code __transfer_code)) _transfer_code)
  (:transfer_state
   (&optional __transfer_state)
   (if __transfer_state (setq _transfer_state __transfer_state)) _transfer_state)
  (:align_type
   (&optional __align_type)
   (if __align_type (setq _align_type __align_type)) _align_type)
  (:align_metadata
   (&optional __align_metadata)
   (if __align_metadata (setq _align_metadata __align_metadata)) _align_metadata)
  (:pre_positioned_pose
   (&rest __pre_positioned_pose)
   (if (keywordp (car __pre_positioned_pose))
       (send* _pre_positioned_pose __pre_positioned_pose)
     (progn
       (if __pre_positioned_pose (setq _pre_positioned_pose (car __pre_positioned_pose)))
       _pre_positioned_pose)))
  (:Identify_id
   (&optional __Identify_id)
   (if __Identify_id (setq _Identify_id __Identify_id)) _Identify_id)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:serialization-length
   ()
   (+
    ;; string _primary_id
    4 (length _primary_id)
    ;; string _foreign_key
    4 (length _foreign_key)
    ;; string _unique_code
    4 (length _unique_code)
    ;; string _station_name
    4 (length _station_name)
    ;; uint8 _station_ser
    1
    ;; string _cellcontroller_code
    4 (length _cellcontroller_code)
    ;; geometry_msgs/Pose _positioned_pose
    (send _positioned_pose :serialization-length)
    ;; uint8 _mc_func_code
    1
    ;; uint8 _transfer_code
    1
    ;; uint8 _transfer_state
    1
    ;; uint8 _align_type
    1
    ;; string _align_metadata
    4 (length _align_metadata)
    ;; geometry_msgs/Pose _pre_positioned_pose
    (send _pre_positioned_pose :serialization-length)
    ;; string _Identify_id
    4 (length _Identify_id)
    ;; string _update_time
    4 (length _update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _primary_id
       (write-long (length _primary_id) s) (princ _primary_id s)
     ;; string _foreign_key
       (write-long (length _foreign_key) s) (princ _foreign_key s)
     ;; string _unique_code
       (write-long (length _unique_code) s) (princ _unique_code s)
     ;; string _station_name
       (write-long (length _station_name) s) (princ _station_name s)
     ;; uint8 _station_ser
       (write-byte _station_ser s)
     ;; string _cellcontroller_code
       (write-long (length _cellcontroller_code) s) (princ _cellcontroller_code s)
     ;; geometry_msgs/Pose _positioned_pose
       (send _positioned_pose :serialize s)
     ;; uint8 _mc_func_code
       (write-byte _mc_func_code s)
     ;; uint8 _transfer_code
       (write-byte _transfer_code s)
     ;; uint8 _transfer_state
       (write-byte _transfer_state s)
     ;; uint8 _align_type
       (write-byte _align_type s)
     ;; string _align_metadata
       (write-long (length _align_metadata) s) (princ _align_metadata s)
     ;; geometry_msgs/Pose _pre_positioned_pose
       (send _pre_positioned_pose :serialize s)
     ;; string _Identify_id
       (write-long (length _Identify_id) s) (princ _Identify_id s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _primary_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _primary_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _foreign_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _foreign_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _unique_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unique_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _station_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _station_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _station_ser
     (setq _station_ser (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _cellcontroller_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cellcontroller_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _positioned_pose
     (send _positioned_pose :deserialize buf ptr-) (incf ptr- (send _positioned_pose :serialization-length))
   ;; uint8 _mc_func_code
     (setq _mc_func_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _transfer_code
     (setq _transfer_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _transfer_state
     (setq _transfer_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _align_type
     (setq _align_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _align_metadata
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _align_metadata (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pre_positioned_pose
     (send _pre_positioned_pose :deserialize buf ptr-) (incf ptr- (send _pre_positioned_pose :serialization-length))
   ;; string _Identify_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Identify_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_work_stationitems :md5sum-) "4fa12b8714fb4a13b138a13c3f297691")
(setf (get cellctrl_control_msgs::cell_work_stationitems :datatype-) "cellctrl_control_msgs/cell_work_stationitems")
(setf (get cellctrl_control_msgs::cell_work_stationitems :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string station_name		   
uint8  station_ser
string cellcontroller_code 		 
geometry_msgs/Pose positioned_pose 		 
uint8  mc_func_code 	
uint8  transfer_code 	
uint8  transfer_state 
uint8  align_type
string align_metadata
geometry_msgs/Pose pre_positioned_pose
string Identify_id
string update_time			# must-have 	 

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



(provide :cellctrl_control_msgs/cell_work_stationitems "4fa12b8714fb4a13b138a13c3f297691")


