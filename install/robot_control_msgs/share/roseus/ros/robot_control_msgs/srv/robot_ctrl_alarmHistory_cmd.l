;; Auto-generated. Do not edit!


(when (boundp 'robot_control_msgs::robot_ctrl_alarmHistory_cmd)
  (if (not (find-package "ROBOT_CONTROL_MSGS"))
    (make-package "ROBOT_CONTROL_MSGS"))
  (shadow 'robot_ctrl_alarmHistory_cmd (find-package "ROBOT_CONTROL_MSGS")))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMHISTORY_CMD")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMHISTORY_CMD"))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMHISTORY_CMDREQUEST")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMHISTORY_CMDREQUEST"))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMHISTORY_CMDRESPONSE")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMHISTORY_CMDRESPONSE"))

(in-package "ROS")





(defclass robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest
  :super ros::object
  :slots (_cmd_id _index_name _parameter _rec_alarmHistory ))

(defmethod robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:index_name __index_name) "")
    ((:parameter __parameter) "")
    ((:rec_alarmHistory __rec_alarmHistory) (instance robot_control_msgs::robot_ctrl_alarmHistory :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _index_name (string __index_name))
   (setq _parameter (string __parameter))
   (setq _rec_alarmHistory __rec_alarmHistory)
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
  (:rec_alarmHistory
   (&rest __rec_alarmHistory)
   (if (keywordp (car __rec_alarmHistory))
       (send* _rec_alarmHistory __rec_alarmHistory)
     (progn
       (if __rec_alarmHistory (setq _rec_alarmHistory (car __rec_alarmHistory)))
       _rec_alarmHistory)))
  (:serialization-length
   ()
   (+
    ;; int8 _cmd_id
    1
    ;; string _index_name
    4 (length _index_name)
    ;; string _parameter
    4 (length _parameter)
    ;; robot_control_msgs/robot_ctrl_alarmHistory _rec_alarmHistory
    (send _rec_alarmHistory :serialization-length)
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
     ;; robot_control_msgs/robot_ctrl_alarmHistory _rec_alarmHistory
       (send _rec_alarmHistory :serialize s)
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
   ;; robot_control_msgs/robot_ctrl_alarmHistory _rec_alarmHistory
     (send _rec_alarmHistory :deserialize buf ptr-) (incf ptr- (send _rec_alarmHistory :serialization-length))
   ;;
   self)
  )

(defclass robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse
  :super ros::object
  :slots (_result _error_code _result_alarmHistorys ))

(defmethod robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:result_alarmHistorys __result_alarmHistorys) (let (r) (dotimes (i 0) (push (instance robot_control_msgs::robot_ctrl_alarmHistory :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _result_alarmHistorys __result_alarmHistorys)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:result_alarmHistorys
   (&rest __result_alarmHistorys)
   (if (keywordp (car __result_alarmHistorys))
       (send* _result_alarmHistorys __result_alarmHistorys)
     (progn
       (if __result_alarmHistorys (setq _result_alarmHistorys (car __result_alarmHistorys)))
       _result_alarmHistorys)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _error_code
    4 (length _error_code)
    ;; robot_control_msgs/robot_ctrl_alarmHistory[] _result_alarmHistorys
    (apply #'+ (send-all _result_alarmHistorys :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _error_code
       (write-long (length _error_code) s) (princ _error_code s)
     ;; robot_control_msgs/robot_ctrl_alarmHistory[] _result_alarmHistorys
     (write-long (length _result_alarmHistorys) s)
     (dolist (elem _result_alarmHistorys)
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
   ;; robot_control_msgs/robot_ctrl_alarmHistory[] _result_alarmHistorys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_alarmHistorys (let (r) (dotimes (i n) (push (instance robot_control_msgs::robot_ctrl_alarmHistory :init) r)) r))
     (dolist (elem- _result_alarmHistorys)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robot_control_msgs::robot_ctrl_alarmHistory_cmd
  :super ros::object
  :slots ())

(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmd :md5sum-) "86160692f07e28ff6a400e75ea300139")
(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmd :datatype-) "robot_control_msgs/robot_ctrl_alarmHistory_cmd")
(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmd :request) robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest)
(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmd :response) robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse)

(defmethod robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest
  (:response () (instance robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse :init)))

(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest :md5sum-) "86160692f07e28ff6a400e75ea300139")
(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest :datatype-) "robot_control_msgs/robot_ctrl_alarmHistory_cmdRequest")
(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest :definition-)
      "int8 cmd_id	        # 1:Add , 2:modify 3:delete 4:requery 		
string index_name 
string parameter 	
robot_ctrl_alarmHistory rec_alarmHistory	 

================================================================================
MSG: robot_control_msgs/robot_ctrl_alarmHistory
string system_id 
string alarm_id 			# module_no(3) + module alarm code(3)	
string alarm_code 			# same as alarm_id,preper for special requirement
string alarm_level 			# level of ararm: 1:alart 2:alarm	
string alarm_occure_time 	# occure time of alarm
string update_time 
---
bool result
string error_code
robot_ctrl_alarmHistory[] result_alarmHistorys


================================================================================
MSG: robot_control_msgs/robot_ctrl_alarmHistory
string system_id 
string alarm_id 			# module_no(3) + module alarm code(3)	
string alarm_code 			# same as alarm_id,preper for special requirement
string alarm_level 			# level of ararm: 1:alart 2:alarm	
string alarm_occure_time 	# occure time of alarm
string update_time 
")

(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse :md5sum-) "86160692f07e28ff6a400e75ea300139")
(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse :datatype-) "robot_control_msgs/robot_ctrl_alarmHistory_cmdResponse")
(setf (get robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse :definition-)
      "int8 cmd_id	        # 1:Add , 2:modify 3:delete 4:requery 		
string index_name 
string parameter 	
robot_ctrl_alarmHistory rec_alarmHistory	 

================================================================================
MSG: robot_control_msgs/robot_ctrl_alarmHistory
string system_id 
string alarm_id 			# module_no(3) + module alarm code(3)	
string alarm_code 			# same as alarm_id,preper for special requirement
string alarm_level 			# level of ararm: 1:alart 2:alarm	
string alarm_occure_time 	# occure time of alarm
string update_time 
---
bool result
string error_code
robot_ctrl_alarmHistory[] result_alarmHistorys


================================================================================
MSG: robot_control_msgs/robot_ctrl_alarmHistory
string system_id 
string alarm_id 			# module_no(3) + module alarm code(3)	
string alarm_code 			# same as alarm_id,preper for special requirement
string alarm_level 			# level of ararm: 1:alart 2:alarm	
string alarm_occure_time 	# occure time of alarm
string update_time 
")



(provide :robot_control_msgs/robot_ctrl_alarmHistory_cmd "86160692f07e28ff6a400e75ea300139")


