;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::CarAlarmHistory)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'CarAlarmHistory (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::CARALARMHISTORY")
  (make-package "CAR_DB_MANAGER_MSGS::CARALARMHISTORY"))

(in-package "ROS")
;;//! \htmlinclude CarAlarmHistory.msg.html


(defclass car_db_manager_msgs::CarAlarmHistory
  :super ros::object
  :slots (_primary_id _unique_code _base_name _occur_time _alarm_remark _update_time ))

(defmethod car_db_manager_msgs::CarAlarmHistory
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:occur_time __occur_time) "")
    ((:alarm_remark __alarm_remark) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _occur_time (string __occur_time))
   (setq _alarm_remark (string __alarm_remark))
   (setq _update_time (string __update_time))
   self)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:unique_code
   (&optional __unique_code)
   (if __unique_code (setq _unique_code __unique_code)) _unique_code)
  (:base_name
   (&optional __base_name)
   (if __base_name (setq _base_name __base_name)) _base_name)
  (:occur_time
   (&optional __occur_time)
   (if __occur_time (setq _occur_time __occur_time)) _occur_time)
  (:alarm_remark
   (&optional __alarm_remark)
   (if __alarm_remark (setq _alarm_remark __alarm_remark)) _alarm_remark)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:serialization-length
   ()
   (+
    ;; string _primary_id
    4 (length _primary_id)
    ;; string _unique_code
    4 (length _unique_code)
    ;; string _base_name
    4 (length _base_name)
    ;; string _occur_time
    4 (length _occur_time)
    ;; string _alarm_remark
    4 (length _alarm_remark)
    ;; string _update_time
    4 (length _update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _primary_id
       (write-long (length _primary_id) s) (princ _primary_id s)
     ;; string _unique_code
       (write-long (length _unique_code) s) (princ _unique_code s)
     ;; string _base_name
       (write-long (length _base_name) s) (princ _base_name s)
     ;; string _occur_time
       (write-long (length _occur_time) s) (princ _occur_time s)
     ;; string _alarm_remark
       (write-long (length _alarm_remark) s) (princ _alarm_remark s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _primary_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _primary_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _unique_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unique_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _occur_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _occur_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_remark
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_remark (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::CarAlarmHistory :md5sum-) "c3b5f21ce52ec5f142f795740d19d92b")
(setf (get car_db_manager_msgs::CarAlarmHistory :datatype-) "car_db_manager_msgs/CarAlarmHistory")
(setf (get car_db_manager_msgs::CarAlarmHistory :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
string occur_time
string alarm_remark
string update_time			# must-have 	 


")



(provide :car_db_manager_msgs/CarAlarmHistory "c3b5f21ce52ec5f142f795740d19d92b")


