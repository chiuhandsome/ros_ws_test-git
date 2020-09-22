;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_work_ordergoods)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_work_ordergoods (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_ORDERGOODS")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_WORK_ORDERGOODS"))

(in-package "ROS")
;;//! \htmlinclude cell_work_ordergoods.msg.html


(defclass cellctrl_control_msgs::cell_work_ordergoods
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _order_goods_name _order_goods_desc _update_time ))

(defmethod cellctrl_control_msgs::cell_work_ordergoods
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:order_goods_name __order_goods_name) "")
    ((:order_goods_desc __order_goods_desc) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _order_goods_name (string __order_goods_name))
   (setq _order_goods_desc (string __order_goods_desc))
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
  (:order_goods_name
   (&optional __order_goods_name)
   (if __order_goods_name (setq _order_goods_name __order_goods_name)) _order_goods_name)
  (:order_goods_desc
   (&optional __order_goods_desc)
   (if __order_goods_desc (setq _order_goods_desc __order_goods_desc)) _order_goods_desc)
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
    ;; string _order_goods_name
    4 (length _order_goods_name)
    ;; string _order_goods_desc
    4 (length _order_goods_desc)
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
     ;; string _order_goods_name
       (write-long (length _order_goods_name) s) (princ _order_goods_name s)
     ;; string _order_goods_desc
       (write-long (length _order_goods_desc) s) (princ _order_goods_desc s)
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
   ;; string _order_goods_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_goods_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _order_goods_desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_goods_desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_work_ordergoods :md5sum-) "b36d2655024c1019213e7c3b275c1b81")
(setf (get cellctrl_control_msgs::cell_work_ordergoods :datatype-) "cellctrl_control_msgs/cell_work_ordergoods")
(setf (get cellctrl_control_msgs::cell_work_ordergoods :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)	
string foreign_key	
string unique_code 		        # must-have,UNIQUE INDEX	
string order_goods_name		   
string order_goods_desc 
string update_time			# must-have 	 

")



(provide :cellctrl_control_msgs/cell_work_ordergoods "b36d2655024c1019213e7c3b275c1b81")


