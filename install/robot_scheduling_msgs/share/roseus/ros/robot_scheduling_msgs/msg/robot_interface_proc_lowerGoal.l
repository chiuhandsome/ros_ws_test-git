;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_interface_proc_lowerGoal)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_interface_proc_lowerGoal (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))

(in-package "ROS")
;;//! \htmlinclude robot_interface_proc_lowerGoal.msg.html


(intern "*GET_STATUS*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*GET_STATUS* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*GET_STATUS* 1)
(intern "*SET_COMMAND*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*SET_COMMAND* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*SET_COMMAND* 2)
(intern "*STATUS*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*STATUS* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*STATUS* 1)
(intern "*BASE_CONNECT*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*BASE_CONNECT* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*BASE_CONNECT* 2)
(intern "*BASE_READY*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*BASE_READY* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*BASE_READY* 3)
(intern "*BASE_PROC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*BASE_PROC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*BASE_PROC* 4)
(intern "*LED*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*LED* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*LED* 5)
(intern "*MUSIC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*MUSIC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*MUSIC* 6)
(intern "*BATTERY*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*BATTERY* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*BATTERY* 7)
(intern "*UTRASONIC*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*UTRASONIC* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*UTRASONIC* 8)
(intern "*POWERCHARGE*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(shadow '*POWERCHARGE* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROC_LOWERGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_proc_lowerGoal::*POWERCHARGE* 9)
(defclass robot_scheduling_msgs::robot_interface_proc_lowerGoal
  :super ros::object
  :slots (_cmd_type _cmd_id _cmd_data ))

(defmethod robot_scheduling_msgs::robot_interface_proc_lowerGoal
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

(setf (get robot_scheduling_msgs::robot_interface_proc_lowerGoal :md5sum-) "2e6e7b9d944e8b26071ae1c34c433441")
(setf (get robot_scheduling_msgs::robot_interface_proc_lowerGoal :datatype-) "robot_scheduling_msgs/robot_interface_proc_lowerGoal")
(setf (get robot_scheduling_msgs::robot_interface_proc_lowerGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
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

")



(provide :robot_scheduling_msgs/robot_interface_proc_lowerGoal "2e6e7b9d944e8b26071ae1c34c433441")


