;; Auto-generated. Do not edit!


(when (boundp 'robot_control_msgs::robot_ctrl_alarmCode_cmd)
  (if (not (find-package "ROBOT_CONTROL_MSGS"))
    (make-package "ROBOT_CONTROL_MSGS"))
  (shadow 'robot_ctrl_alarmCode_cmd (find-package "ROBOT_CONTROL_MSGS")))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMCODE_CMD")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMCODE_CMD"))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMCODE_CMDREQUEST")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMCODE_CMDREQUEST"))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMCODE_CMDRESPONSE")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMCODE_CMDRESPONSE"))

(in-package "ROS")





(defclass robot_control_msgs::robot_ctrl_alarmCode_cmdRequest
  :super ros::object
  :slots (_cmd_id _index_name _parameter _rec_alarmCode ))

(defmethod robot_control_msgs::robot_ctrl_alarmCode_cmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:index_name __index_name) "")
    ((:parameter __parameter) "")
    ((:rec_alarmCode __rec_alarmCode) (instance robot_control_msgs::robot_ctrl_alarmCode :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _index_name (string __index_name))
   (setq _parameter (string __parameter))
   (setq _rec_alarmCode __rec_alarmCode)
   self)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:index_name
   (&optional __index_name)
   (if __index_name (setq _index_name __index_name)) _index_name)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:rec_alarmCode
   (&rest __rec_alarmCode)
   (if (keywordp (car __rec_alarmCode))
       (send* _rec_alarmCode __rec_alarmCode)
     (progn
       (if __rec_alarmCode (setq _rec_alarmCode (car __rec_alarmCode)))
       _rec_alarmCode)))
  (:serialization-length
   ()
   (+
    ;; int8 _cmd_id
    1
    ;; string _index_name
    4 (length _index_name)
    ;; string _parameter
    4 (length _parameter)
    ;; robot_control_msgs/robot_ctrl_alarmCode _rec_alarmCode
    (send _rec_alarmCode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmd_id
       (write-byte _cmd_id s)
     ;; string _index_name
       (write-long (length _index_name) s) (princ _index_name s)
     ;; string _parameter
       (write-long (length _parameter) s) (princ _parameter s)
     ;; robot_control_msgs/robot_ctrl_alarmCode _rec_alarmCode
       (send _rec_alarmCode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd_id 127) (setq _cmd_id (- _cmd_id 256)))
   ;; string _index_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _index_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parameter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robot_control_msgs/robot_ctrl_alarmCode _rec_alarmCode
     (send _rec_alarmCode :deserialize buf ptr-) (incf ptr- (send _rec_alarmCode :serialization-length))
   ;;
   self)
  )

(defclass robot_control_msgs::robot_ctrl_alarmCode_cmdResponse
  :super ros::object
  :slots (_result _error_code _result_alarmCodes ))

(defmethod robot_control_msgs::robot_ctrl_alarmCode_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:result_alarmCodes __result_alarmCodes) (let (r) (dotimes (i 0) (push (instance robot_control_msgs::robot_ctrl_alarmCode :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _result_alarmCodes __result_alarmCodes)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:result_alarmCodes
   (&rest __result_alarmCodes)
   (if (keywordp (car __result_alarmCodes))
       (send* _result_alarmCodes __result_alarmCodes)
     (progn
       (if __result_alarmCodes (setq _result_alarmCodes (car __result_alarmCodes)))
       _result_alarmCodes)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _error_code
    4 (length _error_code)
    ;; robot_control_msgs/robot_ctrl_alarmCode[] _result_alarmCodes
    (apply #'+ (send-all _result_alarmCodes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _error_code
       (write-long (length _error_code) s) (princ _error_code s)
     ;; robot_control_msgs/robot_ctrl_alarmCode[] _result_alarmCodes
     (write-long (length _result_alarmCodes) s)
     (dolist (elem _result_alarmCodes)
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
   ;; robot_control_msgs/robot_ctrl_alarmCode[] _result_alarmCodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_alarmCodes (let (r) (dotimes (i n) (push (instance robot_control_msgs::robot_ctrl_alarmCode :init) r)) r))
     (dolist (elem- _result_alarmCodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robot_control_msgs::robot_ctrl_alarmCode_cmd
  :super ros::object
  :slots ())

(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmd :md5sum-) "e8befc5050638e2b9a4048a2ea5cd223")
(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmd :datatype-) "robot_control_msgs/robot_ctrl_alarmCode_cmd")
(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmd :request) robot_control_msgs::robot_ctrl_alarmCode_cmdRequest)
(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmd :response) robot_control_msgs::robot_ctrl_alarmCode_cmdResponse)

(defmethod robot_control_msgs::robot_ctrl_alarmCode_cmdRequest
  (:response () (instance robot_control_msgs::robot_ctrl_alarmCode_cmdResponse :init)))

(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmdRequest :md5sum-) "e8befc5050638e2b9a4048a2ea5cd223")
(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmdRequest :datatype-) "robot_control_msgs/robot_ctrl_alarmCode_cmdRequest")
(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmdRequest :definition-)
      "int8 cmd_id         # 1:Add , 2:modify 3:delete 4:requery	 		
