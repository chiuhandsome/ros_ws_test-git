;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_work_stationitems_cmd)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_work_stationitems_cmd (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_STATIONITEMS_CMD")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_STATIONITEMS_CMD"))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_STATIONITEMS_CMDREQUEST")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_STATIONITEMS_CMDREQUEST"))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_STATIONITEMS_CMDRESPONSE")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_STATIONITEMS_CMDRESPONSE"))

(in-package "ROS")





(defclass cellctrl_control_msgs::cell_work_stationitems_cmdRequest
  :super ros::object
  :slots (_cmd_id _query_base_index _query_opt_index _query_parameter _request_data ))

(defmethod cellctrl_control_msgs::cell_work_stationitems_cmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:query_base_index __query_base_index) "")
    ((:query_opt_index __query_opt_index) "")
    ((:query_parameter __query_parameter) "")
    ((:request_data __request_data) (instance cellctrl_control_msgs::cell_work_stationitems :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _query_base_index (string __query_base_index))
   (setq _query_opt_index (string __query_opt_index))
   (setq _query_parameter (string __query_parameter))
   (setq _request_data __request_data)
   self)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:query_base_index
   (&optional __query_base_index)
   (if __query_base_index (setq _query_base_index __query_base_index)) _query_base_index)
  (:query_opt_index
   (&optional __query_opt_index)
   (if __query_opt_index (setq _query_opt_index __query_opt_index)) _query_opt_index)
  (:query_parameter
   (&optional __query_parameter)
   (if __query_parameter (setq _query_parameter __query_parameter)) _query_parameter)
  (:request_data
   (&rest __request_data)
   (if (keywordp (car __request_data))
       (send* _request_data __request_data)
     (progn
       (if __request_data (setq _request_data (car __request_data)))
       _request_data)))
  (:serialization-length
   ()
   (+
    ;; int8 _cmd_id
    1
    ;; string _query_base_index
    4 (length _query_base_index)
    ;; string _query_opt_index
    4 (length _query_opt_index)
    ;; string _query_parameter
    4 (length _query_parameter)
    ;; cellctrl_control_msgs/cell_work_stationitems _request_data
    (send _request_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmd_id
       (write-byte _cmd_id s)
     ;; string _query_base_index
       (write-long (length _query_base_index) s) (princ _query_base_index s)
     ;; string _query_opt_index
       (write-long (length _query_opt_index) s) (princ _query_opt_index s)
     ;; string _query_parameter
       (write-long (length _query_parameter) s) (princ _query_parameter s)
     ;; cellctrl_control_msgs/cell_work_stationitems _request_data
       (send _request_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd_id 127) (setq _cmd_id (- _cmd_id 256)))
   ;; string _query_base_index
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query_base_index (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query_opt_index
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query_opt_index (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query_parameter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query_parameter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; cellctrl_control_msgs/cell_work_stationitems _request_data
     (send _request_data :deserialize buf ptr-) (incf ptr- (send _request_data :serialization-length))
   ;;
   self)
  )

(defclass cellctrl_control_msgs::cell_work_stationitems_cmdResponse
  :super ros::object
  :slots (_result _error_code _primary_id _update_time _response_data ))

(defmethod cellctrl_control_msgs::cell_work_stationitems_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:primary_id __primary_id) "")
    ((:update_time __update_time) "")
    ((:response_data __response_data) (let (r) (dotimes (i 0) (push (instance cellctrl_control_msgs::cell_work_stationitems :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _primary_id (string __primary_id))
   (setq _update_time (string __update_time))
   (setq _response_data __response_data)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:response_data
   (&rest __response_data)
   (if (keywordp (car __response_data))
       (send* _response_data __response_data)
     (progn
       (if __response_data (setq _response_data (car __response_data)))
       _response_data)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _error_code
    4 (length _error_code)
    ;; string _primary_id
    4 (length _primary_id)
    ;; string _update_time
    4 (length _update_time)
    ;; cellctrl_control_msgs/cell_work_stationitems[] _response_data
    (apply #'+ (send-all _response_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _error_code
       (write-long (length _error_code) s) (princ _error_code s)
     ;; string _primary_id
       (write-long (length _primary_id) s) (princ _primary_id s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;; cellctrl_control_msgs/cell_work_stationitems[] _response_data
     (write-long (length _response_data) s)
     (dolist (elem _response_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _primary_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _primary_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; cellctrl_control_msgs/cell_work_stationitems[] _response_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _response_data (let (r) (dotimes (i n) (push (instance cellctrl_control_msgs::cell_work_stationitems :init) r)) r))
     (dolist (elem- _response_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cellctrl_control_msgs::cell_work_stationitems_cmd
  :super ros::object
  :slots ())

(setf (get cellctrl_control_msgs::cell_work_stationitems_cmd :md5sum-) "f5dcc30f8209844bb8fa22dd2079027d")
(setf (get cellctrl_control_msgs::cell_work_stationitems_cmd :datatype-) "cellctrl_control_msgs/cell_work_stationitems_cmd")
(setf (get cellctrl_control_msgs::cell_work_stationitems_cmd :request) cellctrl_control_msgs::cell_work_stationitems_cmdRequest)
(setf (get cellctrl_control_msgs::cell_work_stationitems_cmd :response) cellctrl_control_msgs::cell_work_stationitems_cmdResponse)

(defmethod cellctrl_control_msgs::cell_work_stationitems_cmdRequest
  (:response () (instance cellctrl_control_msgs::cell_work_stationitems_cmdResponse :init)))

(setf (get cellctrl_control_msgs::cell_work_stationitems_cmdRequest :md5sum-) "f5dcc30f8209844bb8fa22dd2079027d")
(setf (get cellctrl_control_msgs::cell_work_stationitems_cmdRequest :datatype-) "cellctrl_control_msgs/cell_work_stationitems_cmdRequest")
(setf (get cellctrl_control_msgs::cell_work_stationitems_cmdRequest :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:query , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
cell_work_stationitems request_data	 

================================================================================
MSG: cellctrl_control_msgs/cell_work_stationitems
string primary_id			# must-have,UUID : primary_key(system_id)
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
---
bool result
string error_code
string primary_id
string update_time
cell_work_stationitems[] response_data


================================================================================
MSG: cellctrl_control_msgs/cell_work_stationitems
string primary_id			# must-have,UUID : primary_key(system_id)
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

(setf (get cellctrl_control_msgs::cell_work_stationitems_cmdResponse :md5sum-) "f5dcc30f8209844bb8fa22dd2079027d")
(setf (get cellctrl_control_msgs::cell_work_stationitems_cmdResponse :datatype-) "cellctrl_control_msgs/cell_work_stationitems_cmdResponse")
(setf (get cellctrl_control_msgs::cell_work_stationitems_cmdResponse :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:query , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
cell_work_stationitems request_data	 

================================================================================
MSG: cellctrl_control_msgs/cell_work_stationitems
string primary_id			# must-have,UUID : primary_key(system_id)
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
---
bool result
string error_code
string primary_id
string update_time
cell_work_stationitems[] response_data


================================================================================
MSG: cellctrl_control_msgs/cell_work_stationitems
string primary_id			# must-have,UUID : primary_key(system_id)
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



(provide :cellctrl_control_msgs/cell_work_stationitems_cmd "f5dcc30f8209844bb8fa22dd2079027d")


