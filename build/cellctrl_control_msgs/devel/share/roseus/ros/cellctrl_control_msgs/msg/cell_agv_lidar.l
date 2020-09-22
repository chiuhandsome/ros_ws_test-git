;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_agv_lidar)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_agv_lidar (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_LIDAR")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_LIDAR"))

(in-package "ROS")
;;//! \htmlinclude cell_agv_lidar.msg.html


(defclass cellctrl_control_msgs::cell_agv_lidar
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _tagname _tag_ser _device_code _device_serialno _put_in_service_date _work_comulative_time _current_status _update_time ))

(defmethod cellctrl_control_msgs::cell_agv_lidar
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:tagname __tagname) "")
    ((:tag_ser __tag_ser) 0)
    ((:device_code __device_code) "")
    ((:device_serialno __device_serialno) "")
    ((:put_in_service_date __put_in_service_date) "")
    ((:work_comulative_time __work_comulative_time) 0.0)
    ((:current_status __current_status) 0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _tagname (string __tagname))
   (setq _tag_ser (round __tag_ser))
   (setq _device_code (string __device_code))
   (setq _device_serialno (string __device_serialno))
   (setq _put_in_service_date (string __put_in_service_date))
   (setq _work_comulative_time (float __work_comulative_time))
   (setq _current_status (round __current_status))
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
  (:tagname
   (&optional __tagname)
   (if __tagname (setq _tagname __tagname)) _tagname)
  (:tag_ser
   (&optional __tag_ser)
   (if __tag_ser (setq _tag_ser __tag_ser)) _tag_ser)
  (:device_code
   (&optional __device_code)
   (if __device_code (setq _device_code __device_code)) _device_code)
  (:device_serialno
   (&optional __device_serialno)
   (if __device_serialno (setq _device_serialno __device_serialno)) _device_serialno)
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
    ;; string _foreign_key
    4 (length _foreign_key)
    ;; string _unique_code
    4 (length _unique_code)
    ;; string _tagname
    4 (length _tagname)
    ;; uint8 _tag_ser
    1
    ;; string _device_code
    4 (length _device_code)
    ;; string _device_serialno
    4 (length _device_serialno)
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
     ;; string _foreign_key
       (write-long (length _foreign_key) s) (princ _foreign_key s)
     ;; string _unique_code
       (write-long (length _unique_code) s) (princ _unique_code s)
     ;; string _tagname
       (write-long (length _tagname) s) (princ _tagname s)
     ;; uint8 _tag_ser
       (write-byte _tag_ser s)
     ;; string _device_code
       (write-long (length _device_code) s) (princ _device_code s)
     ;; string _device_serialno
       (write-long (length _device_serialno) s) (princ _device_serialno s)
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
   ;; string _foreign_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _foreign_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _unique_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unique_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tagname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tagname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _tag_ser
     (setq _tag_ser (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _device_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_serialno
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_serialno (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get cellctrl_control_msgs::cell_agv_lidar :md5sum-) "6cc23869890ef4a0917ab02d7306f61e")
(setf (get cellctrl_control_msgs::cell_agv_lidar :datatype-) "cellctrl_control_msgs/cell_agv_lidar")
(setf (get cellctrl_control_msgs::cell_agv_lidar :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string tagname		   
uint8 tag_ser 
string device_code	
string device_serialno	 
string put_in_service_date 		 
float32  work_comulative_time 	
uint8  current_status 
string update_time			# must-have 	 

")



(provide :cellctrl_control_msgs/cell_agv_lidar "6cc23869890ef4a0917ab02d7306f61e")


