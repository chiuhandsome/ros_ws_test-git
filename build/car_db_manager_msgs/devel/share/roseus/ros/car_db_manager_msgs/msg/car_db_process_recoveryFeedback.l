;; Auto-generated. Do not edit!


(when (boundp 'car_db_manager_msgs::car_db_process_recoveryFeedback)
  (if (not (find-package "CAR_DB_MANAGER_MSGS"))
    (make-package "CAR_DB_MANAGER_MSGS"))
  (shadow 'car_db_process_recoveryFeedback (find-package "CAR_DB_MANAGER_MSGS")))
(unless (find-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESS_RECOVERYFEEDBACK")
  (make-package "CAR_DB_MANAGER_MSGS::CAR_DB_PROCESS_RECOVERYFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude car_db_process_recoveryFeedback.msg.html


(defclass car_db_manager_msgs::car_db_process_recoveryFeedback
  :super ros::object
  :slots ())

(defmethod car_db_manager_msgs::car_db_process_recoveryFeedback
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get car_db_manager_msgs::car_db_process_recoveryFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_db_manager_msgs::car_db_process_recoveryFeedback :datatype-) "car_db_manager_msgs/car_db_process_recoveryFeedback")
(setf (get car_db_manager_msgs::car_db_process_recoveryFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message


")



(provide :car_db_manager_msgs/car_db_process_recoveryFeedback "d41d8cd98f00b204e9800998ecf8427e")


