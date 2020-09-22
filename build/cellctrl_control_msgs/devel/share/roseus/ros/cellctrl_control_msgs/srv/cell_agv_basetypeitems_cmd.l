;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_agv_basetypeitems_cmd)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_agv_basetypeitems_cmd (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_BASETYPEITEMS_CMD")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_BASETYPEITEMS_CMD"))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_BASETYPEITEMS_CMDREQUEST")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_BASETYPEITEMS_CMDREQUEST"))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_BASETYPEITEMS_CMDRESPONSE")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_BASETYPEITEMS_CMDRESPONSE"))

(in-package "ROS")





(defclass cellctrl_control_msgs::cell_agv_basetypeitems_cmdRequest
  :super ros::object
  :slots (_cmd_id _query_base_index _query_opt_index _query_parameter _req_cell_agv_basetypeitems ))

(defmethod cellctrl_control_msgs::cell_agv_basetypeitems_cmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:query_base_index __query_base_index) "")
    ((:query_opt_index __query_opt_index) "")
    ((:query_parameter __query_parameter) "")
    ((:req_cell_agv_basetypeitems __req_cell_agv_basetypeitems) (instance cellctrl_control_msgs::cell_agv_basetypeitems :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _query_base_index (string __query_base_index))
   (setq _query_opt_index (string __query_opt_index))
   (setq _query_parameter (string __query_parameter))
   (setq _req_cell_agv_basetypeitems __req_cell_agv_basetypeitems)
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
  (:req_cell_agv_basetypeitems
   (&rest __req_cell_agv_basetypeitems)
   (if (keywordp (car __req_cell_agv_basetypeitems))
       (send* _req_cell_agv_basetypeitems __req_cell_agv_basetypeitems)
     (progn
       (if __req_cell_agv_basetypeitems (setq _req_cell_agv_basetypeitems (car __req_cell_agv_basetypeitems)))
       _req_cell_agv_basetypeitems)))
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
    ;; cellctrl_control_msgs/cell_agv_basetypeitems _req_cell_agv_basetypeitems
    (send _req_cell_agv_basetypeitems :serialization-length)
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
     ;; cellctrl_control_msgs/cell_agv_basetypeitems _req_cell_agv_basetypeitems
       (send _req_cell_agv_basetypeitems :serialize s)
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
   ;; cellctrl_control_msgs/cell_agv_basetypeitems _req_cell_agv_basetypeitems
     (send _req_cell_agv_basetypeitems :deserialize buf ptr-) (incf ptr- (send _req_cell_agv_basetypeitems :serialization-length))
   ;;
   self)
  )

(defclass cellctrl_control_msgs::cell_agv_basetypeitems_cmdResponse
  :super ros::object
  :slots (_result _error_code _primary_id _update_time _result_cell_agv_basetypeitems ))

(defmethod cellctrl_control_msgs::cell_agv_basetypeitems_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:primary_id __primary_id) "")
    ((:update_time __update_time) "")
    ((:result_cell_agv_basetypeitems __result_cell_agv_basetypeitems) (let (r) (dotimes (i 0) (push (instance cellctrl_control_msgs::cell_agv_basetypeitems :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _primary_id (string __primary_id))
   (setq _update_time (string __update_time))
   (setq _result_cell_agv_basetypeitems __result_cell_agv_basetypeitems)
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
  (:result_cell_agv_basetypeitems
   (&rest __result_cell_agv_basetypeitems)
   (if (keywordp (car __result_cell_agv_basetypeitems))
       (send* _result_cell_agv_basetypeitems __result_cell_agv_basetypeitems)
     (progn
       (if __result_cell_agv_basetypeitems (setq _result_cell_agv_basetypeitems (car __result_cell_agv_basetypeitems)))
       _result_cell_agv_basetypeitems)))
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
    ;; cellctrl_control_msgs/cell_agv_basetypeitems[] _result_cell_agv_basetypeitems
    (apply #'+ (send-all _result_cell_agv_basetypeitems :serialization-length)) 4
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
     ;; cellctrl_control_msgs/cell_agv_basetypeitems[] _result_cell_agv_basetypeitems
     (write-long (length _result_cell_agv_basetypeitems) s)
     (dolist (elem _result_cell_agv_basetypeitems)
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
   ;; cellctrl_control_msgs/cell_agv_basetypeitems[] _result_cell_agv_basetypeitems
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_cell_agv_basetypeitems (let (r) (dotimes (i n) (push (instance cellctrl_control_msgs::cell_agv_basetypeitems :init) r)) r))
     (dolist (elem- _result_cell_agv_basetypeitems)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cellctrl_control_msgs::cell_agv_basetypeitems_cmd
  :super ros::object
  :slots ())

(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmd :md5sum-) "6dcff3f20ce20b960e60961bbb3c3d0a")
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmd :datatype-) "cellctrl_control_msgs/cell_agv_basetypeitems_cmd")
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmd :request) cellctrl_control_msgs::cell_agv_basetypeitems_cmdRequest)
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmd :response) cellctrl_control_msgs::cell_agv_basetypeitems_cmdResponse)

