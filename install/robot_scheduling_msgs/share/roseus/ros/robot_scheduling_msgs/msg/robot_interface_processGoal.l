;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_interface_processGoal)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_interface_processGoal (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROCESSGOAL")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROCESSGOAL"))

(in-package "ROS")
;;//! \htmlinclude robot_interface_processGoal.msg.html


(intern "*LOWER*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROCESSGOAL"))
(shadow '*LOWER* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_processGoal::*LOWER* 1)
(intern "*UPPER*" (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROCESSGOAL"))
(shadow '*UPPER* (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PROCESSGOAL"))
(defconstant robot_scheduling_msgs::robot_interface_processGoal::*UPPER* 2)
(defclass robot_scheduling_msgs::robot_interface_processGoal
  :super ros::object
  :slots (_cmd_type ))

(defmethod robot_scheduling_msgs::robot_interface_processGoal
  (:init
   (&key
    ((:cmd_type __cmd_type) 0)
    )
   (send-super :init)
   (setq _cmd_type (round __cmd_type))
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::robot_interface_processGoal :md5sum-) "9b78a69198a3c763eed65ddcbd7e035a")
(setf (get robot_scheduling_msgs::robot_interface_processGoal :datatype-) "robot_scheduling_msgs/robot_interface_processGoal")
(setf (get robot_scheduling_msgs::robot_interface_processGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
uint8 LOWER=1
uint8 UPPER=2
uint8 cmd_type

")



(provide :robot_scheduling_msgs/robot_interface_processGoal "9b78a69198a3c763eed65ddcbd7e035a")


