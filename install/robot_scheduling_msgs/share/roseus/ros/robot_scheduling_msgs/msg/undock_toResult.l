;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::undock_toResult)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'undock_toResult (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT")
  (make-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))

(in-package "ROS")
;;//! \htmlinclude undock_toResult.msg.html


(intern "*OK*" (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(shadow '*OK* (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(defconstant robot_scheduling_msgs::undock_toResult::*OK* 1)
(intern "*NOT_OK*" (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(shadow '*NOT_OK* (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(defconstant robot_scheduling_msgs::undock_toResult::*NOT_OK* 2)
(intern "*TIMED_OUT*" (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(shadow '*TIMED_OUT* (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(defconstant robot_scheduling_msgs::undock_toResult::*TIMED_OUT* 3)
(intern "*OUT_OF_TIMES*" (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(shadow '*OUT_OF_TIMES* (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(defconstant robot_scheduling_msgs::undock_toResult::*OUT_OF_TIMES* 4)
(intern "*NOT_PREUNDOCK_ID*" (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(shadow '*NOT_PREUNDOCK_ID* (find-package "ROBOT_SCHEDULING_MSGS::UNDOCK_TORESULT"))
(defconstant robot_scheduling_msgs::undock_toResult::*NOT_PREUNDOCK_ID* 5)
(defclass robot_scheduling_msgs::undock_toResult
  :super ros::object
  :slots (_result ))

(defmethod robot_scheduling_msgs::undock_toResult
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::undock_toResult :md5sum-) "f511a7ebe251caa291ef80387165ed20")
(setf (get robot_scheduling_msgs::undock_toResult :datatype-) "robot_scheduling_msgs/undock_toResult")
(setf (get robot_scheduling_msgs::undock_toResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 NOT_PREUNDOCK_ID=5
uint8 result

")



(provide :robot_scheduling_msgs/undock_toResult "f511a7ebe251caa291ef80387165ed20")

