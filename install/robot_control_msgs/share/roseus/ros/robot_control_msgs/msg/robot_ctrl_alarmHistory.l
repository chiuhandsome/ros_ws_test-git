;; Auto-generated. Do not edit!


(when (boundp 'robot_control_msgs::robot_ctrl_alarmHistory)
  (if (not (find-package "ROBOT_CONTROL_MSGS"))
    (make-package "ROBOT_CONTROL_MSGS"))
  (shadow 'robot_ctrl_alarmHistory (find-package "ROBOT_CONTROL_MSGS")))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMHISTORY")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ALARMHISTORY"))

(in-package "ROS")
;;//! \htmlinclude robot_ctrl_alarmHistory.msg.html


(defclass robot_control_msgs::robot_ctrl_alarmHistory
  :super ros::object
  :slots (_system_id _alarm_id _alarm_code _alarm_level _alarm_occure_time _update_time ))

(defmethod robot_control_msgs::robot_ctrl_alarmHistory
  (:init
   (&key
    ((:system_id __system_id) "")
    ((:alarm_id __alarm_id) "")
    ((:alarm_code __alarm_code) "")
    ((:alarm_level __alarm_level) "")
    ((:alarm_occure_time __alarm_occure_time) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _system_id (string __system_id))
   (setq _alarm_id (string __alarm_id))
   (setq _alarm_code (string __alarm_code))
   (setq _alarm_level (string __alarm_level))
   (setq _alarm_occure_time (string __alarm_occure_time))
   (setq _update_time (string __update_time))
   self)
  (:system_id
   (&optional __system_id)
   (if __system_id (setq _system_id __system_id)) _system_id)
  (:alarm_id
   (&optional __alarm_id)
   (if __alarm_id (setq _alarm_id __alarm_id)) _alarm_id)
  (:alarm_code
   (&optional __alarm_code)
   (if __alarm_code (setq _alarm_code __alarm_code)) _alarm_code)
  (:alarm_level
   (&optional __alarm_level)
   (if __alarm_level (setq _alarm_level __alarm_level)) _alarm_level)
  (:alarm_occure_time
   (&optional __alarm_occure_time)
   (if __alarm_occure_time (setq _alarm_occure_time __alarm_occure_time)) _alarm_occure_time)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:serialization-length
   ()
   (+
    ;; string _system_id
    4 (length _system_id)
    ;; string _alarm_id
    4 (length _alarm_id)
    ;; string _alarm_code
    4 (length _alarm_code)
    ;; string _alarm_level
    4 (length _alarm_level)
    ;; string _alarm_occure_time
    4 (length _alarm_occure_time)
    ;; string _update_time
    4 (length _update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _system_id
       (write-long (length _system_id) s) (princ _system_id s)
     ;; string _alarm_id
       (write-long (length _alarm_id) s) (princ _alarm_id s)
     ;; string _alarm_code
       (write-long (length _alarm_code) s) (princ _alarm_code s)
     ;; string _alarm_level
       (write-long (length _alarm_level) s) (princ _alarm_level s)
     ;; string _alarm_occure_time
       (write-long (length _alarm_occure_time) s) (princ _alarm_occure_time s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _system_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _system_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_occure_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_occure_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_control_msgs::robot_ctrl_alarmHistory :md5sum-) "9b1377e9612e5919160e7b5630dcb6dc")
(setf (get robot_control_msgs::robot_ctrl_alarmHistory :datatype-) "robot_control_msgs/robot_ctrl_alarmHistory")
(setf (get robot_control_msgs::robot_ctrl_alarmHistory :definition-)
      "string system_id 
string alarm_id 			# module_no(3) + module alarm code(3)	
string alarm_code 			# same as alarm_id,preper for special requirement
string alarm_level 			# level of ararm: 1:alart 2:alarm	
string alarm_occure_time 	# occure time of alarm
string update_time 

")



(provide :robot_control_msgs/robot_ctrl_alarmHistory "9b1377e9612e5919160e7b5630dcb6dc")


