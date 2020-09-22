;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_work_orderitems)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_work_orderitems (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_ORDERITEMS")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_ORDERITEMS"))

(in-package "ROS")
;;//! \htmlinclude cell_work_orderitems.msg.html


(defclass cellctrl_control_msgs::cell_work_orderitems
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _detail_name _station_code _order_step _order_status _start_time _end_time _update_time ))

(defmethod cellctrl_control_msgs::cell_work_orderitems
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:detail_name __detail_name) "")
    ((:station_code __station_code) "")
    ((:order_step __order_step) 0)
    ((:order_status __order_status) 0)
    ((:start_time __start_time) "")
    ((:end_time __end_time) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _detail_name (string __detail_name))
   (setq _station_code (string __station_code))
   (setq _order_step (round __order_step))
   (setq _order_status (round __order_status))
   (setq _start_time (string __start_time))
   (setq _end_time (string __end_time))
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
  (:detail_name
   (&optional __detail_name)
   (if __detail_name (setq _detail_name __detail_name)) _detail_name)
  (:station_code
   (&optional __station_code)
   (if __station_code (setq _station_code __station_code)) _station_code)
  (:order_step
   (&optional __order_step)
   (if __order_step (setq _order_step __order_step)) _order_step)
  (:order_status
   (&optional __order_status)
   (if __order_status (setq _order_status __order_status)) _order_status)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:end_time
   (&optional __end_time)
   (if __end_time (setq _end_time __end_time)) _end_time)
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
    ;; string _detail_name
    4 (length _detail_name)
    ;; string _station_code
    4 (length _station_code)
    ;; uint8 _order_step
    1
    ;; uint8 _order_status
    1
    ;; string _start_time
    4 (length _start_time)
    ;; string _end_time
    4 (length _end_time)
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
     ;; string _detail_name
       (write-long (length _detail_name) s) (princ _detail_name s)
     ;; string _station_code
       (write-long (length _station_code) s) (princ _station_code s)
     ;; uint8 _order_step
       (write-byte _order_step s)
     ;; uint8 _order_status
       (write-byte _order_status s)
     ;; string _start_time
       (write-long (length _start_time) s) (princ _start_time s)
     ;; string _end_time
       (write-long (length _end_time) s) (princ _end_time s)
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
   ;; string _detail_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _station_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _station_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _order_step
     (setq _order_step (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _order_status
     (setq _order_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _start_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_work_orderitems :md5sum-) "85fbac6d4d841525bc960da68aac4ed1")
(setf (get cellctrl_control_msgs::cell_work_orderitems :datatype-) "cellctrl_control_msgs/cell_work_orderitems")
(setf (get cellctrl_control_msgs::cell_work_orderitems :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string detail_name
string station_code		   
uint8  order_step 		 
uint8  order_status 		 
string start_time 	
string end_time 	 
string update_time			# must-have 	 

")



(provide :cellctrl_control_msgs/cell_work_orderitems "85fbac6d4d841525bc960da68aac4ed1")


