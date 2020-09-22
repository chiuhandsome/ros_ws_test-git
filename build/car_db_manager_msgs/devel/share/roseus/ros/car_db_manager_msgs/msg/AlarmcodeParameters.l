;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::AlarmcodeParameters)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'AlarmcodeParameters (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::ALARMCODEPARAMETERS")
  (make-package "CAR_DB_MANAGER_MSGS::ALARMCODEPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude AlarmcodeParameters.msg.html


(defclass car_db_manager_msgs::AlarmcodeParameters
  :super ros::object
  :slots (_primary_id _unique_code _base_name _alarm_level _alarm_desc_eng _alarm_desc_tc _alarm_desc_sc _update_time ))

(defmethod car_db_manager_msgs::AlarmcodeParameters
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:alarm_level __alarm_level) 0)
    ((:alarm_desc_eng __alarm_desc_eng) "")
    ((:alarm_desc_tc __alarm_desc_tc) "")
    ((:alarm_desc_sc __alarm_desc_sc) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _alarm_level (round __alarm_level))
   (setq _alarm_desc_eng (string __alarm_desc_eng))
   (setq _alarm_desc_tc (string __alarm_desc_tc))
   (setq _alarm_desc_sc (string __alarm_desc_sc))
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
  (:alarm_level
   (&optional __alarm_level)
   (if __alarm_level (setq _alarm_level __alarm_level)) _alarm_level)
  (:alarm_desc_eng
   (&optional __alarm_desc_eng)
   (if __alarm_desc_eng (setq _alarm_desc_eng __alarm_desc_eng)) _alarm_desc_eng)
  (:alarm_desc_tc
   (&optional __alarm_desc_tc)
   (if __alarm_desc_tc (setq _alarm_desc_tc __alarm_desc_tc)) _alarm_desc_tc)
  (:alarm_desc_sc
   (&optional __alarm_desc_sc)
   (if __alarm_desc_sc (setq _alarm_desc_sc __alarm_desc_sc)) _alarm_desc_sc)
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
    ;; uint8 _alarm_level
    1
    ;; string _alarm_desc_eng
    4 (length _alarm_desc_eng)
    ;; string _alarm_desc_tc
    4 (length _alarm_desc_tc)
    ;; string _alarm_desc_sc
    4 (length _alarm_desc_sc)
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
     ;; uint8 _alarm_level
       (write-byte _alarm_level s)
     ;; string _alarm_desc_eng
       (write-long (length _alarm_desc_eng) s) (princ _alarm_desc_eng s)
     ;; string _alarm_desc_tc
       (write-long (length _alarm_desc_tc) s) (princ _alarm_desc_tc s)
     ;; string _alarm_desc_sc
       (write-long (length _alarm_desc_sc) s) (princ _alarm_desc_sc s)
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
   ;; uint8 _alarm_level
     (setq _alarm_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _alarm_desc_eng
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_desc_eng (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_desc_tc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_desc_tc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_desc_sc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_desc_sc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::AlarmcodeParameters :md5sum-) "a54f2fb21b297ab49903c34acf8090f2")
(setf (get car_db_manager_msgs::AlarmcodeParameters :datatype-) "car_db_manager_msgs/AlarmcodeParameters")
(setf (get car_db_manager_msgs::AlarmcodeParameters :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
uint8 alarm_level	
string alarm_desc_eng
string alarm_desc_tc
string alarm_desc_sc
string update_time			# must-have 	  	 	


")



(provide :car_db_manager_msgs/AlarmcodeParameters "a54f2fb21b297ab49903c34acf8090f2")


