;; Auto-generated. Do not edit!


(when (boundp 'robot_control_msgs::robot_ctrl_roslog_cmd)
  (if (not (find-package "ROBOT_CONTROL_MSGS"))
    (make-package "ROBOT_CONTROL_MSGS"))
  (shadow 'robot_ctrl_roslog_cmd (find-package "ROBOT_CONTROL_MSGS")))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ROSLOG_CMD")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ROSLOG_CMD"))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ROSLOG_CMDREQUEST")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ROSLOG_CMDREQUEST"))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ROSLOG_CMDRESPONSE")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ROSLOG_CMDRESPONSE"))

(in-package "ROS")





(defclass robot_control_msgs::robot_ctrl_roslog_cmdRequest
  :super ros::object
  :slots (_cmd_id _index_name _parameter _rec_roslog ))

(defmethod robot_control_msgs::robot_ctrl_roslog_cmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:index_name __index_name) "")
    ((:parameter __parameter) "")
    ((:rec_roslog __rec_roslog) (instance robot_control_msgs::robot_ctrl_roslog :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _index_name (string __index_name))
   (setq _parameter (string __parameter))
   (setq _rec_roslog __rec_roslog)
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
  (:rec_roslog
   (&rest __rec_roslog)
   (if (keywordp (car __rec_roslog))
       (send* _rec_roslog __rec_roslog)
     (progn
       (if __rec_roslog (setq _rec_roslog (car __rec_roslog)))
       _rec_roslog)))
  (:serialization-length
   ()
   (+
    ;; int8 _cmd_id
    1
    ;; string _index_name
    4 (length _index_name)
    ;; string _parameter
    4 (length _parameter)
    ;; robot_control_msgs/robot_ctrl_roslog _rec_roslog
    (send _rec_roslog :serialization-length)
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
     ;; robot_control_msgs/robot_ctrl_roslog _rec_roslog
       (send _rec_roslog :serialize s)
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
   ;; robot_control_msgs/robot_ctrl_roslog _rec_roslog
     (send _rec_roslog :deserialize buf ptr-) (incf ptr- (send _rec_roslog :serialization-length))
   ;;
   self)
  )

(defclass robot_control_msgs::robot_ctrl_roslog_cmdResponse
  :super ros::object
  :slots (_result _error_code _result_roslogs ))

(defmethod robot_control_msgs::robot_ctrl_roslog_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:result_roslogs __result_roslogs) (let (r) (dotimes (i 0) (push (instance robot_control_msgs::robot_ctrl_roslog :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _result_roslogs __result_roslogs)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:result_roslogs
   (&rest __result_roslogs)
   (if (keywordp (car __result_roslogs))
       (send* _result_roslogs __result_roslogs)
     (progn
       (if __result_roslogs (setq _result_roslogs (car __result_roslogs)))
       _result_roslogs)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _error_code
    4 (length _error_code)
    ;; robot_control_msgs/robot_ctrl_roslog[] _result_roslogs
    (apply #'+ (send-all _result_roslogs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _error_code
       (write-long (length _error_code) s) (princ _error_code s)
     ;; robot_control_msgs/robot_ctrl_roslog[] _result_roslogs
     (write-long (length _result_roslogs) s)
     (dolist (elem _result_roslogs)
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
   ;; robot_control_msgs/robot_ctrl_roslog[] _result_roslogs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_roslogs (let (r) (dotimes (i n) (push (instance robot_control_msgs::robot_ctrl_roslog :init) r)) r))
     (dolist (elem- _result_roslogs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robot_control_msgs::robot_ctrl_roslog_cmd
  :super ros::object
  :slots ())

(setf (get robot_control_msgs::robot_ctrl_roslog_cmd :md5sum-) "1b9cbc049446435a9aceddf55f064c06")
(setf (get robot_control_msgs::robot_ctrl_roslog_cmd :datatype-) "robot_control_msgs/robot_ctrl_roslog_cmd")
(setf (get robot_control_msgs::robot_ctrl_roslog_cmd :request) robot_control_msgs::robot_ctrl_roslog_cmdRequest)
(setf (get robot_control_msgs::robot_ctrl_roslog_cmd :response) robot_control_msgs::robot_ctrl_roslog_cmdResponse)

(defmethod robot_control_msgs::robot_ctrl_roslog_cmdRequest
  (:response () (instance robot_control_msgs::robot_ctrl_roslog_cmdResponse :init)))

(setf (get robot_control_msgs::robot_ctrl_roslog_cmdRequest :md5sum-) "1b9cbc049446435a9aceddf55f064c06")
(setf (get robot_control_msgs::robot_ctrl_roslog_cmdRequest :datatype-) "robot_control_msgs/robot_ctrl_roslog_cmdRequest")
(setf (get robot_control_msgs::robot_ctrl_roslog_cmdRequest :definition-)
      "int8 cmd_id	        # 1:Add , 2:modify 3:delete 4:requery 		
string index_name 
string parameter 	
robot_ctrl_roslog rec_roslog	 

================================================================================
MSG: robot_control_msgs/robot_ctrl_roslog
string system_id 
string roslog_level 			 
string roslog_node 			 
string roslog_content 			 
string occure_time 	 
string update_time 
---
bool result
string error_code
robot_ctrl_roslog[] result_roslogs	 


================================================================================
MSG: robot_control_msgs/robot_ctrl_roslog
string system_id 
string roslog_level 			 
string roslog_node 			 
string roslog_content 			 
string occure_time 	 
string update_time 
")

(setf (get robot_control_msgs::robot_ctrl_roslog_cmdResponse :md5sum-) "1b9cbc049446435a9aceddf55f064c06")
(setf (get robot_control_msgs::robot_ctrl_roslog_cmdResponse :datatype-) "robot_control_msgs/robot_ctrl_roslog_cmdResponse")
(setf (get robot_control_msgs::robot_ctrl_roslog_cmdResponse :definition-)
      "int8 cmd_id	        # 1:Add , 2:modify 3:delete 4:requery 		
string index_name 
string parameter 	
robot_ctrl_roslog rec_roslog	 

================================================================================
MSG: robot_control_msgs/robot_ctrl_roslog
string system_id 
string roslog_level 			 
string roslog_node 			 
string roslog_content 			 
string occure_time 	 
string update_time 
---
bool result
string error_code
robot_ctrl_roslog[] result_roslogs	 


================================================================================
MSG: robot_control_msgs/robot_ctrl_roslog
string system_id 
string roslog_level 			 
string roslog_node 			 
string roslog_content 			 
string occure_time 	 
string update_time 
")



(provide :robot_control_msgs/robot_ctrl_roslog_cmd "1b9cbc049446435a9aceddf55f064c06")


