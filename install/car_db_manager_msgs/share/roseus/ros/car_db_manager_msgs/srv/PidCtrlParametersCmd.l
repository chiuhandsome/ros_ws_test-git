;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::PidCtrlParametersCmd)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'PidCtrlParametersCmd (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::PIDCTRLPARAMETERSCMD")
  (make-package "CAR_DB_MANAGER_MSGS::PIDCTRLPARAMETERSCMD"))
(unless (find-package "CAR_DB_MANAGER_MSGS::PIDCTRLPARAMETERSCMDREQUEST")
  (make-package "CAR_DB_MANAGER_MSGS::PIDCTRLPARAMETERSCMDREQUEST"))
(unless (find-package "CAR_DB_MANAGER_MSGS::PIDCTRLPARAMETERSCMDRESPONSE")
  (make-package "CAR_DB_MANAGER_MSGS::PIDCTRLPARAMETERSCMDRESPONSE"))

(in-package "ROS")





(defclass car_db_manager_msgs::PidCtrlParametersCmdRequest
  :super ros::object
  :slots (_cmd_id _query_base_index _query_opt_index _query_parameter _req_pid_ctrl_parameters ))

(defmethod car_db_manager_msgs::PidCtrlParametersCmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:query_base_index __query_base_index) "")
    ((:query_opt_index __query_opt_index) "")
    ((:query_parameter __query_parameter) "")
    ((:req_pid_ctrl_parameters __req_pid_ctrl_parameters) (instance car_db_manager_msgs::PidCtrlParameters :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _query_base_index (string __query_base_index))
   (setq _query_opt_index (string __query_opt_index))
   (setq _query_parameter (string __query_parameter))
   (setq _req_pid_ctrl_parameters __req_pid_ctrl_parameters)
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
  (:req_pid_ctrl_parameters
   (&rest __req_pid_ctrl_parameters)
   (if (keywordp (car __req_pid_ctrl_parameters))
       (send* _req_pid_ctrl_parameters __req_pid_ctrl_parameters)
     (progn
       (if __req_pid_ctrl_parameters (setq _req_pid_ctrl_parameters (car __req_pid_ctrl_parameters)))
       _req_pid_ctrl_parameters)))
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
    ;; car_db_manager_msgs/PidCtrlParameters _req_pid_ctrl_parameters
    (send _req_pid_ctrl_parameters :serialization-length)
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
     ;; car_db_manager_msgs/PidCtrlParameters _req_pid_ctrl_parameters
       (send _req_pid_ctrl_parameters :serialize s)
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
   ;; car_db_manager_msgs/PidCtrlParameters _req_pid_ctrl_parameters
     (send _req_pid_ctrl_parameters :deserialize buf ptr-) (incf ptr- (send _req_pid_ctrl_parameters :serialization-length))
   ;;
   self)
  )

(defclass car_db_manager_msgs::PidCtrlParametersCmdResponse
  :super ros::object
  :slots (_result _error_code _primary_id _update_time _result_pid_ctrl_parameters ))

