;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::upper_if_command)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'upper_if_command (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMAND")
  (make-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMAND"))
(unless (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDREQUEST")
  (make-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDREQUEST"))
(unless (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE")
  (make-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))

(in-package "ROS")





(defclass robot_scheduling_msgs::upper_if_commandRequest
  :super ros::object
  :slots (_upper_cmd ))

(defmethod robot_scheduling_msgs::upper_if_commandRequest
  (:init
   (&key
    ((:upper_cmd __upper_cmd) (instance robot_scheduling_msgs::robot_topic_command :init))
    )
   (send-super :init)
   (setq _upper_cmd __upper_cmd)
   self)
  (:upper_cmd
   (&rest __upper_cmd)
   (if (keywordp (car __upper_cmd))
       (send* _upper_cmd __upper_cmd)
     (progn
       (if __upper_cmd (setq _upper_cmd (car __upper_cmd)))
       _upper_cmd)))
  (:serialization-length
   ()
   (+
    ;; robot_scheduling_msgs/robot_topic_command _upper_cmd
    (send _upper_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_scheduling_msgs/robot_topic_command _upper_cmd
       (send _upper_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_scheduling_msgs/robot_topic_command _upper_cmd
     (send _upper_cmd :deserialize buf ptr-) (incf ptr- (send _upper_cmd :serialization-length))
   ;;
   self)
  )

(intern "*OK*" (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))
(shadow '*OK* (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))
(defconstant robot_scheduling_msgs::upper_if_commandResponse::*OK* 1)
(intern "*NOT_OK*" (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))
(shadow '*NOT_OK* (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))
(defconstant robot_scheduling_msgs::upper_if_commandResponse::*NOT_OK* 2)
(intern "*TIMED_OUT*" (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))
(shadow '*TIMED_OUT* (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))
(defconstant robot_scheduling_msgs::upper_if_commandResponse::*TIMED_OUT* 3)
(intern "*OUT_OF_TIMES*" (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))
(shadow '*OUT_OF_TIMES* (find-package "ROBOT_SCHEDULING_MSGS::UPPER_IF_COMMANDRESPONSE"))
(defconstant robot_scheduling_msgs::upper_if_commandResponse::*OUT_OF_TIMES* 4)
(defclass robot_scheduling_msgs::upper_if_commandResponse
  :super ros::object
  :slots (_result _result_state _result_data ))

(defmethod robot_scheduling_msgs::upper_if_commandResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:result_state __result_state) 0)
    ((:result_data __result_data) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _result_state (round __result_state))
   (setq _result_data (string __result_data))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:result_state
   (&optional __result_state)
   (if __result_state (setq _result_state __result_state)) _result_state)
  (:result_data
   (&optional __result_data)
   (if __result_data (setq _result_data __result_data)) _result_data)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; uint8 _result_state
    1
    ;; string _result_data
    4 (length _result_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _result_state
       (write-byte _result_state s)
     ;; string _result_data
       (write-long (length _result_data) s) (princ _result_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _result_state
     (setq _result_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _result_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_scheduling_msgs::upper_if_command
  :super ros::object
  :slots ())

(setf (get robot_scheduling_msgs::upper_if_command :md5sum-) "3942b0151ceecef1e10d75812804f3d8")
(setf (get robot_scheduling_msgs::upper_if_command :datatype-) "robot_scheduling_msgs/upper_if_command")
(setf (get robot_scheduling_msgs::upper_if_command :request) robot_scheduling_msgs::upper_if_commandRequest)
(setf (get robot_scheduling_msgs::upper_if_command :response) robot_scheduling_msgs::upper_if_commandResponse)

(defmethod robot_scheduling_msgs::upper_if_commandRequest
  (:response () (instance robot_scheduling_msgs::upper_if_commandResponse :init)))

(setf (get robot_scheduling_msgs::upper_if_commandRequest :md5sum-) "3942b0151ceecef1e10d75812804f3d8")
(setf (get robot_scheduling_msgs::upper_if_commandRequest :datatype-) "robot_scheduling_msgs/upper_if_commandRequest")
(setf (get robot_scheduling_msgs::upper_if_commandRequest :definition-)
      "# set command type and its data 

robot_topic_command upper_cmd

================================================================================
MSG: robot_scheduling_msgs/robot_topic_command
# set command type and its data 
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
---
bool result
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 result_state
string result_data

")

(setf (get robot_scheduling_msgs::upper_if_commandResponse :md5sum-) "3942b0151ceecef1e10d75812804f3d8")
(setf (get robot_scheduling_msgs::upper_if_commandResponse :datatype-) "robot_scheduling_msgs/upper_if_commandResponse")
(setf (get robot_scheduling_msgs::upper_if_commandResponse :definition-)
      "# set command type and its data 

robot_topic_command upper_cmd

================================================================================
MSG: robot_scheduling_msgs/robot_topic_command
# set command type and its data 
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
---
bool result
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 result_state
string result_data

")



(provide :robot_scheduling_msgs/upper_if_command "3942b0151ceecef1e10d75812804f3d8")


