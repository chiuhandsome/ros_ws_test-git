;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_commandFeedback)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_commandFeedback (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_COMMANDFEEDBACK")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_COMMANDFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude robot_commandFeedback.msg.html


(defclass robot_scheduling_msgs::robot_commandFeedback
  :super ros::object
  :slots ())

(defmethod robot_scheduling_msgs::robot_commandFeedback
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

(setf (get robot_scheduling_msgs::robot_commandFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get robot_scheduling_msgs::robot_commandFeedback :datatype-) "robot_scheduling_msgs/robot_commandFeedback")
(setf (get robot_scheduling_msgs::robot_commandFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message


")



(provide :robot_scheduling_msgs/robot_commandFeedback "d41d8cd98f00b204e9800998ecf8427e")