(defmethod car_db_manager_msgs::PidCtrlParametersCmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:primary_id __primary_id) "")
    ((:update_time __update_time) "")
    ((:result_pid_ctrl_parameters __result_pid_ctrl_parameters) (let (r) (dotimes (i 0) (push (instance car_db_manager_msgs::PidCtrlParameters :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _primary_id (string __primary_id))
   (setq _update_time (string __update_time))
   (setq _result_pid_ctrl_parameters __result_pid_ctrl_parameters)
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
  (:result_pid_ctrl_parameters
   (&rest __result_pid_ctrl_parameters)
   (if (keywordp (car __result_pid_ctrl_parameters))
       (send* _result_pid_ctrl_parameters __result_pid_ctrl_parameters)
     (progn
       (if __result_pid_ctrl_parameters (setq _result_pid_ctrl_parameters (car __result_pid_ctrl_parameters)))
       _result_pid_ctrl_parameters)))
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
    ;; car_db_manager_msgs/PidCtrlParameters[] _result_pid_ctrl_parameters
    (apply #'+ (send-all _result_pid_ctrl_parameters :serialization-length)) 4
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
     ;; car_db_manager_msgs/PidCtrlParameters[] _result_pid_ctrl_parameters
     (write-long (length _result_pid_ctrl_parameters) s)
     (dolist (elem _result_pid_ctrl_parameters)
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
   ;; car_db_manager_msgs/PidCtrlParameters[] _result_pid_ctrl_parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_pid_ctrl_parameters (let (r) (dotimes (i n) (push (instance car_db_manager_msgs::PidCtrlParameters :init) r)) r))
     (dolist (elem- _result_pid_ctrl_parameters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass car_db_manager_msgs::PidCtrlParametersCmd
  :super ros::object
  :slots ())

(setf (get car_db_manager_msgs::PidCtrlParametersCmd :md5sum-) "81bd87df05634fe4433d7ebd295a230b")
(setf (get car_db_manager_msgs::PidCtrlParametersCmd :datatype-) "car_db_manager_msgs/PidCtrlParametersCmd")
(setf (get car_db_manager_msgs::PidCtrlParametersCmd :request) car_db_manager_msgs::PidCtrlParametersCmdRequest)
(setf (get car_db_manager_msgs::PidCtrlParametersCmd :response) car_db_manager_msgs::PidCtrlParametersCmdResponse)

(defmethod car_db_manager_msgs::PidCtrlParametersCmdRequest
  (:response () (instance car_db_manager_msgs::PidCtrlParametersCmdResponse :init)))

(setf (get car_db_manager_msgs::PidCtrlParametersCmdRequest :md5sum-) "81bd87df05634fe4433d7ebd295a230b")
(setf (get car_db_manager_msgs::PidCtrlParametersCmdRequest :datatype-) "car_db_manager_msgs/PidCtrlParametersCmdRequest")
(setf (get car_db_manager_msgs::PidCtrlParametersCmdRequest :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
PidCtrlParameters req_pid_ctrl_parameters

================================================================================
MSG: car_db_manager_msgs/PidCtrlParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
string base_name
float32 target		   
float32 tolerance	
float32 min_bound	
float32 max_bound
float64 d_KP	
float64 d_KI	
float64 d_KD
bool b_compensation
string update_time			# must-have 	 

---
bool result
string error_code
string primary_id
string update_time
PidCtrlParameters[] result_pid_ctrl_parameters


================================================================================
MSG: car_db_manager_msgs/PidCtrlParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
string base_name
float32 target		   
float32 tolerance	
float32 min_bound	
float32 max_bound
float64 d_KP	
float64 d_KI	
float64 d_KD
bool b_compensation
string update_time			# must-have 	 

")

(setf (get car_db_manager_msgs::PidCtrlParametersCmdResponse :md5sum-) "81bd87df05634fe4433d7ebd295a230b")
(setf (get car_db_manager_msgs::PidCtrlParametersCmdResponse :datatype-) "car_db_manager_msgs/PidCtrlParametersCmdResponse")
(setf (get car_db_manager_msgs::PidCtrlParametersCmdResponse :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
PidCtrlParameters req_pid_ctrl_parameters

================================================================================
MSG: car_db_manager_msgs/PidCtrlParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
string base_name
float32 target		   
float32 tolerance	
float32 min_bound	
float32 max_bound
float64 d_KP	
float64 d_KI	
float64 d_KD
bool b_compensation
string update_time			# must-have 	 

---
bool result
string error_code
string primary_id
string update_time
PidCtrlParameters[] result_pid_ctrl_parameters


================================================================================
MSG: car_db_manager_msgs/PidCtrlParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
string base_name
float32 target		   
float32 tolerance	
float32 min_bound	
float32 max_bound
float64 d_KP	
float64 d_KI	
float64 d_KD
bool b_compensation
string update_time			# must-have 	 

")



(provide :car_db_manager_msgs/PidCtrlParametersCmd "81bd87df05634fe4433d7ebd295a230b")


