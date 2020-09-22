;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::lower_if_command)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'lower_if_command (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMAND")
  (make-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMAND"))
(unless (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST")
  (make-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(unless (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE")
  (make-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))

(in-package "ROS")





(intern "*GET_STATUS*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*GET_STATUS* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*GET_STATUS* 1)
(intern "*SET_COMMAND*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*SET_COMMAND* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*SET_COMMAND* 2)
(intern "*STATUS*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*STATUS* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*STATUS* 1)
(intern "*BASE_CONNECT*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*BASE_CONNECT* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*BASE_CONNECT* 2)
(intern "*BASE_READY*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*BASE_READY* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*BASE_READY* 3)
(intern "*BASE_PROC*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*BASE_PROC* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*BASE_PROC* 4)
(intern "*LED*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*LED* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*LED* 5)
(intern "*MUSIC*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*MUSIC* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*MUSIC* 6)
(intern "*BATTERY*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*BATTERY* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*BATTERY* 7)
(intern "*UTRASONIC*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*UTRASONIC* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*UTRASONIC* 8)
(intern "*POWERCHARGE*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(shadow '*POWERCHARGE* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDREQUEST"))
(defconstant robot_scheduling_msgs::lower_if_commandRequest::*POWERCHARGE* 9)
(defclass robot_scheduling_msgs::lower_if_commandRequest
  :super ros::object
  :slots (_cmd_type _cmd_id _cmd_data ))

(defmethod robot_scheduling_msgs::lower_if_commandRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    ((:cmd_id __cmd_id) 0)
    ((:cmd_data __cmd_data) "")
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   (setq _cmd_id (round __cmd_id))
   (setq _cmd_data (string __cmd_data))
   self)
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
    ;; uint8 _cmd_type
    1
    ;; uint8 _cmd_id
    1
    ;; string _cmd_data
    4 (length _cmd_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; uint8 _cmd_id
       (write-byte _cmd_id s)
     ;; string _cmd_data
       (write-long (length _cmd_data) s) (princ _cmd_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _cmd_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*OK*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))
(shadow '*OK* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))
(defconstant robot_scheduling_msgs::lower_if_commandResponse::*OK* 1)
(intern "*NOT_OK*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))
(shadow '*NOT_OK* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))
(defconstant robot_scheduling_msgs::lower_if_commandResponse::*NOT_OK* 2)
(intern "*TIMED_OUT*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))
(shadow '*TIMED_OUT* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))
(defconstant robot_scheduling_msgs::lower_if_commandResponse::*TIMED_OUT* 3)
(intern "*OUT_OF_TIMES*" (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))
(shadow '*OUT_OF_TIMES* (find-package "ROBOT_SCHEDULING_MSGS::LOWER_IF_COMMANDRESPONSE"))
(defconstant robot_scheduling_msgs::lower_if_commandResponse::*OUT_OF_TIMES* 4)
(defclass robot_scheduling_msgs::lower_if_commandResponse
  :super ros::object
  :slots (_result _result_state _result_data ))

(defmethod robot_scheduling_msgs::lower_if_commandResponse
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

(defclass robot_scheduling_msgs::lower_if_command
  :super ros::object
  :slots ())

(setf (get robot_scheduling_msgs::lower_if_command :md5sum-) "441a58e5dfae63962fb07d2ec8a5ac33")
(setf (get robot_scheduling_msgs::lower_if_command :datatype-) "robot_scheduling_msgs/lower_if_command")
(setf (get robot_scheduling_msgs::lower_if_command :request) robot_scheduling_msgs::lower_if_commandRequest)
(setf (get robot_scheduling_msgs::lower_if_command :response) robot_scheduling_msgs::lower_if_commandResponse)

(defmethod robot_scheduling_msgs::lower_if_commandRequest
  (:response () (instance robot_scheduling_msgs::lower_if_commandResponse :init)))

(setf (get robot_scheduling_msgs::lower_if_commandRequest :md5sum-) "441a58e5dfae63962fb07d2ec8a5ac33")
(setf (get robot_scheduling_msgs::lower_if_commandRequest :datatype-) "robot_scheduling_msgs/lower_if_commandRequest")
(setf (get robot_scheduling_msgs::lower_if_commandRequest :definition-)
      "# set command type and its data 
uint8 GET_STATUS=1
uint8 SET_COMMAND=2
uint8 cmd_type	
uint8 STATUS=1	 
uint8 BASE_CONNECT=2   
uint8 BASE_READY=3  
uint8 BASE_PROC=4   
uint8 LED=5	 
uint8 MUSIC=6	    
uint8 BATTERY=7	   
uint8 UTRASONIC=8	  
uint8 POWERCHARGE=9
uint8 cmd_id  
string cmd_data
---
bool result
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 result_state
string result_data

")

(setf (get robot_scheduling_msgs::lower_if_commandResponse :md5sum-) "441a58e5dfae63962fb07d2ec8a5ac33")
(setf (get robot_scheduling_msgs::lower_if_commandResponse :datatype-) "robot_scheduling_msgs/lower_if_commandResponse")
(setf (get robot_scheduling_msgs::lower_if_commandResponse :definition-)
      "# set command type and its data 
uint8 GET_STATUS=1
uint8 SET_COMMAND=2
uint8 cmd_type	
uint8 STATUS=1	 
uint8 BASE_CONNECT=2   
uint8 BASE_READY=3  
uint8 BASE_PROC=4   
uint8 LED=5	 
uint8 MUSIC=6	    
uint8 BATTERY=7	   
uint8 UTRASONIC=8	  
uint8 POWERCHARGE=9
uint8 cmd_id  
string cmd_data
---
bool result
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 result_state
string result_data

")



(provide :robot_scheduling_msgs/lower_if_command "441a58e5dfae63962fb07d2ec8a5ac33")


