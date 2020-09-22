;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::ActionFunctionParametersCmd)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'ActionFunctionParametersCmd (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::ACTIONFUNCTIONPARAMETERSCMD")
  (make-package "CAR_DB_MANAGER_MSGS::ACTIONFUNCTIONPARAMETERSCMD"))
(unless (find-package "CAR_DB_MANAGER_MSGS::ACTIONFUNCTIONPARAMETERSCMDREQUEST")
  (make-package "CAR_DB_MANAGER_MSGS::ACTIONFUNCTIONPARAMETERSCMDREQUEST"))
(unless (find-package "CAR_DB_MANAGER_MSGS::ACTIONFUNCTIONPARAMETERSCMDRESPONSE")
  (make-package "CAR_DB_MANAGER_MSGS::ACTIONFUNCTIONPARAMETERSCMDRESPONSE"))

(in-package "ROS")





(defclass car_db_manager_msgs::ActionFunctionParametersCmdRequest
  :super ros::object
  :slots (_cmd_id _query_base_index _query_opt_index _query_parameter _req_action_function_parameters ))

(defmethod car_db_manager_msgs::ActionFunctionParametersCmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:query_base_index __query_base_index) "")
    ((:query_opt_index __query_opt_index) "")
    ((:query_parameter __query_parameter) "")
    ((:req_action_function_parameters __req_action_function_parameters) (instance car_db_manager_msgs::ActionFunctionParameters :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _query_base_index (string __query_base_index))
   (setq _query_opt_index (string __query_opt_index))
   (setq _query_parameter (string __query_parameter))
   (setq _req_action_function_parameters __req_action_function_parameters)
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
  (:req_action_function_parameters
   (&rest __req_action_function_parameters)
   (if (keywordp (car __req_action_function_parameters))
       (send* _req_action_function_parameters __req_action_function_parameters)
     (progn
       (if __req_action_function_parameters (setq _req_action_function_parameters (car __req_action_function_parameters)))
       _req_action_function_parameters)))
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
    ;; car_db_manager_msgs/ActionFunctionParameters _req_action_function_parameters
    (send _req_action_function_parameters :serialization-length)
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
     ;; car_db_manager_msgs/ActionFunctionParameters _req_action_function_parameters
       (send _req_action_function_parameters :serialize s)
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
   ;; car_db_manager_msgs/ActionFunctionParameters _req_action_function_parameters
     (send _req_action_function_parameters :deserialize buf ptr-) (incf ptr- (send _req_action_function_parameters :serialization-length))
   ;;
   self)
  )

(defclass car_db_manager_msgs::ActionFunctionParametersCmdResponse
  :super ros::object
  :slots (_result _error_code _primary_id _update_time _result_action_function_parameters ))

(defmethod car_db_manager_msgs::ActionFunctionParametersCmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:primary_id __primary_id) "")
    ((:update_time __update_time) "")
    ((:result_action_function_parameters __result_action_function_parameters) (let (r) (dotimes (i 0) (push (instance car_db_manager_msgs::ActionFunctionParameters :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _primary_id (string __primary_id))
   (setq _update_time (string __update_time))
   (setq _result_action_function_parameters __result_action_function_parameters)
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
  (:result_action_function_parameters
   (&rest __result_action_function_parameters)
   (if (keywordp (car __result_action_function_parameters))
       (send* _result_action_function_parameters __result_action_function_parameters)
     (progn
       (if __result_action_function_parameters (setq _result_action_function_parameters (car __result_action_function_parameters)))
       _result_action_function_parameters)))
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
    ;; car_db_manager_msgs/ActionFunctionParameters[] _result_action_function_parameters
    (apply #'+ (send-all _result_action_function_parameters :serialization-length)) 4
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
     ;; car_db_manager_msgs/ActionFunctionParameters[] _result_action_function_parameters
     (write-long (length _result_action_function_parameters) s)
     (dolist (elem _result_action_function_parameters)
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
   ;; car_db_manager_msgs/ActionFunctionParameters[] _result_action_function_parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_action_function_parameters (let (r) (dotimes (i n) (push (instance car_db_manager_msgs::ActionFunctionParameters :init) r)) r))
     (dolist (elem- _result_action_function_parameters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass car_db_manager_msgs::ActionFunctionParametersCmd
  :super ros::object
  :slots ())

(setf (get car_db_manager_msgs::ActionFunctionParametersCmd :md5sum-) "40758ef382c3bd8e349f4065a85c9214")
(setf (get car_db_manager_msgs::ActionFunctionParametersCmd :datatype-) "car_db_manager_msgs/ActionFunctionParametersCmd")
(setf (get car_db_manager_msgs::ActionFunctionParametersCmd :request) car_db_manager_msgs::ActionFunctionParametersCmdRequest)
(setf (get car_db_manager_msgs::ActionFunctionParametersCmd :response) car_db_manager_msgs::ActionFunctionParametersCmdResponse)

(defmethod car_db_manager_msgs::ActionFunctionParametersCmdRequest
  (:response () (instance car_db_manager_msgs::ActionFunctionParametersCmdResponse :init)))

(setf (get car_db_manager_msgs::ActionFunctionParametersCmdRequest :md5sum-) "40758ef382c3bd8e349f4065a85c9214")
(setf (get car_db_manager_msgs::ActionFunctionParametersCmdRequest :datatype-) "car_db_manager_msgs/ActionFunctionParametersCmdRequest")
(setf (get car_db_manager_msgs::ActionFunctionParametersCmdRequest :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
ActionFunctionParameters req_action_function_parameters

================================================================================
MSG: car_db_manager_msgs/ActionFunctionParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
uint8 function_level	
string function_ac_name
string function_desc_eng
string function_desc_tc
string function_desc_sc
string update_time			# must-have 	  	

---
bool result
string error_code
string primary_id
string update_time
ActionFunctionParameters[] result_action_function_parameters


================================================================================
MSG: car_db_manager_msgs/ActionFunctionParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
uint8 function_level	
string function_ac_name
string function_desc_eng
string function_desc_tc
string function_desc_sc
string update_time			# must-have 	  	

")

(setf (get car_db_manager_msgs::ActionFunctionParametersCmdResponse :md5sum-) "40758ef382c3bd8e349f4065a85c9214")
(setf (get car_db_manager_msgs::ActionFunctionParametersCmdResponse :datatype-) "car_db_manager_msgs/ActionFunctionParametersCmdResponse")
(setf (get car_db_manager_msgs::ActionFunctionParametersCmdResponse :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
ActionFunctionParameters req_action_function_parameters

================================================================================
MSG: car_db_manager_msgs/ActionFunctionParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
uint8 function_level	
string function_ac_name
string function_desc_eng
string function_desc_tc
string function_desc_sc
string update_time			# must-have 	  	

---
bool result
string error_code
string primary_id
string update_time
ActionFunctionParameters[] result_action_function_parameters


================================================================================
MSG: car_db_manager_msgs/ActionFunctionParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
uint8 function_level	
string function_ac_name
string function_desc_eng
string function_desc_tc
string function_desc_sc
string update_time			# must-have 	  	

")



(provide :car_db_manager_msgs/ActionFunctionParametersCmd "40758ef382c3bd8e349f4065a85c9214")

