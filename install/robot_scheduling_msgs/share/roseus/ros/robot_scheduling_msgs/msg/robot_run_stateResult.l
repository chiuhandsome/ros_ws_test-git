;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_run_stateResult)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_run_stateResult (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))

(in-package "ROS")
;;//! \htmlinclude robot_run_stateResult.msg.html


(intern "*NONE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*NONE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*NONE* 10)
(intern "*UNKNOW*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*UNKNOW* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*UNKNOW* 11)
(intern "*AWARED*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*AWARED* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*AWARED* 12)
(intern "*STANDBY*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*STANDBY* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*STANDBY* 13)
(intern "*MANUAL*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*MANUAL* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*MANUAL* 14)
(intern "*REMOTE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*REMOTE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*REMOTE* 15)
(intern "*PAUSE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*PAUSE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*PAUSE* 16)
(intern "*M_NONE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*M_NONE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*M_NONE* 20)
(intern "*M_PLANTOEXEC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*M_PLANTOEXEC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*M_PLANTOEXEC* 21)
(intern "*M_MOVEINT*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*M_MOVEINT* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*M_MOVEINT* 22)
(intern "*M_MOVE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*M_MOVE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*M_MOVE* 23)
(intern "*M_TURN*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*M_TURN* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*M_TURN* 24)
(intern "*M_WORKSHEET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*M_WORKSHEET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*M_WORKSHEET* 25)
(intern "*R_NONE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*R_NONE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*R_NONE* 30)
(intern "*R_WORKSHEET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*R_WORKSHEET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*R_WORKSHEET* 31)
(intern "*RECR_NONE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*RECR_NONE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*RECR_NONE* 40)
(intern "*RECR_PLANTOEXEC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*RECR_PLANTOEXEC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*RECR_PLANTOEXEC* 41)
(intern "*OK*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*OK* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*OK* 1)
(intern "*NOT_OK*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*NOT_OK* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*NOT_OK* 2)
(intern "*TIMED_OUT*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*TIMED_OUT* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*TIMED_OUT* 3)
(intern "*OUT_OF_TIMES*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*OUT_OF_TIMES* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*OUT_OF_TIMES* 4)
(intern "*ALARM*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*ALARM* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*ALARM* 5)
(intern "*NOT_ALARM*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*NOT_ALARM* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*NOT_ALARM* 6)
(intern "*PASS*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*PASS* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*PASS* 7)
(intern "*CHANGE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*CHANGE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*CHANGE* 8)
(intern "*NOT_CHANGE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(shadow '*NOT_CHANGE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATERESULT"))
(defconstant robot_scheduling_msgs::robot_run_stateResult::*NOT_CHANGE* 9)
(defclass robot_scheduling_msgs::robot_run_stateResult
  :super ros::object
  :slots (_status _result ))

(defmethod robot_scheduling_msgs::robot_run_stateResult
  (:init
   (&key
    ((:status __status) 0)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _result (round __result))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::robot_run_stateResult :md5sum-) "f0a2e84d2729bb798342792bacb089ff")
(setf (get robot_scheduling_msgs::robot_run_stateResult :datatype-) "robot_scheduling_msgs/robot_run_stateResult")
(setf (get robot_scheduling_msgs::robot_run_stateResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
uint8 NONE=10
uint8 UNKNOW=11
uint8 AWARED=12
uint8 STANDBY=13
uint8 MANUAL=14
uint8 REMOTE=15
uint8 PAUSE=16
uint8 M_NONE=20
uint8 M_PLANTOEXEC=21
uint8 M_MOVEINT=22
uint8 M_MOVE=23
uint8 M_TURN=24
uint8 M_WORKSHEET=25
uint8 R_NONE=30
uint8 R_WORKSHEET=31
uint8 RECR_NONE=40
uint8 RECR_PLANTOEXEC=41
uint8 status
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 ALARM=5
uint8 NOT_ALARM=6
uint8 PASS=7
uint8 CHANGE=8
uint8 NOT_CHANGE=9
uint8 result

")



(provide :robot_scheduling_msgs/robot_run_stateResult "f0a2e84d2729bb798342792bacb089ff")


