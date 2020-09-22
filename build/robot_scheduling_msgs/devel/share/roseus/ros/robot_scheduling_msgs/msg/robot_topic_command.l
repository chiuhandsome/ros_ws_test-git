;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_topic_command)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_topic_command (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude robot_topic_command.msg.html


(intern "*GET_STATUS*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*GET_STATUS* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*GET_STATUS* 1)
(intern "*SET_COMMAND*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*SET_COMMAND* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*SET_COMMAND* 2)
(intern "*STATUS*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*STATUS* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*STATUS* 1)
(intern "*MODE_STANDBY*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_STANDBY* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_STANDBY* 3)
(intern "*MODE_MANUAL*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANUAL* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANUAL* 4)
(intern "*MODE_REMOTE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_REMOTE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_REMOTE* 5)
(intern "*MODE_MANU_ACT*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_ACT* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_ACT* 40)
(intern "*MODE_MANU_SET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_SET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_SET* 41)
(intern "*MODE_MANU_NONE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_NONE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_NONE* 400)
(intern "*MODE_MANU_PLANTOEXEC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_PLANTOEXEC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_PLANTOEXEC* 410)
(intern "*MODE_MANU_PLANTOEXEC_RUN*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_PLANTOEXEC_RUN* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_PLANTOEXEC_RUN* 411)
(intern "*MODE_MANU_PLANTOEXEC_END*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_PLANTOEXEC_END* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_PLANTOEXEC_END* 412)
(intern "*MODE_MANU_MOVEINT*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_MOVEINT* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_MOVEINT* 420)
(intern "*MODE_MANU_MOVE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_MOVE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_MOVE* 430)
(intern "*MODE_MANU_TURN*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_TURN* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_TURN* 440)
(intern "*MODE_MANU_WORKSHEET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_WORKSHEET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_WORKSHEET* 450)
(intern "*MODE_MANU_SAVE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_MANU_SAVE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_MANU_SAVE* 460)
(intern "*MODE_REMOTE_ACT*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_REMOTE_ACT* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_REMOTE_ACT* 50)
(intern "*MODE_REMOTE_SET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_REMOTE_SET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_REMOTE_SET* 51)
(intern "*MODE_REMOTE_NONE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_REMOTE_NONE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_REMOTE_NONE* 500)
(intern "*MODE_REMOTEP_WORKSHEET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_REMOTEP_WORKSHEET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_REMOTEP_WORKSHEET* 510)
(intern "*MODE_REMOTEP_WORKSHEET_CONT_TEST*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*MODE_REMOTEP_WORKSHEET_CONT_TEST* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*MODE_REMOTEP_WORKSHEET_CONT_TEST* 520)
(intern "*ALARM_RESET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*ALARM_RESET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*ALARM_RESET* 60)
(intern "*ALARM_RECOVERY_ACT*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*ALARM_RECOVERY_ACT* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*ALARM_RECOVERY_ACT* 70)
(intern "*ALARM_RECOVERY_SET*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*ALARM_RECOVERY_SET* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*ALARM_RECOVERY_SET* 71)
(intern "*ALARM_RECOVERY_NONE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*ALARM_RECOVERY_NONE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*ALARM_RECOVERY_NONE* 700)
(intern "*ALARM_RECOVERY_PLANTOEXEC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*ALARM_RECOVERY_PLANTOEXEC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*ALARM_RECOVERY_PLANTOEXEC* 710)
(intern "*SYSTEM_RESTART*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(shadow '*SYSTEM_RESTART* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_TOPIC_COMMAND"))
(defconstant robot_scheduling_msgs::robot_topic_command::*SYSTEM_RESTART* 80)
(defclass robot_scheduling_msgs::robot_topic_command
  :super ros::object
  :slots (_robot_name _cmd_type _cmd_id _cmd_data ))

(defmethod robot_scheduling_msgs::robot_topic_command
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:cmd_type __cmd_type) 0)
    ((:cmd_id __cmd_id) 0)
    ((:cmd_data __cmd_data) "")
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _cmd_type (round __cmd_type))
   (setq _cmd_id (round __cmd_id))
   (setq _cmd_data (string __cmd_data))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:cmd_data
   (&optional __cmd_data)
   (if __cmd_data (setq _cmd_data __cmd_data)) _cmd_data)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; uint8 _cmd_type
    1
    ;; uint16 _cmd_id
    2
    ;; string _cmd_data
    4 (length _cmd_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; uint16 _cmd_id
       (write-word _cmd_id s)
     ;; string _cmd_data
       (write-long (length _cmd_data) s) (princ _cmd_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _cmd_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::robot_topic_command :md5sum-) "69f0d27f0773a518111335f643914c01")
(setf (get robot_scheduling_msgs::robot_topic_command :datatype-) "robot_scheduling_msgs/robot_topic_command")
(setf (get robot_scheduling_msgs::robot_topic_command :definition-)
      "# set command type and its data 
string robot_name                        # the name of the robot (used in preconditions and topics)
#--------------------------
uint8 GET_STATUS=1
uint8 SET_COMMAND=2
uint8 cmd_type
#--------------------------	
uint16 STATUS=1	 
uint16 MODE_STANDBY=3	
uint16 MODE_MANUAL=4	 
uint16 MODE_REMOTE=5
uint16 MODE_MANU_ACT=40	
uint16 MODE_MANU_SET=41
uint16 MODE_MANU_NONE=400
uint16 MODE_MANU_PLANTOEXEC=410	
uint16 MODE_MANU_PLANTOEXEC_RUN=411
uint16 MODE_MANU_PLANTOEXEC_END=412	
uint16 MODE_MANU_MOVEINT=420	
uint16 MODE_MANU_MOVE=430	
uint16 MODE_MANU_TURN=440
uint16 MODE_MANU_WORKSHEET=450	
uint16 MODE_MANU_SAVE=460

uint16 MODE_REMOTE_ACT=50	
uint16 MODE_REMOTE_SET=51
uint16 MODE_REMOTE_NONE=500
uint16 MODE_REMOTEP_WORKSHEET=510
uint16 MODE_REMOTEP_WORKSHEET_CONT_TEST=520

#uint16 MODE_REMOTE_WORKSHEET_ACT=50
#uint16 MODE_REMOTE_WORKSHEET_NO=51
#uint16 ALARM_CONF=61	
uint16 ALARM_RESET=60	
uint16 ALARM_RECOVERY_ACT=70
uint16 ALARM_RECOVERY_SET=71
uint16 ALARM_RECOVERY_NONE=700
uint16 ALARM_RECOVERY_PLANTOEXEC=710	
uint16 SYSTEM_RESTART=80	
uint16 cmd_id  	
#--------------------------
string cmd_data
#--------------------------

")



(provide :robot_scheduling_msgs/robot_topic_command "69f0d27f0773a518111335f643914c01")


