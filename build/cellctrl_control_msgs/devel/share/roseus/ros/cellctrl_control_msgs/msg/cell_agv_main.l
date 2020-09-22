;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_agv_main)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_agv_main (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_MAIN")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_MAIN"))

(in-package "ROS")
;;//! \htmlinclude cell_agv_main.msg.html


(defclass cellctrl_control_msgs::cell_agv_main
  :super ros::object
  :slots (_primary_id _unique_code _agv_standtype _agv_model_no _agv_name _agv_shape _agv_shape_para0 _agv_shape_para1 _agv_shape_para2 _agv_candidate _agv_transfer_type _put_in_service_date _work_comulative_time _current_status _update_time ))

(defmethod cellctrl_control_msgs::cell_agv_main
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:agv_standtype __agv_standtype) "")
    ((:agv_model_no __agv_model_no) "")
    ((:agv_name __agv_name) "")
    ((:agv_shape __agv_shape) 0)
    ((:agv_shape_para0 __agv_shape_para0) 0.0)
    ((:agv_shape_para1 __agv_shape_para1) 0.0)
    ((:agv_shape_para2 __agv_shape_para2) 0.0)
    ((:agv_candidate __agv_candidate) 0)
    ((:agv_transfer_type __agv_transfer_type) 0)
    ((:put_in_service_date __put_in_service_date) "")
    ((:work_comulative_time __work_comulative_time) 0.0)
    ((:current_status __current_status) 0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _agv_standtype (string __agv_standtype))
   (setq _agv_model_no (string __agv_model_no))
   (setq _agv_name (string __agv_name))
   (setq _agv_shape (round __agv_shape))
   (setq _agv_shape_para0 (float __agv_shape_para0))
   (setq _agv_shape_para1 (float __agv_shape_para1))
   (setq _agv_shape_para2 (float __agv_shape_para2))
   (setq _agv_candidate (round __agv_candidate))
   (setq _agv_transfer_type (round __agv_transfer_type))
   (setq _put_in_service_date (string __put_in_service_date))
   (setq _work_comulative_time (float __work_comulative_time))
   (setq _current_status (round __current_status))
   (setq _update_time (string __update_time))
   self)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:unique_code
   (&optional __unique_code)
   (if __unique_code (setq _unique_code __unique_code)) _unique_code)
  (:agv_standtype
   (&optional __agv_standtype)
   (if __agv_standtype (setq _agv_standtype __agv_standtype)) _agv_standtype)
  (:agv_model_no
   (&optional __agv_model_no)
   (if __agv_model_no (setq _agv_model_no __agv_model_no)) _agv_model_no)
  (:agv_name
   (&optional __agv_name)
   (if __agv_name (setq _agv_name __agv_name)) _agv_name)
  (:agv_shape
   (&optional __agv_shape)
   (if __agv_shape (setq _agv_shape __agv_shape)) _agv_shape)
  (:agv_shape_para0
   (&optional __agv_shape_para0)
   (if __agv_shape_para0 (setq _agv_shape_para0 __agv_shape_para0)) _agv_shape_para0)
  (:agv_shape_para1
   (&optional __agv_shape_para1)
   (if __agv_shape_para1 (setq _agv_shape_para1 __agv_shape_para1)) _agv_shape_para1)
  (:agv_shape_para2
   (&optional __agv_shape_para2)
   (if __agv_shape_para2 (setq _agv_shape_para2 __agv_shape_para2)) _agv_shape_para2)
  (:agv_candidate
   (&optional __agv_candidate)
   (if __agv_candidate (setq _agv_candidate __agv_candidate)) _agv_candidate)
  (:agv_transfer_type
   (&optional __agv_transfer_type)
   (if __agv_transfer_type (setq _agv_transfer_type __agv_transfer_type)) _agv_transfer_type)
  (:put_in_service_date
   (&optional __put_in_service_date)
   (if __put_in_service_date (setq _put_in_service_date __put_in_service_date)) _put_in_service_date)
  (:work_comulative_time
   (&optional __work_comulative_time)
   (if __work_comulative_time (setq _work_comulative_time __work_comulative_time)) _work_comulative_time)
  (:current_status
   (&optional __current_status)
   (if __current_status (setq _current_status __current_status)) _current_status)
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
    ;; string _agv_standtype
    4 (length _agv_standtype)
    ;; string _agv_model_no
    4 (length _agv_model_no)
    ;; string _agv_name
    4 (length _agv_name)
    ;; uint8 _agv_shape
    1
    ;; float32 _agv_shape_para0
    4
    ;; float32 _agv_shape_para1
    4
    ;; float32 _agv_shape_para2
    4
    ;; uint8 _agv_candidate
    1
    ;; uint8 _agv_transfer_type
    1
    ;; string _put_in_service_date
    4 (length _put_in_service_date)
    ;; float32 _work_comulative_time
    4
    ;; uint8 _current_status
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
     ;; string _agv_standtype
       (write-long (length _agv_standtype) s) (princ _agv_standtype s)
     ;; string _agv_model_no
       (write-long (length _agv_model_no) s) (princ _agv_model_no s)
     ;; string _agv_name
       (write-long (length _agv_name) s) (princ _agv_name s)
     ;; uint8 _agv_shape
       (write-byte _agv_shape s)
     ;; float32 _agv_shape_para0
       (sys::poke _agv_shape_para0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agv_shape_para1
       (sys::poke _agv_shape_para1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _agv_shape_para2
       (sys::poke _agv_shape_para2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _agv_candidate
       (write-byte _agv_candidate s)
     ;; uint8 _agv_transfer_type
       (write-byte _agv_transfer_type s)
     ;; string _put_in_service_date
       (write-long (length _put_in_service_date) s) (princ _put_in_service_date s)
     ;; float32 _work_comulative_time
       (sys::poke _work_comulative_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _current_status
       (write-byte _current_status s)
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
   ;; string _agv_standtype
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agv_standtype (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _agv_model_no
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agv_model_no (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _agv_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agv_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _agv_shape
     (setq _agv_shape (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _agv_shape_para0
     (setq _agv_shape_para0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agv_shape_para1
     (setq _agv_shape_para1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _agv_shape_para2
     (setq _agv_shape_para2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _agv_candidate
     (setq _agv_candidate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _agv_transfer_type
     (setq _agv_transfer_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _put_in_service_date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _put_in_service_date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _work_comulative_time
     (setq _work_comulative_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _current_status
     (setq _current_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_agv_main :md5sum-) "feec446d0776ec569e61a0ea7c5875f7")
(setf (get cellctrl_control_msgs::cell_agv_main :datatype-) "cellctrl_control_msgs/cell_agv_main")
(setf (get cellctrl_control_msgs::cell_agv_main :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)
string unique_code 		        # must-have,UNIQUE INDEX	
string agv_standtype		   
string agv_model_no 		 
string agv_name 		 
uint8  agv_shape 	
float32 agv_shape_para0 
float32 agv_shape_para1 
float32 agv_shape_para2 	
uint8  agv_candidate 
uint8  agv_transfer_type
string put_in_service_date
float32 work_comulative_time
uint8 current_status
string update_time			# must-have 	 

")



(provide :cellctrl_control_msgs/cell_agv_main "feec446d0776ec569e61a0ea7c5875f7")


