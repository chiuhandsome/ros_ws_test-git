;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::CheckParameters)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'CheckParameters (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::CHECKPARAMETERS")
  (make-package "CAR_DB_MANAGER_MSGS::CHECKPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude CheckParameters.msg.html


(defclass car_db_manager_msgs::CheckParameters
  :super ros::object
  :slots (_primary_id _unique_code _base_name _out_of_times _timeout _update_time ))

(defmethod car_db_manager_msgs::CheckParameters
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:out_of_times __out_of_times) 0)
    ((:timeout __timeout) 0.0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _out_of_times (round __out_of_times))
   (setq _timeout (float __timeout))
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
  (:out_of_times
   (&optional __out_of_times)
   (if __out_of_times (setq _out_of_times __out_of_times)) _out_of_times)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
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
    ;; uint8 _out_of_times
    1
    ;; float32 _timeout
    4
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
     ;; uint8 _out_of_times
       (write-byte _out_of_times s)
     ;; float32 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint8 _out_of_times
     (setq _out_of_times (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _timeout
     (setq _timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::CheckParameters :md5sum-) "ee0ef2f32ee4790a4809922f38c58783")
(setf (get car_db_manager_msgs::CheckParameters :datatype-) "car_db_manager_msgs/CheckParameters")
(setf (get car_db_manager_msgs::CheckParameters :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
uint8 out_of_times	
float32 timeout	
string update_time			# must-have 	  	


")



(provide :car_db_manager_msgs/CheckParameters "ee0ef2f32ee4790a4809922f38c58783")


