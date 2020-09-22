;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::WorkSheetItemsCmd)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'WorkSheetItemsCmd (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::WORKSHEETITEMSCMD")
  (make-package "CAR_DB_MANAGER_MSGS::WORKSHEETITEMSCMD"))
(unless (find-package "CAR_DB_MANAGER_MSGS::WORKSHEETITEMSCMDREQUEST")
  (make-package "CAR_DB_MANAGER_MSGS::WORKSHEETITEMSCMDREQUEST"))
(unless (find-package "CAR_DB_MANAGER_MSGS::WORKSHEETITEMSCMDRESPONSE")
  (make-package "CAR_DB_MANAGER_MSGS::WORKSHEETITEMSCMDRESPONSE"))

(in-package "ROS")





(defclass car_db_manager_msgs::WorkSheetItemsCmdRequest
  :super ros::object
  :slots (_cmd_id _query_base_index _query_opt_index _query_parameter _req_work_sheet_items ))

(defmethod car_db_manager_msgs::WorkSheetItemsCmdRequest
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:query_base_index __query_base_index) "")
    ((:query_opt_index __query_opt_index) "")
    ((:query_parameter __query_parameter) "")
    ((:req_work_sheet_items __req_work_sheet_items) (instance car_db_manager_msgs::WorkSheetItems :init))
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _query_base_index (string __query_base_index))
   (setq _query_opt_index (string __query_opt_index))
   (setq _query_parameter (string __query_parameter))
   (setq _req_work_sheet_items __req_work_sheet_items)
   self)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:query_base_index
   (&optional __query_base_index)
   (if __query_base_index (setq _query_base_index __query_base_index)) _query_base_index)
  (:query_opt_index
   (&optional __query_opt_index)
   (if __query_opt_index (setq _query_opt_index __query_opt_index)) _query_opt_index)
  (:query_parameter
   (&optional __query_parameter)
   (if __query_parameter (setq _query_parameter __query_parameter)) _query_parameter)
  (:req_work_sheet_items
   (&rest __req_work_sheet_items)
   (if (keywordp (car __req_work_sheet_items))
       (send* _req_work_sheet_items __req_work_sheet_items)
     (progn
       (if __req_work_sheet_items (setq _req_work_sheet_items (car __req_work_sheet_items)))
       _req_work_sheet_items)))
  (:serialization-length
   ()
   (+
    ;; int8 _cmd_id
    1
    ;; string _query_base_index
    4 (length _query_base_index)
    ;; string _query_opt_index
    4 (length _query_opt_index)
    ;; string _query_parameter
    4 (length _query_parameter)
    ;; car_db_manager_msgs/WorkSheetItems _req_work_sheet_items
    (send _req_work_sheet_items :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmd_id
       (write-byte _cmd_id s)
     ;; string _query_base_index
       (write-long (length _query_base_index) s) (princ _query_base_index s)
     ;; string _query_opt_index
       (write-long (length _query_opt_index) s) (princ _query_opt_index s)
     ;; string _query_parameter
       (write-long (length _query_parameter) s) (princ _query_parameter s)
     ;; car_db_manager_msgs/WorkSheetItems _req_work_sheet_items
       (send _req_work_sheet_items :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd_id 127) (setq _cmd_id (- _cmd_id 256)))
   ;; string _query_base_index
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query_base_index (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query_opt_index
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query_opt_index (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query_parameter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query_parameter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; car_db_manager_msgs/WorkSheetItems _req_work_sheet_items
     (send _req_work_sheet_items :deserialize buf ptr-) (incf ptr- (send _req_work_sheet_items :serialization-length))
   ;;
   self)
  )

(defclass car_db_manager_msgs::WorkSheetItemsCmdResponse
  :super ros::object
  :slots (_result _error_code _primary_id _update_time _result_work_sheet_items ))

(defmethod car_db_manager_msgs::WorkSheetItemsCmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) "")
    ((:primary_id __primary_id) "")
    ((:update_time __update_time) "")
    ((:result_work_sheet_items __result_work_sheet_items) (let (r) (dotimes (i 0) (push (instance car_db_manager_msgs::WorkSheetItems :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (string __error_code))
   (setq _primary_id (string __primary_id))
   (setq _update_time (string __update_time))
   (setq _result_work_sheet_items __result_work_sheet_items)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:primary_id
   (&optional __primary_id)
   (if __primary_id (setq _primary_id __primary_id)) _primary_id)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:result_work_sheet_items
   (&rest __result_work_sheet_items)
   (if (keywordp (car __result_work_sheet_items))
       (send* _result_work_sheet_items __result_work_sheet_items)
     (progn
       (if __result_work_sheet_items (setq _result_work_sheet_items (car __result_work_sheet_items)))
       _result_work_sheet_items)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _error_code
    4 (length _error_code)
    ;; string _primary_id
    4 (length _primary_id)
    ;; string _update_time
    4 (length _update_time)
    ;; car_db_manager_msgs/WorkSheetItems[] _result_work_sheet_items
    (apply #'+ (send-all _result_work_sheet_items :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _error_code
       (write-long (length _error_code) s) (princ _error_code s)
     ;; string _primary_id
       (write-long (length _primary_id) s) (princ _primary_id s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;; car_db_manager_msgs/WorkSheetItems[] _result_work_sheet_items
     (write-long (length _result_work_sheet_items) s)
     (dolist (elem _result_work_sheet_items)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _primary_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _primary_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; car_db_manager_msgs/WorkSheetItems[] _result_work_sheet_items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_work_sheet_items (let (r) (dotimes (i n) (push (instance car_db_manager_msgs::WorkSheetItems :init) r)) r))
     (dolist (elem- _result_work_sheet_items)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass car_db_manager_msgs::WorkSheetItemsCmd
  :super ros::object
  :slots ())

(setf (get car_db_manager_msgs::WorkSheetItemsCmd :md5sum-) "ca03df846e8f25f35c61601eeeb9f51d")
(setf (get car_db_manager_msgs::WorkSheetItemsCmd :datatype-) "car_db_manager_msgs/WorkSheetItemsCmd")
(setf (get car_db_manager_msgs::WorkSheetItemsCmd :request) car_db_manager_msgs::WorkSheetItemsCmdRequest)
(setf (get car_db_manager_msgs::WorkSheetItemsCmd :response) car_db_manager_msgs::WorkSheetItemsCmdResponse)

(defmethod car_db_manager_msgs::WorkSheetItemsCmdRequest
  (:response () (instance car_db_manager_msgs::WorkSheetItemsCmdResponse :init)))

(setf (get car_db_manager_msgs::WorkSheetItemsCmdRequest :md5sum-) "ca03df846e8f25f35c61601eeeb9f51d")
(setf (get car_db_manager_msgs::WorkSheetItemsCmdRequest :datatype-) "car_db_manager_msgs/WorkSheetItemsCmdRequest")
(setf (get car_db_manager_msgs::WorkSheetItemsCmdRequest :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
WorkSheetItems req_work_sheet_items

================================================================================
MSG: car_db_manager_msgs/WorkSheetItems
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_item_name
uint8 item_ser_no
string occur_time
string target_pose_id
string action_function_id
string action_function_params
string remark
string update_time			# must-have 	 

---
bool result
string error_code
string primary_id
string update_time
WorkSheetItems[] result_work_sheet_items


================================================================================
MSG: car_db_manager_msgs/WorkSheetItems
string primary_id			# must-have,UUID : primary_key(system_id)		
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

(setf (get car_db_manager_msgs::WorkSheetItemsCmdResponse :md5sum-) "ca03df846e8f25f35c61601eeeb9f51d")
(setf (get car_db_manager_msgs::WorkSheetItemsCmdResponse :datatype-) "car_db_manager_msgs/WorkSheetItemsCmdResponse")
(setf (get car_db_manager_msgs::WorkSheetItemsCmdResponse :definition-)
      "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
WorkSheetItems req_work_sheet_items

================================================================================
MSG: car_db_manager_msgs/WorkSheetItems
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_item_name
uint8 item_ser_no
string occur_time
string target_pose_id
string action_function_id
string action_function_params
string remark
string update_time			# must-have 	 

---
bool result
string error_code
string primary_id
string update_time
WorkSheetItems[] result_work_sheet_items


================================================================================
MSG: car_db_manager_msgs/WorkSheetItems
string primary_id			# must-have,UUID : primary_key(system_id)		
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



(provide :car_db_manager_msgs/WorkSheetItemsCmd "ca03df846e8f25f35c61601eeeb9f51d")


