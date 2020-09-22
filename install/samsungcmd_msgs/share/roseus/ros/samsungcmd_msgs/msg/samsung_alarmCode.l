;; Auto-generated. Do not edit!


(when (boundp 'samsungcmd_msgs::samsung_alarmCode)
  (if (not (find-package "SAMSUNGCMD_MSGS"))
    (make-package "SAMSUNGCMD_MSGS"))
  (shadow 'samsung_alarmCode (find-package "SAMSUNGCMD_MSGS")))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_ALARMCODE")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_ALARMCODE"))

(in-package "ROS")
;;//! \htmlinclude samsung_alarmCode.msg.html


(defclass samsungcmd_msgs::samsung_alarmCode
  :super ros::object
  :slots (_system_id _alarm_id _alarm_code _alarm_level _alarm_Desc_E _alarm_Desc_TC _alarm_Desc_SC _alarm_version _alarm_update_time ))

(defmethod samsungcmd_msgs::samsung_alarmCode
  (:init
   (&key
    ((:system_id __system_id) "")
    ((:alarm_id __alarm_id) "")
    ((:alarm_code __alarm_code) "")
    ((:alarm_level __alarm_level) "")
    ((:alarm_Desc_E __alarm_Desc_E) "")
    ((:alarm_Desc_TC __alarm_Desc_TC) "")
    ((:alarm_Desc_SC __alarm_Desc_SC) "")
    ((:alarm_version __alarm_version) "")
    ((:alarm_update_time __alarm_update_time) "")
    )
   (send-super :init)
   (setq _system_id (string __system_id))
   (setq _alarm_id (string __alarm_id))
   (setq _alarm_code (string __alarm_code))
   (setq _alarm_level (string __alarm_level))
   (setq _alarm_Desc_E (string __alarm_Desc_E))
   (setq _alarm_Desc_TC (string __alarm_Desc_TC))
   (setq _alarm_Desc_SC (string __alarm_Desc_SC))
   (setq _alarm_version (string __alarm_version))
   (setq _alarm_update_time (string __alarm_update_time))
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
  (:alarm_Desc_E
   (&optional __alarm_Desc_E)
   (if __alarm_Desc_E (setq _alarm_Desc_E __alarm_Desc_E)) _alarm_Desc_E)
  (:alarm_Desc_TC
   (&optional __alarm_Desc_TC)
   (if __alarm_Desc_TC (setq _alarm_Desc_TC __alarm_Desc_TC)) _alarm_Desc_TC)
  (:alarm_Desc_SC
   (&optional __alarm_Desc_SC)
   (if __alarm_Desc_SC (setq _alarm_Desc_SC __alarm_Desc_SC)) _alarm_Desc_SC)
  (:alarm_version
   (&optional __alarm_version)
   (if __alarm_version (setq _alarm_version __alarm_version)) _alarm_version)
  (:alarm_update_time
   (&optional __alarm_update_time)
   (if __alarm_update_time (setq _alarm_update_time __alarm_update_time)) _alarm_update_time)
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
    ;; string _alarm_Desc_E
    4 (length _alarm_Desc_E)
    ;; string _alarm_Desc_TC
    4 (length _alarm_Desc_TC)
    ;; string _alarm_Desc_SC
    4 (length _alarm_Desc_SC)
    ;; string _alarm_version
    4 (length _alarm_version)
    ;; string _alarm_update_time
    4 (length _alarm_update_time)
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
     ;; string _alarm_Desc_E
       (write-long (length _alarm_Desc_E) s) (princ _alarm_Desc_E s)
     ;; string _alarm_Desc_TC
       (write-long (length _alarm_Desc_TC) s) (princ _alarm_Desc_TC s)
     ;; string _alarm_Desc_SC
       (write-long (length _alarm_Desc_SC) s) (princ _alarm_Desc_SC s)
     ;; string _alarm_version
       (write-long (length _alarm_version) s) (princ _alarm_version s)
     ;; string _alarm_update_time
       (write-long (length _alarm_update_time) s) (princ _alarm_update_time s)
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
   ;; string _alarm_Desc_E
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_Desc_E (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_Desc_TC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_Desc_TC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_Desc_SC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_Desc_SC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alarm_update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get samsungcmd_msgs::samsung_alarmCode :md5sum-) "0b84738275b1dc1036ab93e3e6ee935e")
(setf (get samsungcmd_msgs::samsung_alarmCode :datatype-) "samsungcmd_msgs/samsung_alarmCode")
(setf (get samsungcmd_msgs::samsung_alarmCode :definition-)
      "string system_id 			
string alarm_id 		# module_no(3) + module alarm code(3)	
string alarm_code 		# same as alarm_id,preper for special requirement
string alarm_level 		# level of ararm: 1:alart 2:alarm	
string alarm_Desc_E 		# English description of alarm	
string alarm_Desc_TC 		# Traditional chinese description of alarm	
string alarm_Desc_SC 		# Sample chinese description of alarm
string alarm_version 		# version of alarm
string alarm_update_time 	# version time of alarm

")



(provide :samsungcmd_msgs/samsung_alarmCode "0b84738275b1dc1036ab93e3e6ee935e")


