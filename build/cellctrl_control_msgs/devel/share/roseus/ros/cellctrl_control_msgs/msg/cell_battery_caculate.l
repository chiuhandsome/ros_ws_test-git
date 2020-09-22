;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_battery_caculate)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_battery_caculate (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_BATTERY_CACULATE")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_BATTERY_CACULATE"))

(in-package "ROS")
;;//! \htmlinclude cell_battery_caculate.msg.html


(defclass cellctrl_control_msgs::cell_battery_caculate
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _segment_name _segment_ser _ctrl_seg_capacity _ctrl_seg_distance _update_time ))

(defmethod cellctrl_control_msgs::cell_battery_caculate
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:segment_name __segment_name) "")
    ((:segment_ser __segment_ser) 0)
    ((:ctrl_seg_capacity __ctrl_seg_capacity) 0.0)
    ((:ctrl_seg_distance __ctrl_seg_distance) 0.0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _segment_name (string __segment_name))
   (setq _segment_ser (round __segment_ser))
   (setq _ctrl_seg_capacity (float __ctrl_seg_capacity))
   (setq _ctrl_seg_distance (float __ctrl_seg_distance))
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
  (:segment_name
   (&optional __segment_name)
   (if __segment_name (setq _segment_name __segment_name)) _segment_name)
  (:segment_ser
   (&optional __segment_ser)
   (if __segment_ser (setq _segment_ser __segment_ser)) _segment_ser)
  (:ctrl_seg_capacity
   (&optional __ctrl_seg_capacity)
   (if __ctrl_seg_capacity (setq _ctrl_seg_capacity __ctrl_seg_capacity)) _ctrl_seg_capacity)
  (:ctrl_seg_distance
   (&optional __ctrl_seg_distance)
   (if __ctrl_seg_distance (setq _ctrl_seg_distance __ctrl_seg_distance)) _ctrl_seg_distance)
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
    ;; string _segment_name
    4 (length _segment_name)
    ;; uint8 _segment_ser
    1
    ;; float32 _ctrl_seg_capacity
    4
    ;; float32 _ctrl_seg_distance
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
     ;; string _segment_name
       (write-long (length _segment_name) s) (princ _segment_name s)
     ;; uint8 _segment_ser
       (write-byte _segment_ser s)
     ;; float32 _ctrl_seg_capacity
       (sys::poke _ctrl_seg_capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ctrl_seg_distance
       (sys::poke _ctrl_seg_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; string _segment_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _segment_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _segment_ser
     (setq _segment_ser (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _ctrl_seg_capacity
     (setq _ctrl_seg_capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ctrl_seg_distance
     (setq _ctrl_seg_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_battery_caculate :md5sum-) "1951b95a49378539c2b7dc33b9be78f5")
(setf (get cellctrl_control_msgs::cell_battery_caculate :datatype-) "cellctrl_control_msgs/cell_battery_caculate")
(setf (get cellctrl_control_msgs::cell_battery_caculate :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string segment_name	
uint8 segment_ser	   
float32 ctrl_seg_capacity 		 
float32 ctrl_seg_distance 
string update_time			# must-have 		 

")



(provide :cellctrl_control_msgs/cell_battery_caculate "1951b95a49378539c2b7dc33b9be78f5")


