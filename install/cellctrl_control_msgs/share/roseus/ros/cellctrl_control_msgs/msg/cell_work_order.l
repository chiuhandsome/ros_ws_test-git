;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_work_order)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_work_order (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_ORDER")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_ORDER"))

(in-package "ROS")
;;//! \htmlinclude cell_work_order.msg.html


(defclass cellctrl_control_msgs::cell_work_order
  :super ros::object
  :slots (_primary_id _unique_code _order_name _order_desc _order_timestamp _order_steps _update_time ))

(defmethod cellctrl_control_msgs::cell_work_order
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:order_name __order_name) "")
    ((:order_desc __order_desc) "")
    ((:order_timestamp __order_timestamp) "")
    ((:order_steps __order_steps) 0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _order_name (string __order_name))
   (setq _order_desc (string __order_desc))
   (setq _order_timestamp (string __order_timestamp))
   (setq _order_steps (round __order_steps))
   (setq _update_time (string __update_time))
   self)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:unique_code
   (&optional __unique_code)
   (if __unique_code (setq _unique_code __unique_code)) _unique_code)
  (:order_name
   (&optional __order_name)
   (if __order_name (setq _order_name __order_name)) _order_name)
  (:order_desc
   (&optional __order_desc)
   (if __order_desc (setq _order_desc __order_desc)) _order_desc)
  (:order_timestamp
   (&optional __order_timestamp)
   (if __order_timestamp (setq _order_timestamp __order_timestamp)) _order_timestamp)
  (:order_steps
   (&optional __order_steps)
   (if __order_steps (setq _order_steps __order_steps)) _order_steps)
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
    ;; string _order_name
    4 (length _order_name)
    ;; string _order_desc
    4 (length _order_desc)
    ;; string _order_timestamp
    4 (length _order_timestamp)
    ;; uint8 _order_steps
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
     ;; string _order_name
       (write-long (length _order_name) s) (princ _order_name s)
     ;; string _order_desc
       (write-long (length _order_desc) s) (princ _order_desc s)
     ;; string _order_timestamp
       (write-long (length _order_timestamp) s) (princ _order_timestamp s)
     ;; uint8 _order_steps
       (write-byte _order_steps s)
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
   ;; string _order_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _order_desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _order_timestamp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_timestamp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _order_steps
     (setq _order_steps (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_work_order :md5sum-) "1e15f172cc427ffd50071829ee7dd15d")
(setf (get cellctrl_control_msgs::cell_work_order :datatype-) "cellctrl_control_msgs/cell_work_order")
(setf (get cellctrl_control_msgs::cell_work_order :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX	
string order_name		   
string order_desc 		 
string order_timestamp 		 
uint8  order_steps 		 
string update_time			# must-have 	 

")



(provide :cellctrl_control_msgs/cell_work_order "1e15f172cc427ffd50071829ee7dd15d")


