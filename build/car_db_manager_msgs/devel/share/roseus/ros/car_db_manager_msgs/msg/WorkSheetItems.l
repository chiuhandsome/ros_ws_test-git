;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::WorkSheetItems)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'WorkSheetItems (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::WORKSHEETITEMS")
  (make-package "CAR_DB_MANAGER_MSGS::WORKSHEETITEMS"))

(in-package "ROS")
;;//! \htmlinclude WorkSheetItems.msg.html


(defclass car_db_manager_msgs::WorkSheetItems
  :super ros::object
  :slots (_primary_id _unique_code _base_item_name _item_ser_no _occur_time _target_pose_id _action_function_id _action_function_params _remark _update_time ))

(defmethod car_db_manager_msgs::WorkSheetItems
  (:init
   (&key
    ((:primary_id __primary_id) "")
    ((:unique_code __unique_code) "")
    ((:base_item_name __base_item_name) "")
    ((:item_ser_no __item_ser_no) 0)
    ((:occur_time __occur_time) "")
    ((:target_pose_id __target_pose_id) "")
    ((:action_function_id __action_function_id) "")
    ((:action_function_params __action_function_params) "")
    ((:remark __remark) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _primary_id (string __primary_id))
   (setq _unique_code (string __unique_code))
   (setq _base_item_name (string __base_item_name))
   (setq _item_ser_no (round __item_ser_no))
   (setq _occur_time (string __occur_time))
   (setq _target_pose_id (string __target_pose_id))
   (setq _action_function_id (string __action_function_id))
   (setq _action_function_params (string __action_function_params))
   (setq _remark (string __remark))
   (setq _update_time (string __update_time))
   self)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:unique_code
   (&optional __unique_code)
   (if __unique_code (setq _unique_code __unique_code)) _unique_code)
  (:base_item_name
   (&optional __base_item_name)
   (if __base_item_name (setq _base_item_name __base_item_name)) _base_item_name)
  (:item_ser_no
   (&optional __item_ser_no)
   (if __item_ser_no (setq _item_ser_no __item_ser_no)) _item_ser_no)
  (:occur_time
   (&optional __occur_time)
   (if __occur_time (setq _occur_time __occur_time)) _occur_time)
  (:target_pose_id
   (&optional __target_pose_id)
   (if __target_pose_id (setq _target_pose_id __target_pose_id)) _target_pose_id)
  (:action_function_id
   (&optional __action_function_id)
   (if __action_function_id (setq _action_function_id __action_function_id)) _action_function_id)
  (:action_function_params
   (&optional __action_function_params)
   (if __action_function_params (setq _action_function_params __action_function_params)) _action_function_params)
  (:remark
   (&optional __remark)
   (if __remark (setq _remark __remark)) _remark)
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
    ;; string _base_item_name
    4 (length _base_item_name)
    ;; uint8 _item_ser_no
    1
    ;; string _occur_time
    4 (length _occur_time)
    ;; string _target_pose_id
    4 (length _target_pose_id)
    ;; string _action_function_id
    4 (length _action_function_id)
    ;; string _action_function_params
    4 (length _action_function_params)
    ;; string _remark
    4 (length _remark)
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
     ;; string _base_item_name
       (write-long (length _base_item_name) s) (princ _base_item_name s)
     ;; uint8 _item_ser_no
       (write-byte _item_ser_no s)
     ;; string _occur_time
       (write-long (length _occur_time) s) (princ _occur_time s)
     ;; string _target_pose_id
       (write-long (length _target_pose_id) s) (princ _target_pose_id s)
     ;; string _action_function_id
       (write-long (length _action_function_id) s) (princ _action_function_id s)
     ;; string _action_function_params
       (write-long (length _action_function_params) s) (princ _action_function_params s)
     ;; string _remark
       (write-long (length _remark) s) (princ _remark s)
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
   ;; string _base_item_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_item_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _item_ser_no
     (setq _item_ser_no (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _occur_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _occur_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_pose_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_pose_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action_function_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_function_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action_function_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_function_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _remark
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remark (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::WorkSheetItems :md5sum-) "d8d3fc07cc4a98eb22e8a4eb5ef819bd")
(setf (get car_db_manager_msgs::WorkSheetItems :datatype-) "car_db_manager_msgs/WorkSheetItems")
(setf (get car_db_manager_msgs::WorkSheetItems :definition-)
      "string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_item_name
uint8 item_ser_no
string occur_time
string target_pose_id
string action_function_id
string action_function_params
string remark
string update_time			# must-have 	 


")



(provide :car_db_manager_msgs/WorkSheetItems "d8d3fc07cc4a98eb22e8a4eb5ef819bd")


