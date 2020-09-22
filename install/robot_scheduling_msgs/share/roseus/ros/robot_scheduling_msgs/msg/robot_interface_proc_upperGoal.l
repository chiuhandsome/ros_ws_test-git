;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_interface_proc_upperGoal)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_interface_proc_upperGoal (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))

(in-package "ROS")
;;//! \htmlinclude robot_interface_proc_upperGoal.msg.html


(intern "*GET_STATUS*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*GET_STATUS* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*GET_STATUS* 1)
(intern "*SET_COMMAND*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*SET_COMMAND* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*SET_COMMAND* 2)
(intern "*PUBLISH*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*PUBLISH* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*PUBLISH* 1)
(intern "*BASE_CONNECT*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*BASE_CONNECT* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*BASE_CONNECT* 2)
(intern "*BASE_READY*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*BASE_READY* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*BASE_READY* 3)
(intern "*BASE_PROC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*BASE_PROC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*BASE_PROC* 4)
(intern "*LED*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*LED* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*LED* 5)
(intern "*MUSIC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*MUSIC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*MUSIC* 6)
(intern "*BATTERY*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*BATTERY* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*BATTERY* 7)
(intern "*UTRASONIC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*UTRASONIC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*UTRASONIC* 8)
(intern "*POWERCHARGE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(shadow '*POWERCHARGE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_UPPERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_upperGoal::*POWERCHARGE* 9)
(defclass robot_scheduling_msgs::robot_interface_proc_upperGoal
  :super ros::object
  :slots (_cmd_type _cmd_id _cmd_data ))

(defmethod robot_scheduling_msgs::robot_interface_proc_upperGoal
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

(setf (get robot_scheduling_msgs::robot_interface_proc_upperGoal :md5sum-) "3da02b69b8ebe7813f2a6a2b1eba6025")
(setf (get robot_scheduling_msgs::robot_interface_proc_upperGoal :datatype-) "robot_scheduling_msgs/robot_interface_proc_upperGoal")
(setf (get robot_scheduling_msgs::robot_interface_proc_upperGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
uint8 GET_STATUS=1
uint8 SET_COMMAND=2
uint8 cmd_type	
uint8 PUBLISH=1	 
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

")



(provide :robot_scheduling_msgs/robot_interface_proc_upperGoal "3da02b69b8ebe7813f2a6a2b1eba6025")


