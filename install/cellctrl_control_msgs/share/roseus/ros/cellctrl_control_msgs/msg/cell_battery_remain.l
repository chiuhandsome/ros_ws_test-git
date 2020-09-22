;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_battery_remain)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_battery_remain (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_BATTERY_REMAIN")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_BATTERY_REMAIN"))

(in-package "ROS")
;;//! \htmlinclude cell_battery_remain.msg.html


(defclass cellctrl_control_msgs::cell_battery_remain
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _remain_name _remain_ser _ctrl_seg_capacity _ctrl_seg_efficiency _update_time ))

(defmethod cellctrl_control_msgs::cell_battery_remain
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:remain_name __remain_name) "")
    ((:remain_ser __remain_ser) 0)
    ((:ctrl_seg_capacity __ctrl_seg_capacity) 0.0)
    ((:ctrl_seg_efficiency __ctrl_seg_efficiency) 0.0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _remain_name (string __remain_name))
   (setq _remain_ser (round __remain_ser))
   (setq _ctrl_seg_capacity (float __ctrl_seg_capacity))
   (setq _ctrl_seg_efficiency (float __ctrl_seg_efficiency))
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
  (:remain_name
   (&optional __remain_name)
   (if __remain_name (setq _remain_name __remain_name)) _remain_name)
  (:remain_ser
   (&optional __remain_ser)
   (if __remain_ser (setq _remain_ser __remain_ser)) _remain_ser)
  (:ctrl_seg_capacity
   (&optional __ctrl_seg_capacity)
   (if __ctrl_seg_capacity (setq _ctrl_seg_capacity __ctrl_seg_capacity)) _ctrl_seg_capacity)
  (:ctrl_seg_efficiency
   (&optional __ctrl_seg_efficiency)
   (if __ctrl_seg_efficiency (setq _ctrl_seg_efficiency __ctrl_seg_efficiency)) _ctrl_seg_efficiency)
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
    ;; string _remain_name
    4 (length _remain_name)
    ;; uint8 _remain_ser
    1
    ;; float32 _ctrl_seg_capacity
    4
    ;; float32 _ctrl_seg_efficiency
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
     ;; string _foreign_key
       (write-long (length _foreign_key) s) (princ _foreign_key s)
     ;; string _unique_code
       (write-long (length _unique_code) s) (princ _unique_code s)
     ;; string _remain_name
       (write-long (length _remain_name) s) (princ _remain_name s)
     ;; uint8 _remain_ser
       (write-byte _remain_ser s)
     ;; float32 _ctrl_seg_capacity
       (sys::poke _ctrl_seg_capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ctrl_seg_efficiency
       (sys::poke _ctrl_seg_efficiency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; string _remain_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remain_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _remain_ser
     (setq _remain_ser (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _ctrl_seg_capacity
     (setq _ctrl_seg_capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ctrl_seg_efficiency
     (setq _ctrl_seg_efficiency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_battery_remain :md5sum-) "abd07889143305d736d12035e783fbc9")
(setf (get cellctrl_control_msgs::cell_battery_remain :datatype-) "cellctrl_control_msgs/cell_battery_remain")
(setf (get cellctrl_control_msgs::cell_battery_remain :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string remain_name	
uint8 remain_ser	   
float32 ctrl_seg_capacity 		 
float32 ctrl_seg_efficiency 
string update_time			# must-have 		 

")



(provide :cellctrl_control_msgs/cell_battery_remain "abd07889143305d736d12035e783fbc9")


