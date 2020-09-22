;; Auto-generated. Do not edit!


(when (boundp 'cellctrl_control_msgs::cell_agv_basetypeitems)
  (if (not (find-package "CELLCTRL_CONTROL_MSGS"))
    (make-package "CELLCTRL_CONTROL_MSGS"))
  (shadow 'cell_agv_basetypeitems (find-package "CELLCTRL_CONTROL_MSGS")))
(unless (find-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_BASETYPEITEMS")
  (make-package "CELLCTRL_CONTROL_MSGS::CELL_AGV_BASETYPEITEMS"))

(in-package "ROS")
;;//! \htmlinclude cell_agv_basetypeitems.msg.html


(defclass cellctrl_control_msgs::cell_agv_basetypeitems
  :super ros::object
  :slots (_primary_id _foreign_key _device_code _device_serno _unique_code _device_tagname _device_tagdesc_TC _device_tagdesc_SC _device_tagdesc_E _update_time ))

(defmethod cellctrl_control_msgs::cell_agv_basetypeitems
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:foreign_key __foreign_key) "")
    ((:device_code __device_code) "")
    ((:device_serno __device_serno) 0)
    ((:unique_code __unique_code) "")
    ((:device_tagname __device_tagname) "")
    ((:device_tagdesc_TC __device_tagdesc_TC) "")
    ((:device_tagdesc_SC __device_tagdesc_SC) "")
    ((:device_tagdesc_E __device_tagdesc_E) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _foreign_key (string __foreign_key))
   (setq _device_code (string __device_code))
   (setq _device_serno (round __device_serno))
   (setq _unique_code (string __unique_code))
   (setq _device_tagname (string __device_tagname))
   (setq _device_tagdesc_TC (string __device_tagdesc_TC))
   (setq _device_tagdesc_SC (string __device_tagdesc_SC))
   (setq _device_tagdesc_E (string __device_tagdesc_E))
   (setq _update_time (string __update_time))
   self)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:foreign_key
   (&optional __foreign_key)
   (if __foreign_key (setq _foreign_key __foreign_key)) _foreign_key)
  (:device_code
   (&optional __device_code)
   (if __device_code (setq _device_code __device_code)) _device_code)
  (:device_serno
   (&optional __device_serno)
   (if __device_serno (setq _device_serno __device_serno)) _device_serno)
  (:unique_code
   (&optional __unique_code)
   (if __unique_code (setq _unique_code __unique_code)) _unique_code)
  (:device_tagname
   (&optional __device_tagname)
   (if __device_tagname (setq _device_tagname __device_tagname)) _device_tagname)
  (:device_tagdesc_TC
   (&optional __device_tagdesc_TC)
   (if __device_tagdesc_TC (setq _device_tagdesc_TC __device_tagdesc_TC)) _device_tagdesc_TC)
  (:device_tagdesc_SC
   (&optional __device_tagdesc_SC)
   (if __device_tagdesc_SC (setq _device_tagdesc_SC __device_tagdesc_SC)) _device_tagdesc_SC)
  (:device_tagdesc_E
   (&optional __device_tagdesc_E)
   (if __device_tagdesc_E (setq _device_tagdesc_E __device_tagdesc_E)) _device_tagdesc_E)
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
    ;; string _device_code
    4 (length _device_code)
    ;; uint8 _device_serno
    1
    ;; string _unique_code
    4 (length _unique_code)
    ;; string _device_tagname
    4 (length _device_tagname)
    ;; string _device_tagdesc_TC
    4 (length _device_tagdesc_TC)
    ;; string _device_tagdesc_SC
    4 (length _device_tagdesc_SC)
    ;; string _device_tagdesc_E
    4 (length _device_tagdesc_E)
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
     ;; string _device_code
       (write-long (length _device_code) s) (princ _device_code s)
     ;; uint8 _device_serno
       (write-byte _device_serno s)
     ;; string _unique_code
       (write-long (length _unique_code) s) (princ _unique_code s)
     ;; string _device_tagname
       (write-long (length _device_tagname) s) (princ _device_tagname s)
     ;; string _device_tagdesc_TC
       (write-long (length _device_tagdesc_TC) s) (princ _device_tagdesc_TC s)
     ;; string _device_tagdesc_SC
       (write-long (length _device_tagdesc_SC) s) (princ _device_tagdesc_SC s)
     ;; string _device_tagdesc_E
       (write-long (length _device_tagdesc_E) s) (princ _device_tagdesc_E s)
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
   ;; string _device_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _device_serno
     (setq _device_serno (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _unique_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unique_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_tagname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_tagname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_tagdesc_TC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_tagdesc_TC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_tagdesc_SC
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_tagdesc_SC (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_tagdesc_E
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_tagdesc_E (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cellctrl_control_msgs::cell_agv_basetypeitems :md5sum-) "2b98f1617feb9698e8478fb3dda2fb17")
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems :datatype-) "cellctrl_control_msgs/cell_agv_basetypeitems")
(setf (get cellctrl_control_msgs::cell_agv_basetypeitems :definition-)
      "string primary_id 			# must-have,UUID : primary_key(system_id)			
string foreign_key 		       	# foreign-key	
string device_code		   
uint8  device_serno 
string unique_code			# must-have,UNIQUE INDEX		 
string device_tagname 		 
string device_tagdesc_TC 	
string device_tagdesc_SC 
string device_tagdesc_E 	 
string update_time 			# must-have		 

")



(provide :cellctrl_control_msgs/cell_agv_basetypeitems "2b98f1617feb9698e8478fb3dda2fb17")


