;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_alarmhistory)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_alarmhistory (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_ALARMHISTORY")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_ALARMHISTORY"))

(in-package "ROS")
;;//! \htmlinclude cell_alarmhistory.msg.html


(defclass cellctrl_control_msgs::cell_alarmhistory
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _alarm_name _alarm_level _alarm_code _update_time ))

(defmethod cellctrl_control_msgs::cell_alarmhistory
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:alarm_name __alarm_name) "")
    ((:alarm_level __alarm_level) 0)
    ((:alarm_code __alarm_code) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _alarm_name (string __alarm_name))
   (setq _alarm_level (round __alarm_level))
   (setq _alarm_code (string __alarm_code))
   (setq _update_time (string __update_time))
   self)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:foreign_key
   (&optional __foreign_key)
   (if __foreign_key (setq _foreign_key __foreign_key)) _foreign_key)
  (:unique_code
   (&optional __unique_code)
   (if __unique_code (setq _unique_code __unique_code)) _unique_code)
  (:alarm_name
   (&optional __alarm_name)
   (if __alarm_name (setq _alarm_name __alarm_name)) _alarm_name)
  (:alarm_level
   (&optional __alarm_level)
   (if __alarm_level (setq _alarm_level __alarm_level)) _alarm_level)
  (:alarm_code
   (&optional __alarm_code)
   (if __alarm_code (setq _alarm_code __alarm_code)) _alarm_code)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:serialization-length
   ()
   (+
    ;; string _primary_id
    4 (length _primary_id)
    ;; string _foreign_key
    4 (length _foreign_key)
    ;; string _unique_code
    4 (length _unique_code)
    ;; string _alarm_name
    4 (length _alarm_name)
    ;; uint8 _alarm_level
    1
    ;; string _alarm_code
    4 (length _alarm_code)
    ;; string _update_time
    4 (length _update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _primary_id
       (write-long (length _primary_id) s) (princ _primary_id s)
     ;; string _foreign_key
       (write-long (length _foreign_key) s) (princ _foreign_key s)
     ;; string _unique_code
       (write-long (length _unique_code) s) (princ _unique_code s)
     ;; string _alarm_name
       (write-long (length _alarm_name) s) (princ _alarm_name s)
     ;; uint8 _alarm_level
       (write-byte _alarm_level s)
     ;; string _alarm_code
       (write-long (length _alarm_code) s) (princ _alarm_code s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _primary_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _primary_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _foreign_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _foreign_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _unique_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unique_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _alarm_level
     (setq _alarm_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _alarm_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_alarmhistory :md5sum-) "bbee41032af067305af86fdfab0c31ba")
(setf (get cellctrl_control_msgs::cell_alarmhistory :datatype-) "cellctrl_control_msgs/cell_alarmhistory")
(setf (get cellctrl_control_msgs::cell_alarmhistory :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string alarm_name		   
uint8 alarm_level 		 
string alarm_code 	
string update_time			# must-have 		 

")



(provide :cellctrl_control_msgs/cell_alarmhistory "bbee41032af067305af86fdfab0c31ba")


