;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_run_stateGoal)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_run_stateGoal (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))

(in-package "ROS")
;;//! \htmlinclude robot_run_stateGoal.msg.html


(intern "*GET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*GET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*GET* 1)
(intern "*SET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*SET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*SET* 2)
(intern "*GETALL*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*GETALL* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*GETALL* 3)
(intern "*PRE_GET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*PRE_GET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*PRE_GET* 4)
(intern "*PRE_SET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*PRE_SET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*PRE_SET* 5)
(intern "*PRE_GETALL*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*PRE_GETALL* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*PRE_GETALL* 6)
(intern "*MANU_GET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*MANU_GET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*MANU_GET* 7)
(intern "*MANU_SET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*MANU_SET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*MANU_SET* 8)
(intern "*MANU_GETALL*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*MANU_GETALL* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*MANU_GETALL* 9)
(intern "*MANU_STARTCHECK*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*MANU_STARTCHECK* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*MANU_STARTCHECK* 10)
(intern "*MANU_MODESET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*MANU_MODESET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*MANU_MODESET* 11)
(intern "*ALARM_RESETCHECK*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*ALARM_RESETCHECK* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*ALARM_RESETCHECK* 12)
(intern "*ALARM_RECOVERYCHECK*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*ALARM_RECOVERYCHECK* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*ALARM_RECOVERYCHECK* 13)
(intern "*ALARM_RECOVERY_GETALL*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*ALARM_RECOVERY_GETALL* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*ALARM_RECOVERY_GETALL* 14)
(intern "*SYS_RESTARTCHECK*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*SYS_RESTARTCHECK* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*SYS_RESTARTCHECK* 15)
(intern "*REMOTE_STARTCHECK*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*REMOTE_STARTCHECK* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*REMOTE_STARTCHECK* 16)
(intern "*REMOTE_GETALL*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*REMOTE_GETALL* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*REMOTE_GETALL* 17)
(intern "*REMOTE_MODESET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*REMOTE_MODESET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*REMOTE_MODESET* 18)
(intern "*PLANTOEXEC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(shadow '*PLANTOEXEC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_RUN_STATEGOAL"))
(defconstant robot_scheduling_msgs::robot_run_stateGoal::*PLANTOEXEC* 19)
(defclass robot_scheduling_msgs::robot_run_stateGoal
  :super ros::object
  :slots (_command _set_status _set_status_code ))

(defmethod robot_scheduling_msgs::robot_run_stateGoal
  (:init
   (&key
    ((:command __command) 0)
    ((:set_status __set_status) 0)
    ((:set_status_code __set_status_code) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _set_status (round __set_status))
   (setq _set_status_code (string __set_status_code))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:set_status
   (&optional __set_status)
   (if __set_status (setq _set_status __set_status)) _set_status)
  (:set_status_code
   (&optional __set_status_code)
   (if __set_status_code (setq _set_status_code __set_status_code)) _set_status_code)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; uint8 _set_status
    1
    ;; string _set_status_code
    4 (length _set_status_code)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; uint8 _set_status
       (write-byte _set_status s)
     ;; string _set_status_code
       (write-long (length _set_status_code) s) (princ _set_status_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _set_status
     (setq _set_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _set_status_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _set_status_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::robot_run_stateGoal :md5sum-) "689dd4985997762e8811a55ee18bb5f4")
(setf (get robot_scheduling_msgs::robot_run_stateGoal :datatype-) "robot_scheduling_msgs/robot_run_stateGoal")
(setf (get robot_scheduling_msgs::robot_run_stateGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
uint8 GET=1
uint8 SET=2
uint8 GETALL=3
uint8 PRE_GET=4
uint8 PRE_SET=5
uint8 PRE_GETALL=6
uint8 MANU_GET=7
uint8 MANU_SET=8
uint8 MANU_GETALL=9
uint8 MANU_STARTCHECK=10
uint8 MANU_MODESET=11
uint8 ALARM_RESETCHECK=12
uint8 ALARM_RECOVERYCHECK=13
uint8 ALARM_RECOVERY_GETALL=14
uint8 SYS_RESTARTCHECK=15
uint8 REMOTE_STARTCHECK=16
uint8 REMOTE_GETALL=17
uint8 REMOTE_MODESET=18
uint8 PLANTOEXEC=19
uint8 command
uint8 set_status
#uint8[] set_alarmcode
string set_status_code	#for alarm code or other's application

")



(provide :robot_scheduling_msgs/robot_run_stateGoal "689dd4985997762e8811a55ee18bb5f4")


