;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_maintainhistory)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_maintainhistory (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_MAINTAINHISTORY")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_MAINTAINHISTORY"))

(in-package "ROS")
;;//! \htmlinclude cell_maintainhistory.msg.html


(defclass cellctrl_control_msgs::cell_maintainhistory
  :super ros::object
  :slots (_primary_id _foreign_key _unique_code _maintain_name _maintain_type _maintain_code _update_time ))

(defmethod cellctrl_control_msgs::cell_maintainhistory
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:unique_code __unique_code) "")
    ((:maintain_name __maintain_name) "")
    ((:maintain_type __maintain_type) 0)
    ((:maintain_code __maintain_code) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _unique_code (string __unique_code))
   (setq _maintain_name (string __maintain_name))
   (setq _maintain_type (round __maintain_type))
   (setq _maintain_code (string __maintain_code))
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
  (:maintain_name
   (&optional __maintain_name)
   (if __maintain_name (setq _maintain_name __maintain_name)) _maintain_name)
  (:maintain_type
   (&optional __maintain_type)
   (if __maintain_type (setq _maintain_type __maintain_type)) _maintain_type)
  (:maintain_code
   (&optional __maintain_code)
   (if __maintain_code (setq _maintain_code __maintain_code)) _maintain_code)
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
    ;; string _maintain_name
    4 (length _maintain_name)
    ;; uint8 _maintain_type
    1
    ;; string _maintain_code
    4 (length _maintain_code)
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
     ;; string _maintain_name
       (write-long (length _maintain_name) s) (princ _maintain_name s)
     ;; uint8 _maintain_type
       (write-byte _maintain_type s)
     ;; string _maintain_code
       (write-long (length _maintain_code) s) (princ _maintain_code s)
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
   ;; string _maintain_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _maintain_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _maintain_type
     (setq _maintain_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _maintain_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _maintain_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_maintainhistory :md5sum-) "8bea5986a227efb1d37ca40187bb9a02")
(setf (get cellctrl_control_msgs::cell_maintainhistory :datatype-) "cellctrl_control_msgs/cell_maintainhistory")
(setf (get cellctrl_control_msgs::cell_maintainhistory :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string maintain_name		   
uint8 maintain_type 		 
string maintain_code 	
string update_time			# must-have 		 

")



(provide :cellctrl_control_msgs/cell_maintainhistory "8bea5986a227efb1d37ca40187bb9a02")


