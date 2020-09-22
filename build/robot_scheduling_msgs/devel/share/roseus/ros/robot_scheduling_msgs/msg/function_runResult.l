;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::function_runResult)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'function_runResult (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT")
  (make-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))

(in-package "ROS")
;;//! \htmlinclude function_runResult.msg.html


(intern "*OK*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*OK* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*OK* 1)
(intern "*NOT_OK*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*NOT_OK* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*NOT_OK* 2)
(intern "*TIMED_OUT*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*TIMED_OUT* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*TIMED_OUT* 3)
(intern "*OUT_OF_TIMES*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*OUT_OF_TIMES* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*OUT_OF_TIMES* 4)
(intern "*NOT_FUNCTION_ID*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*NOT_FUNCTION_ID* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*NOT_FUNCTION_ID* 5)
(intern "*FUNCTION_DELAY*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*FUNCTION_DELAY* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*FUNCTION_DELAY* 11)
(intern "*FUNCTION_TURN*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*FUNCTION_TURN* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*FUNCTION_TURN* 12)
(intern "*FUNCTION_DOCK*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*FUNCTION_DOCK* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*FUNCTION_DOCK* 13)
(intern "*FUNCTION_UNDOCK*" (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(shadow '*FUNCTION_UNDOCK* (find-package "ROBOT_SCHEDULING_MSGS::FUNCTION_RUNRESULT"))
(defconstant robot_scheduling_msgs::function_runResult::*FUNCTION_UNDOCK* 14)
(defclass robot_scheduling_msgs::function_runResult
  :super ros::object
  :slots (_result ))

(defmethod robot_scheduling_msgs::function_runResult
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

(setf (get robot_scheduling_msgs::function_runResult :md5sum-) "470d1874c52647f9e84059a8c897fd86")
(setf (get robot_scheduling_msgs::function_runResult :datatype-) "robot_scheduling_msgs/function_runResult")
(setf (get robot_scheduling_msgs::function_runResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 NOT_FUNCTION_ID=5
uint8 FUNCTION_DELAY=11
uint8 FUNCTION_TURN=12
uint8 FUNCTION_DOCK=13
uint8 FUNCTION_UNDOCK=14
uint8 result

")



(provide :robot_scheduling_msgs/function_runResult "470d1874c52647f9e84059a8c897fd86")

