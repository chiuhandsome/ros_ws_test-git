;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::OperatecodeParameters)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'OperatecodeParameters (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::OPERATECODEPARAMETERS")
  (make-package "CAR_DB_MANAGER_MSGS::OPERATECODEPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude OperatecodeParameters.msg.html


(defclass car_db_manager_msgs::OperatecodeParameters
  :super ros::object
  :slots (_primary_id _unique_code _base_name _operate_level _operate_desc_eng _operate_desc_tc _operate_desc_sc _update_time ))

(defmethod car_db_manager_msgs::OperatecodeParameters
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:operate_level __operate_level) 0)
    ((:operate_desc_eng __operate_desc_eng) "")
    ((:operate_desc_tc __operate_desc_tc) "")
    ((:operate_desc_sc __operate_desc_sc) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _operate_level (round __operate_level))
   (setq _operate_desc_eng (string __operate_desc_eng))
   (setq _operate_desc_tc (string __operate_desc_tc))
   (setq _operate_desc_sc (string __operate_desc_sc))
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
  (:operate_level
   (&optional __operate_level)
   (if __operate_level (setq _operate_level __operate_level)) _operate_level)
  (:operate_desc_eng
   (&optional __operate_desc_eng)
   (if __operate_desc_eng (setq _operate_desc_eng __operate_desc_eng)) _operate_desc_eng)
  (:operate_desc_tc
   (&optional __operate_desc_tc)
   (if __operate_desc_tc (setq _operate_desc_tc __operate_desc_tc)) _operate_desc_tc)
  (:operate_desc_sc
   (&optional __operate_desc_sc)
   (if __operate_desc_sc (setq _operate_desc_sc __operate_desc_sc)) _operate_desc_sc)
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
    ;; uint8 _operate_level
    1
    ;; string _operate_desc_eng
    4 (length _operate_desc_eng)
    ;; string _operate_desc_tc
    4 (length _operate_desc_tc)
    ;; string _operate_desc_sc
    4 (length _operate_desc_sc)
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
     ;; uint8 _operate_level
       (write-byte _operate_level s)
     ;; string _operate_desc_eng
       (write-long (length _operate_desc_eng) s) (princ _operate_desc_eng s)
     ;; string _operate_desc_tc
       (write-long (length _operate_desc_tc) s) (princ _operate_desc_tc s)
     ;; string _operate_desc_sc
       (write-long (length _operate_desc_sc) s) (princ _operate_desc_sc s)
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
   ;; uint8 _operate_level
     (setq _operate_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _operate_desc_eng
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operate_desc_eng (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _operate_desc_tc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operate_desc_tc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _operate_desc_sc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operate_desc_sc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::OperatecodeParameters :md5sum-) "99946a2788db58b35079220bbedb8893")
(setf (get car_db_manager_msgs::OperatecodeParameters :datatype-) "car_db_manager_msgs/OperatecodeParameters")
(setf (get car_db_manager_msgs::OperatecodeParameters :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
uint8 operate_level	
string operate_desc_eng
string operate_desc_tc
string operate_desc_sc
string update_time			# must-have 	  	


")



(provide :car_db_manager_msgs/OperatecodeParameters "99946a2788db58b35079220bbedb8893")


