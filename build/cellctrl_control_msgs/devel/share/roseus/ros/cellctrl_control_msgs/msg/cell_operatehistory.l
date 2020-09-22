;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_operatehistory)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_operatehistory (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_OPERATEHISTORY")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_OPERATEHISTORY"))

(in-package "ROS")
;;//! \htmlinclude cell_operatehistory.msg.html


(defclass cellctrl_control_msgs::cell_operatehistory
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _operate_name _operate_type _operate_code _update_time ))

(defmethod cellctrl_control_msgs::cell_operatehistory
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:operate_name __operate_name) "")
    ((:operate_type __operate_type) 0)
    ((:operate_code __operate_code) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _operate_name (string __operate_name))
   (setq _operate_type (round __operate_type))
   (setq _operate_code (string __operate_code))
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
  (:operate_name
   (&optional __operate_name)
   (if __operate_name (setq _operate_name __operate_name)) _operate_name)
  (:operate_type
   (&optional __operate_type)
   (if __operate_type (setq _operate_type __operate_type)) _operate_type)
  (:operate_code
   (&optional __operate_code)
   (if __operate_code (setq _operate_code __operate_code)) _operate_code)
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
    ;; string _operate_name
    4 (length _operate_name)
    ;; uint8 _operate_type
    1
    ;; string _operate_code
    4 (length _operate_code)
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
     ;; string _operate_name
       (write-long (length _operate_name) s) (princ _operate_name s)
     ;; uint8 _operate_type
       (write-byte _operate_type s)
     ;; string _operate_code
       (write-long (length _operate_code) s) (princ _operate_code s)
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
   ;; string _operate_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operate_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _operate_type
     (setq _operate_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _operate_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operate_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_operatehistory :md5sum-) "1975cdd97c6f9c940606465108aaaf21")
(setf (get cellctrl_control_msgs::cell_operatehistory :datatype-) "cellctrl_control_msgs/cell_operatehistory")
(setf (get cellctrl_control_msgs::cell_operatehistory :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string operate_name		   
uint8 operate_type 		 
string operate_code 	
string update_time			# must-have 		 

")



(provide :cellctrl_control_msgs/cell_operatehistory "1975cdd97c6f9c940606465108aaaf21")