string index_name 	
string parameter 
robot_ctrl_alarmCode rec_alarmCode	 

================================================================================
MSG: robot_control_msgs/robot_ctrl_alarmCode
string system_id 			
string alarm_id 		# module_no(3) + module alarm code(3)	
string alarm_code 		# same as alarm_id,preper for special requirement
string alarm_level 		# level of ararm: 1:alart 2:alarm	
string alarm_Desc_E 		# English description of alarm	
string alarm_Desc_TC 		# Traditional chinese description of alarm	
string alarm_Desc_SC 		# Sample chinese description of alarm
string alarm_version 		# version of alarm
string update_time 		# version time of alarm
---
bool result
string error_code
robot_ctrl_alarmCode[] result_alarmCodes


================================================================================
MSG: robot_control_msgs/robot_ctrl_alarmCode
string system_id 			
string alarm_id 		# module_no(3) + module alarm code(3)	
string alarm_code 		# same as alarm_id,preper for special requirement
string alarm_level 		# level of ararm: 1:alart 2:alarm	
string alarm_Desc_E 		# English description of alarm	
string alarm_Desc_TC 		# Traditional chinese description of alarm	
string alarm_Desc_SC 		# Sample chinese description of alarm
string alarm_version 		# version of alarm
string update_time 		# version time of alarm
")

(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmdResponse :md5sum-) "e8befc5050638e2b9a4048a2ea5cd223")
(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmdResponse :datatype-) "robot_control_msgs/robot_ctrl_alarmCode_cmdResponse")
(setf (get robot_control_msgs::robot_ctrl_alarmCode_cmdResponse :definition-)
      "int8 cmd_id         # 1:Add , 2:modify 3:delete 4:requery	 		
string index_name 	
string parameter 
robot_ctrl_alarmCode rec_alarmCode	 

================================================================================
MSG: robot_control_msgs/robot_ctrl_alarmCode
string system_id 			
string alarm_id 		# module_no(3) + module alarm code(3)	
string alarm_code 		# same as alarm_id,preper for special requirement
string alarm_level 		# level of ararm: 1:alart 2:alarm	
string alarm_Desc_E 		# English description of alarm	
string alarm_Desc_TC 		# Traditional chinese description of alarm	
string alarm_Desc_SC 		# Sample chinese description of alarm
string alarm_version 		# version of alarm
string update_time 		# version time of alarm
---
bool result
string error_code
robot_ctrl_alarmCode[] result_alarmCodes


================================================================================
MSG: robot_control_msgs/robot_ctrl_alarmCode
string system_id 			
string alarm_id 		# module_no(3) + module alarm code(3)	
string alarm_code 		# same as alarm_id,preper for special requirement
string alarm_level 		# level of ararm: 1:alart 2:alarm	
string alarm_Desc_E 		# English description of alarm	
string alarm_Desc_TC 		# Traditional chinese description of alarm	
string alarm_Desc_SC 		# Sample chinese description of alarm
string alarm_version 		# version of alarm
string update_time 		# version time of alarm
")



(provide :robot_control_msgs/robot_ctrl_alarmCode_cmd "e8befc5050638e2b9a4048a2ea5cd223")


