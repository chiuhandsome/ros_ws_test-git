;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_base_device_cmd)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_base_device_cmd (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_BASE_DEVICE_CMD")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_BASE_DEVICE_CMD"))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_BASE_DEVICE_CMDREQUEST")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_BASE_DEVICE_CMDREQUEST"))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_BASE_DEVICE_CMDRESPONSE")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_BASE_DEVICE_CMDRESPONSE"))

(in-package "ROS")





(defclass cellctrl_control_msgs::cell_base_device_cmdRequest
  :super ros::object
  :slots (_cmd_id _query_base_index _query_opt_index _query_parameter _req_base_device ))

(defmethod cellctrl_control_msgs::cell_base_device_cmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:query_base_index __query_base_index) "")
    ((:query_opt_index __query_opt_index) "")
    ((:query_parameter __query_parameter) "")
    ((:req_base_device __req_base_device) (instance cellctrl_control_msgs::cell_base_device :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _query_base_index (string __query_base_index))
   (setq _query_opt_index (string __query_opt_index))
   (setq _query_parameter (string __query_parameter))
   (setq _req_base_device __req_base_device)
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
  (:req_base_device
   (&rest __req_base_device)
   (if (keywordp (car __req_base_device))
       (send* _req_base_device __req_base_device)
     (progn
       (if __req_base_device (setq _req_base_device (car __req_base_device)))
       _req_base_device)))
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
    ;; cellctrl_control_msgs/cell_base_device _req_base_device
    (send _req_base_device :serialization-length)
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
     ;; cellctrl_control_msgs/cell_base_device _req_base_device
       (send _req_base_device :serialize s)
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
   ;; cellctrl_control_msgs/cell_base_device _req_base_device
     (send _req_base_device :deserialize buf ptr-) (incf ptr- (send _req_base_device :serialization-length))
   ;;
   self)
  )

(defclass cellctrl_control_msgs::cell_base_device_cmdResponse
  :super ros::object
  :slots (_result _error_code _primary_id _update_time _result_base_device ))

(defmethod cellctrl_control_msgs::cell_base_device_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:primary_id __primary_id) "")
    ((:update_time __update_time) "")
    ((:result_base_device __result_base_device) (let (r) (dotimes (i 0) (push (instance cellctrl_control_msgs::cell_base_device :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _primary_id (string __primary_id))
   (setq _update_time (string __update_time))
   (setq _result_base_device __result_base_device)
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
  (:result_base_device
   (&rest __result_base_device)
   (if (keywordp (car __result_base_device))
       (send* _result_base_device __result_base_device)
     (progn
       (if __result_base_device (setq _result_base_device (car __result_base_device)))
       _result_base_device)))
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
    ;; cellctrl_control_msgs/cell_base_device[] _result_base_device
    (apply #'+ (send-all _result_base_device :serialization-length)) 4
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
     ;; cellctrl_control_msgs/cell_base_device[] _result_base_device
     (write-long (length _result_base_device) s)
     (dolist (elem _result_base_device)
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
   ;; cellctrl_control_msgs/cell_base_device[] _result_base_device
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_base_device (let (r) (dotimes (i n) (push (instance cellctrl_control_msgs::cell_base_device :init) r)) r))
     (dolist (elem- _result_base_device)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cellctrl_control_msgs::cell_base_device_cmd
  :super ros::object
  :slots ())

(setf (get cellctrl_control_msgs::cell_base_device_cmd :md5sum-) "0224d44992df1fdde3ffbcb803d3f92d")
(setf (get cellctrl_control_msgs::cell_base_device_cmd :datatype-) "cellctrl_control_msgs/cell_base_device_cmd")
(setf (get cellctrl_control_msgs::cell_base_device_cmd :request) cellctrl_control_msgs::cell_base_device_cmdRequest)
(setf (get cellctrl_control_msgs::cell_base_device_cmd :response) cellctrl_control_msgs::cell_base_device_cmdResponse)

(defmethod cellctrl_control_msgs::cell_base_device_cmdRequest
  (:response () (instance cellctrl_control_msgs::cell_base_device_cmdResponse :init)))

(setf (get cellctrl_control_msgs::cell_base_device_cmdRequest :md5sum-) "0224d44992df1fdde3ffbcb803d3f92d")
(setf (get cellctrl_control_msgs::cell_base_device_cmdRequest :datatype-) "cellctrl_control_msgs/cell_base_device_cmdRequest")
(setf (get cellctrl_control_msgs::cell_base_device_cmdRequest :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:query , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
cell_base_device req_base_device	 

================================================================================
MSG: cellctrl_control_msgs/cell_base_device
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX	
string base_name
string factory 		 
string modelno 			   
string base_desc_TC 		 
string base_desc_SC 		 
string base_desc_E 		 
string update_time			# must-have 		 
---
bool result
string error_code
string primary_id
string update_time
cell_base_device[] result_base_device


================================================================================
MSG: cellctrl_control_msgs/cell_base_device
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX	
string base_name
string factory 		 
string modelno 			   
string base_desc_TC 		 
string base_desc_SC 		 
string base_desc_E 		 
string update_time			# must-have 		 
")

(setf (get cellctrl_control_msgs::cell_base_device_cmdResponse :md5sum-) "0224d44992df1fdde3ffbcb803d3f92d")
(setf (get cellctrl_control_msgs::cell_base_device_cmdResponse :datatype-) "cellctrl_control_msgs/cell_base_device_cmdResponse")
(setf (get cellctrl_control_msgs::cell_base_device_cmdResponse :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:query , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
cell_base_device req_base_device	 

================================================================================
MSG: cellctrl_control_msgs/cell_base_device
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX	
string base_name
string factory 		 
string modelno 			   
string base_desc_TC 		 
string base_desc_SC 		 
string base_desc_E 		 
string update_time			# must-have 		 
---
bool result
string error_code
string primary_id
string update_time
cell_base_device[] result_base_device


================================================================================
MSG: cellctrl_control_msgs/cell_base_device
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX	
string base_name
string factory 		 
string modelno 			   
string base_desc_TC 		 
string base_desc_SC 		 
string base_desc_E 		 
string update_time			# must-have 		 
")



(provide :cellctrl_control_msgs/cell_base_device_cmd "0224d44992df1fdde3ffbcb803d3f92d")


