;; Auto-generated. Do not edit!


(when (boundp 'samsungcmd_msgs::samsung_work_id)
  (if (not (find-package "SAMSUNGCMD_MSGS"))
    (make-package "SAMSUNGCMD_MSGS"))
  (shadow 'samsung_work_id (find-package "SAMSUNGCMD_MSGS")))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_WORK_ID")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_WORK_ID"))

(in-package "ROS")
;;//! \htmlinclude samsung_work_id.msg.html


(defclass samsungcmd_msgs::samsung_work_id
  :super ros::object
  :slots (_key_id _work_id _target_station_id _work_type_id _next_station_id _update_time ))

(defmethod samsungcmd_msgs::samsung_work_id
  (:init
   (&key
    ((:key_id __key_id) "")
    ((:work_id __work_id) 0)
    ((:target_station_id __target_station_id) 0)
    ((:work_type_id __work_type_id) 0)
    ((:next_station_id __next_station_id) 0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _key_id (string __key_id))
   (setq _work_id (round __work_id))
   (setq _target_station_id (round __target_station_id))
   (setq _work_type_id (round __work_type_id))
   (setq _next_station_id (round __next_station_id))
   (setq _update_time (string __update_time))
   self)
  (:key_id
   (&optional __key_id)
   (if __key_id (setq _key_id __key_id)) _key_id)
  (:work_id
   (&optional __work_id)
   (if __work_id (setq _work_id __work_id)) _work_id)
  (:target_station_id
   (&optional __target_station_id)
   (if __target_station_id (setq _target_station_id __target_station_id)) _target_station_id)
  (:work_type_id
   (&optional __work_type_id)
   (if __work_type_id (setq _work_type_id __work_type_id)) _work_type_id)
  (:next_station_id
   (&optional __next_station_id)
   (if __next_station_id (setq _next_station_id __next_station_id)) _next_station_id)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:serialization-length
   ()
   (+
    ;; string _key_id
    4 (length _key_id)
    ;; uint16 _work_id
    2
    ;; uint16 _target_station_id
    2
    ;; uint8 _work_type_id
    1
    ;; uint16 _next_station_id
    2
    ;; string _update_time
    4 (length _update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key_id
       (write-long (length _key_id) s) (princ _key_id s)
     ;; uint16 _work_id
       (write-word _work_id s)
     ;; uint16 _target_station_id
       (write-word _target_station_id s)
     ;; uint8 _work_type_id
       (write-byte _work_type_id s)
     ;; uint16 _next_station_id
       (write-word _next_station_id s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _work_id
     (setq _work_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _target_station_id
     (setq _target_station_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _work_type_id
     (setq _work_type_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _next_station_id
     (setq _next_station_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get samsungcmd_msgs::samsung_work_id :md5sum-) "56eb78950956dc0347226dcaeda29115")
(setf (get samsungcmd_msgs::samsung_work_id :datatype-) "samsungcmd_msgs/samsung_work_id")
(setf (get samsungcmd_msgs::samsung_work_id :definition-)
      "string key_id
uint16 work_id
uint16 target_station_id	 
uint8  work_type_id		# 0:loader-loading 1:loader-unloading 2:unloader-loading 3:unloader-unloading
uint16 next_station_id
string 	update_time

")



(provide :samsungcmd_msgs/samsung_work_id "56eb78950956dc0347226dcaeda29115")


