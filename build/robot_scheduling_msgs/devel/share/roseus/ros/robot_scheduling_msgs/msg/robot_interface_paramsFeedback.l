;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_interface_paramsFeedback)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_interface_paramsFeedback (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PARAMSFEEDBACK")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_INTERFACE_PARAMSFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude robot_interface_paramsFeedback.msg.html


(defclass robot_scheduling_msgs::robot_interface_paramsFeedback
  :super ros::object
  :slots ())

(defmethod robot_scheduling_msgs::robot_interface_paramsFeedback
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::robot_interface_paramsFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get robot_scheduling_msgs::robot_interface_paramsFeedback :datatype-) "robot_scheduling_msgs/robot_interface_paramsFeedback")
(setf (get robot_scheduling_msgs::robot_interface_paramsFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message


")



(provide :robot_scheduling_msgs/robot_interface_paramsFeedback "d41d8cd98f00b204e9800998ecf8427e")