(defmethod cellctrl_control_msgs::cell_agv_basetypeitems_cmdRequest
  (:response () (instance cellctrl_control_msgs::cell_agv_basetypeitems_cmdResponse :init)))

(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmdRequest :md5sum-) "6dcff3f20ce20b960e60961bbb3c3d0a")
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmdRequest :datatype-) "cellctrl_control_msgs/cell_agv_basetypeitems_cmdRequest")
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmdRequest :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
cell_agv_basetypeitems req_cell_agv_basetypeitems	 

================================================================================
MSG: cellctrl_control_msgs/cell_agv_basetypeitems
string primary_id 			# must-have,UUID : primary_key(system_id)			
string foreign_key 		       	# foreign-key	
string device_code		   
uint8  device_serno 
string unique_code			# must-have,UNIQUE INDEX		 
string device_tagname 		 
string device_tagdesc_TC 	
string device_tagdesc_SC 
string device_tagdesc_E 	 
string update_time 			# must-have		 
---
bool result
string error_code
string primary_id
string update_time
cell_agv_basetypeitems[] result_cell_agv_basetypeitems


================================================================================
MSG: cellctrl_control_msgs/cell_agv_basetypeitems
string primary_id 			# must-have,UUID : primary_key(system_id)			
string foreign_key 		       	# foreign-key	
string device_code		   
uint8  device_serno 
string unique_code			# must-have,UNIQUE INDEX		 
string device_tagname 		 
string device_tagdesc_TC 	
string device_tagdesc_SC 
string device_tagdesc_E 	 
string update_time 			# must-have		 
")

(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmdResponse :md5sum-) "6dcff3f20ce20b960e60961bbb3c3d0a")
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmdResponse :datatype-) "cellctrl_control_msgs/cell_agv_basetypeitems_cmdResponse")
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems_cmdResponse :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
cell_agv_basetypeitems req_cell_agv_basetypeitems	 

================================================================================
MSG: cellctrl_control_msgs/cell_agv_basetypeitems
string primary_id 			# must-have,UUID : primary_key(system_id)			
string foreign_key 		       	# foreign-key	
string device_code		   
uint8  device_serno 
string unique_code			# must-have,UNIQUE INDEX		 
string device_tagname 		 
string device_tagdesc_TC 	
string device_tagdesc_SC 
string device_tagdesc_E 	 
string update_time 			# must-have		 
---
bool result
string error_code
string primary_id
string update_time
cell_agv_basetypeitems[] result_cell_agv_basetypeitems


================================================================================
MSG: cellctrl_control_msgs/cell_agv_basetypeitems
string primary_id 			# must-have,UUID : primary_key(system_id)			
string foreign_key 		       	# foreign-key	
string device_code		   
uint8  device_serno 
string unique_code			# must-have,UNIQUE INDEX		 
string device_tagname 		 
string device_tagdesc_TC 	
string device_tagdesc_SC 
string device_tagdesc_E 	 
string update_time 			# must-have		 
")



(provide :cellctrl_control_msgs/cell_agv_basetypeitems_cmd "6dcff3f20ce20b960e60961bbb3c3d0a")


