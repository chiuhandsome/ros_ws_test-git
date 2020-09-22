;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::WorkSheetMain)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'WorkSheetMain (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::WORKSHEETMAIN")
  (make-package "CAR_DB_MANAGER_MSGS::WORKSHEETMAIN"))

(in-package "ROS")
;;//! \htmlinclude WorkSheetMain.msg.html


(defclass car_db_manager_msgs::WorkSheetMain
  :super ros::object
  :slots (_primary_id _unique_code _base_name _occur_time _workitems_num _update_time ))

(defmethod car_db_manager_msgs::WorkSheetMain
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_name __base_name) "")
    ((:occur_time __occur_time) "")
    ((:workitems_num __workitems_num) 0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_name (string __base_name))
   (setq _occur_time (string __occur_time))
   (setq _workitems_num (round __workitems_num))
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
  (:occur_time
   (&optional __occur_time)
   (if __occur_time (setq _occur_time __occur_time)) _occur_time)
  (:workitems_num
   (&optional __workitems_num)
   (if __workitems_num (setq _workitems_num __workitems_num)) _workitems_num)
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
    ;; string _occur_time
    4 (length _occur_time)
    ;; uint8 _workitems_num
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
     ;; string _base_name
       (write-long (length _base_name) s) (princ _base_name s)
     ;; string _occur_time
       (write-long (length _occur_time) s) (princ _occur_time s)
     ;; uint8 _workitems_num
       (write-byte _workitems_num s)
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
   ;; string _occur_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _occur_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _workitems_num
     (setq _workitems_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::WorkSheetMain :md5sum-) "e2f31b772c997b6902aa171af4bda02e")
(setf (get car_db_manager_msgs::WorkSheetMain :datatype-) "car_db_manager_msgs/WorkSheetMain")
(setf (get car_db_manager_msgs::WorkSheetMain :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
string occur_time
uint8 workitems_num
string update_time			# must-have 	 


")



(provide :car_db_manager_msgs/WorkSheetMain "e2f31b772c997b6902aa171af4bda02e")


