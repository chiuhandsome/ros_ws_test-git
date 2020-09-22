;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::TargerPos2dParameters)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'TargerPos2dParameters (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::TARGERPOS2DPARAMETERS")
  (make-package "CAR_DB_MANAGER_MSGS::TARGERPOS2DPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude TargerPos2dParameters.msg.html


(defclass car_db_manager_msgs::TargerPos2dParameters
  :super ros::object
  :slots (_primary_id _unique_code _base_name _pos_x _pos_y _theta _rotate_flag _update_time ))

(defmethod car_db_manager_msgs::TargerPos2dParameters
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:theta __theta) 0.0)
    ((:rotate_flag __rotate_flag) nil)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _theta (float __theta))
   (setq _rotate_flag __rotate_flag)
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
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:rotate_flag
   (&optional __rotate_flag)
   (if __rotate_flag (setq _rotate_flag __rotate_flag)) _rotate_flag)
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
    ;; float32 _pos_x
    4
    ;; float32 _pos_y
    4
    ;; float32 _theta
    4
    ;; bool _rotate_flag
    1
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
     ;; float32 _pos_x
       (sys::poke _pos_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _rotate_flag
       (if _rotate_flag (write-byte -1 s) (write-byte 0 s))
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
   ;; float32 _pos_x
     (setq _pos_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_y
     (setq _pos_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _rotate_flag
     (setq _rotate_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::TargerPos2dParameters :md5sum-) "8e6a4b469b6e6718a5c3a4cc673a88f1")
(setf (get car_db_manager_msgs::TargerPos2dParameters :datatype-) "car_db_manager_msgs/TargerPos2dParameters")
(setf (get car_db_manager_msgs::TargerPos2dParameters :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
string base_name
float32 pos_x		   
float32 pos_y	
float32 theta	
bool rotate_flag
string update_time			# must-have 	 


")



(provide :car_db_manager_msgs/TargerPos2dParameters "8e6a4b469b6e6718a5c3a4cc673a88f1")


