;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_base_transfer)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_base_transfer (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_BASE_TRANSFER")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_BASE_TRANSFER"))

(in-package "ROS")
;;//! \htmlinclude cell_base_transfer.msg.html


(defclass cellctrl_control_msgs::cell_base_transfer
  :super ros::object
  :slots (_primary_id _unique_code _base_name _base_desc_TC _base_desc_SC _base_desc_E _update_time ))

(defmethod cellctrl_control_msgs::cell_base_transfer
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:base_desc_TC __base_desc_TC) "")
    ((:base_desc_SC __base_desc_SC) "")
    ((:base_desc_E __base_desc_E) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _base_desc_TC (string __base_desc_TC))
   (setq _base_desc_SC (string __base_desc_SC))
   (setq _base_desc_E (string __base_desc_E))
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
  (:base_desc_TC
   (&optional __base_desc_TC)
   (if __base_desc_TC (setq _base_desc_TC __base_desc_TC)) _base_desc_TC)
  (:base_desc_SC
   (&optional __base_desc_SC)
   (if __base_desc_SC (setq _base_desc_SC __base_desc_SC)) _base_desc_SC)
  (:base_desc_E
   (&optional __base_desc_E)
   (if __base_desc_E (setq _base_desc_E __base_desc_E)) _base_desc_E)
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
    ;; string _base_desc_TC
    4 (length _base_desc_TC)
    ;; string _base_desc_SC
    4 (length _base_desc_SC)
    ;; string _base_desc_E
    4 (length _base_desc_E)
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
     ;; string _base_desc_TC
       (write-long (length _base_desc_TC) s) (princ _base_desc_TC s)
     ;; string _base_desc_SC
       (write-long (length _base_desc_SC) s) (princ _base_desc_SC s)
     ;; string _base_desc_E
       (write-long (length _base_desc_E) s) (princ _base_desc_E s)
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
   ;; string _base_desc_TC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_desc_TC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_desc_SC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_desc_SC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_desc_E
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_desc_E (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_base_transfer :md5sum-) "7cae712ba514c2339344eb5e99f552cb")
(setf (get cellctrl_control_msgs::cell_base_transfer :datatype-) "cellctrl_control_msgs/cell_base_transfer")
(setf (get cellctrl_control_msgs::cell_base_transfer :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX	
string base_name		   
string base_desc_TC 		 
string base_desc_SC 		 
string base_desc_E 		 
string update_time			# must-have 		 

")



(provide :cellctrl_control_msgs/cell_base_transfer "7cae712ba514c2339344eb5e99f552cb")


