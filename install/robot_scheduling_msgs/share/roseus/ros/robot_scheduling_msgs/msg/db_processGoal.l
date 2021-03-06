;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::db_processGoal)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'db_processGoal (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL")
  (make-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))

(in-package "ROS")
;;//! \htmlinclude db_processGoal.msg.html


(intern "*DBCMD_GET_CHKPARAMS*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_GET_CHKPARAMS* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_GET_CHKPARAMS* 1)
(intern "*DBCMD_GET_POSE_ID*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_GET_POSE_ID* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_GET_POSE_ID* 2)
(intern "*DBCMD_GET_FUNC_ID*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_GET_FUNC_ID* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_GET_FUNC_ID* 3)
(intern "*DBCMD_GET_WKSHEET*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_GET_WKSHEET* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_GET_WKSHEET* 4)
(intern "*DBCMD_GET_ALMCODE*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_GET_ALMCODE* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_GET_ALMCODE* 5)
(intern "*DBCMD_GET_OPCODE*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_GET_OPCODE* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_GET_OPCODE* 6)
(intern "*DBCMD_GET_PIDPARAMS*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_GET_PIDPARAMS* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_GET_PIDPARAMS* 7)
(intern "*DBCMD_SET_ALMHIST*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_SET_ALMHIST* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_SET_ALMHIST* 11)
(intern "*DBCMD_SET_OPHIST*" (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(shadow '*DBCMD_SET_OPHIST* (find-package "ROBOT_SCHEDULING_MSGS::DB_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::db_processGoal::*DBCMD_SET_OPHIST* 12)
(defclass robot_scheduling_msgs::db_processGoal
  :super ros::object
  :slots (_cmd_id _cmd_data _db_process_ac_name ))

(defmethod robot_scheduling_msgs::db_processGoal
  (:init
   (&key
    ((:cmd_id __cmd_id) 0)
    ((:cmd_data __cmd_data) "")
    ((:db_process_ac_name __db_process_ac_name) "")
    )
   (send-super :init)
   (setq _cmd_id (round __cmd_id))
   (setq _cmd_data (string __cmd_data))
   (setq _db_process_ac_name (string __db_process_ac_name))
   self)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:cmd_data
   (&optional __cmd_data)
   (if __cmd_data (setq _cmd_data __cmd_data)) _cmd_data)
  (:db_process_ac_name
   (&optional __db_process_ac_name)
   (if __db_process_ac_name (setq _db_process_ac_name __db_process_ac_name)) _db_process_ac_name)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd_id
    1
    ;; string _cmd_data
    4 (length _cmd_data)
    ;; string _db_process_ac_name
    4 (length _db_process_ac_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd_id
       (write-byte _cmd_id s)
     ;; string _cmd_data
       (write-long (length _cmd_data) s) (princ _cmd_data s)
     ;; string _db_process_ac_name
       (write-long (length _db_process_ac_name) s) (princ _db_process_ac_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _cmd_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _db_process_ac_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _db_process_ac_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::db_processGoal :md5sum-) "6d7cf9300754e278f65edfc9d4a39c3c")
(setf (get robot_scheduling_msgs::db_processGoal :datatype-) "robot_scheduling_msgs/db_processGoal")
(setf (get robot_scheduling_msgs::db_processGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
uint8 DBCMD_GET_CHKPARAMS=1
uint8 DBCMD_GET_POSE_ID=2
uint8 DBCMD_GET_FUNC_ID=3
uint8 DBCMD_GET_WKSHEET=4
uint8 DBCMD_GET_ALMCODE=5
uint8 DBCMD_GET_OPCODE=6
uint8 DBCMD_GET_PIDPARAMS=7
uint8 DBCMD_SET_ALMHIST=11
uint8 DBCMD_SET_OPHIST=12
uint8 cmd_id
string cmd_data
string db_process_ac_name

")



(provide :robot_scheduling_msgs/db_processGoal "6d7cf9300754e278f65edfc9d4a39c3c")


