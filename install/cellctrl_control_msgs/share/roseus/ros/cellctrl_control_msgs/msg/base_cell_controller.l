;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::base_cell_controller)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'base_cell_controller (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::BASE_CELL_CONTROLLER")
  (make-package "CELLCTRL_CONTROL_MSGS::BASE_CELL_CONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude base_cell_controller.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cellctrl_control_msgs::base_cell_controller
  :super ros::object
  :slots (_primary_id _unique_code _base_name _base_desc_TC _base_desc_SC _base_desc_E _map_filename _map_resolution _map_width _map_height _map_origin _update_time ))

(defmethod cellctrl_control_msgs::base_cell_controller
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:base_desc_TC __base_desc_TC) "")
    ((:base_desc_SC __base_desc_SC) "")
    ((:base_desc_E __base_desc_E) "")
    ((:map_filename __map_filename) "")
    ((:map_resolution __map_resolution) 0.0)
    ((:map_width __map_width) 0)
    ((:map_height __map_height) 0)
    ((:map_origin __map_origin) (instance geometry_msgs::Pose :init))
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _base_desc_TC (string __base_desc_TC))
   (setq _base_desc_SC (string __base_desc_SC))
   (setq _base_desc_E (string __base_desc_E))
   (setq _map_filename (string __map_filename))
   (setq _map_resolution (float __map_resolution))
   (setq _map_width (round __map_width))
   (setq _map_height (round __map_height))
   (setq _map_origin __map_origin)
   (setq _update_time (string __update_time))
   self)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:unique_code
   (&optional __unique_code)
   (if __unique_code (setq _unique_code __unique_code)) _unique_code)
  (:base_name
   (&optional __base_name)
   (if __base_name (setq _base_name __base_name)) _base_name)
  (:base_desc_TC
   (&optional __base_desc_TC)
   (if __base_desc_TC (setq _base_desc_TC __base_desc_TC)) _base_desc_TC)
  (:base_desc_SC
   (&optional __base_desc_SC)
   (if __base_desc_SC (setq _base_desc_SC __base_desc_SC)) _base_desc_SC)
  (:base_desc_E
   (&optional __base_desc_E)
   (if __base_desc_E (setq _base_desc_E __base_desc_E)) _base_desc_E)
  (:map_filename
   (&optional __map_filename)
   (if __map_filename (setq _map_filename __map_filename)) _map_filename)
  (:map_resolution
   (&optional __map_resolution)
   (if __map_resolution (setq _map_resolution __map_resolution)) _map_resolution)
  (:map_width
   (&optional __map_width)
   (if __map_width (setq _map_width __map_width)) _map_width)
  (:map_height
   (&optional __map_height)
   (if __map_height (setq _map_height __map_height)) _map_height)
  (:map_origin
   (&rest __map_origin)
   (if (keywordp (car __map_origin))
       (send* _map_origin __map_origin)
     (progn
       (if __map_origin (setq _map_origin (car __map_origin)))
       _map_origin)))
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:serialization-length
   ()
   (+
    ;; string _primary_id
    4 (length _primary_id)
    ;; string _unique_code
    4 (length _unique_code)
    ;; string _base_name
    4 (length _base_name)
    ;; string _base_desc_TC
    4 (length _base_desc_TC)
    ;; string _base_desc_SC
    4 (length _base_desc_SC)
    ;; string _base_desc_E
    4 (length _base_desc_E)
    ;; string _map_filename
    4 (length _map_filename)
    ;; float32 _map_resolution
    4
    ;; uint32 _map_width
    4
    ;; uint32 _map_height
    4
    ;; geometry_msgs/Pose _map_origin
    (send _map_origin :serialization-length)
    ;; string _update_time
    4 (length _update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _primary_id
       (write-long (length _primary_id) s) (princ _primary_id s)
     ;; string _unique_code
       (write-long (length _unique_code) s) (princ _unique_code s)
     ;; string _base_name
       (write-long (length _base_name) s) (princ _base_name s)
     ;; string _base_desc_TC
       (write-long (length _base_desc_TC) s) (princ _base_desc_TC s)
     ;; string _base_desc_SC
       (write-long (length _base_desc_SC) s) (princ _base_desc_SC s)
     ;; string _base_desc_E
       (write-long (length _base_desc_E) s) (princ _base_desc_E s)
     ;; string _map_filename
       (write-long (length _map_filename) s) (princ _map_filename s)
     ;; float32 _map_resolution
       (sys::poke _map_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _map_width
       (write-long _map_width s)
     ;; uint32 _map_height
       (write-long _map_height s)
     ;; geometry_msgs/Pose _map_origin
       (send _map_origin :serialize s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _primary_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _primary_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _unique_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unique_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_desc_TC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_desc_TC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_desc_SC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_desc_SC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_desc_E
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_desc_E (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _map_resolution
     (setq _map_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _map_width
     (setq _map_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _map_height
     (setq _map_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _map_origin
     (send _map_origin :deserialize buf ptr-) (incf ptr- (send _map_origin :serialization-length))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::base_cell_controller :md5sum-) "c1c018323d24ed001e8bac4437bffe2e")
(setf (get cellctrl_control_msgs::base_cell_controller :datatype-) "cellctrl_control_msgs/base_cell_controller")
(setf (get cellctrl_control_msgs::base_cell_controller :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX	
string base_name		   
string base_desc_TC 		 
string base_desc_SC 		 
string base_desc_E 
string map_filename 
float32 map_resolution	
uint32 map_width
uint32 map_height
geometry_msgs/Pose map_origin	 
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



(provide :cellctrl_control_msgs/base_cell_controller "c1c018323d24ed001e8bac4437bffe2e")


