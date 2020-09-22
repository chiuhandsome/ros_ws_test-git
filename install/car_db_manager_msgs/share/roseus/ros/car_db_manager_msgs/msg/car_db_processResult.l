;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::car_db_processResult)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'car_db_processResult (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT")
  (make-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))

(in-package "ROS")
;;//! \htmlinclude car_db_processResult.msg.html


(intern "*OK*" (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))
(shadow '*OK* (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))
(defconstant car_db_manager_msgs::car_db_processResult::*OK* 1)
(intern "*NOT_OK*" (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))
(shadow '*NOT_OK* (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))
(defconstant car_db_manager_msgs::car_db_processResult::*NOT_OK* 2)
(intern "*TIMED_OUT*" (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))
(shadow '*TIMED_OUT* (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))
(defconstant car_db_manager_msgs::car_db_processResult::*TIMED_OUT* 3)
(intern "*OUT_OF_TIMES*" (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))
(shadow '*OUT_OF_TIMES* (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESSRESULT"))
(defconstant car_db_manager_msgs::car_db_processResult::*OUT_OF_TIMES* 4)
(defclass car_db_manager_msgs::car_db_processResult
  :super ros::object
  :slots (_result _result_data ))

(defmethod car_db_manager_msgs::car_db_processResult
  (:init
   (&key
    ((:result __result) 0)
    ((:result_data __result_data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _result_data __result_data)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:result_data
   (&optional __result_data)
   (if __result_data (setq _result_data __result_data)) _result_data)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ;; string[] _result_data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _result_data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;; string[] _result_data
     (write-long (length _result_data) s)
     (dolist (elem _result_data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _result_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result_data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _result_data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::car_db_processResult :md5sum-) "4051716b399768c5d9da66e597eccbc3")
(setf (get car_db_manager_msgs::car_db_processResult :datatype-) "car_db_manager_msgs/car_db_processResult")
(setf (get car_db_manager_msgs::car_db_processResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 result
string[] result_data	# delimiter symbol ==> ,

")



(provide :car_db_manager_msgs/car_db_processResult "4051716b399768c5d9da66e597eccbc3")

