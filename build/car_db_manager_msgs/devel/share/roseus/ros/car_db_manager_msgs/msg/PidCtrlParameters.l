;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::PidCtrlParameters)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'PidCtrlParameters (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::PIDCTRLPARAMETERS")
  (make-package "CAR_DB_MANAGER_MSGS::PIDCTRLPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude PidCtrlParameters.msg.html


(defclass car_db_manager_msgs::PidCtrlParameters
  :super ros::object
  :slots (_primary_id _unique_code _base_name _target _tolerance _min_bound _max_bound _d_KP _d_KI _d_KD _b_compensation _update_time ))

(defmethod car_db_manager_msgs::PidCtrlParameters
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:target __target) 0.0)
    ((:tolerance __tolerance) 0.0)
    ((:min_bound __min_bound) 0.0)
    ((:max_bound __max_bound) 0.0)
    ((:d_KP __d_KP) 0.0)
    ((:d_KI __d_KI) 0.0)
    ((:d_KD __d_KD) 0.0)
    ((:b_compensation __b_compensation) nil)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _target (float __target))
   (setq _tolerance (float __tolerance))
   (setq _min_bound (float __min_bound))
   (setq _max_bound (float __max_bound))
   (setq _d_KP (float __d_KP))
   (setq _d_KI (float __d_KI))
   (setq _d_KD (float __d_KD))
   (setq _b_compensation __b_compensation)
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
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:min_bound
   (&optional __min_bound)
   (if __min_bound (setq _min_bound __min_bound)) _min_bound)
  (:max_bound
   (&optional __max_bound)
   (if __max_bound (setq _max_bound __max_bound)) _max_bound)
  (:d_KP
   (&optional __d_KP)
   (if __d_KP (setq _d_KP __d_KP)) _d_KP)
  (:d_KI
   (&optional __d_KI)
   (if __d_KI (setq _d_KI __d_KI)) _d_KI)
  (:d_KD
   (&optional __d_KD)
   (if __d_KD (setq _d_KD __d_KD)) _d_KD)
  (:b_compensation
   (&optional __b_compensation)
   (if __b_compensation (setq _b_compensation __b_compensation)) _b_compensation)
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
    ;; float32 _target
    4
    ;; float32 _tolerance
    4
    ;; float32 _min_bound
    4
    ;; float32 _max_bound
    4
    ;; float64 _d_KP
    8
    ;; float64 _d_KI
    8
    ;; float64 _d_KD
    8
    ;; bool _b_compensation
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
     ;; float32 _target
       (sys::poke _target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_bound
       (sys::poke _min_bound (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_bound
       (sys::poke _max_bound (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _d_KP
       (sys::poke _d_KP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_KI
       (sys::poke _d_KI (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_KD
       (sys::poke _d_KD (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _b_compensation
       (if _b_compensation (write-byte -1 s) (write-byte 0 s))
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
   ;; float32 _target
     (setq _target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tolerance
     (setq _tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_bound
     (setq _min_bound (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_bound
     (setq _max_bound (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _d_KP
     (setq _d_KP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_KI
     (setq _d_KI (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_KD
     (setq _d_KD (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _b_compensation
     (setq _b_compensation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::PidCtrlParameters :md5sum-) "09b2214d7f8d0d3330776009fda8ce8f")
(setf (get car_db_manager_msgs::PidCtrlParameters :datatype-) "car_db_manager_msgs/PidCtrlParameters")
(setf (get car_db_manager_msgs::PidCtrlParameters :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
string base_name
float32 target		   
float32 tolerance	
float32 min_bound	
float32 max_bound
float64 d_KP	
float64 d_KI	
float64 d_KD
bool b_compensation
string update_time			# must-have 	 


")



(provide :car_db_manager_msgs/PidCtrlParameters "09b2214d7f8d0d3330776009fda8ce8f")


