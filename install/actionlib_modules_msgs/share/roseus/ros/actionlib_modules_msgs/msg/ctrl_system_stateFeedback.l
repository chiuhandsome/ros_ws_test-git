;; Auto-generated. Do not edit!


(when (boundp 'actionlib_modules_msgs::ctrl_system_stateFeedback)
  (if (not (find-package "ACTIONLIB_MODULES_MSGS"))
    (make-package "ACTIONLIB_MODULES_MSGS"))
  (shadow 'ctrl_system_stateFeedback (find-package "ACTIONLIB_MODULES_MSGS")))
(unless (find-package "ACTIONLIB_MODULES_MSGS::CTRL_SYSTEM_STATEFEEDBACK")
  (make-package "ACTIONLIB_MODULES_MSGS::CTRL_SYSTEM_STATEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ctrl_system_stateFeedback.msg.html


(defclass actionlib_modules_msgs::ctrl_system_stateFeedback
  :super ros::object
  :slots ())

(defmethod actionlib_modules_msgs::ctrl_system_stateFeedback
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

(setf (get actionlib_modules_msgs::ctrl_system_stateFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get actionlib_modules_msgs::ctrl_system_stateFeedback :datatype-) "actionlib_modules_msgs/ctrl_system_stateFeedback")
(setf (get actionlib_modules_msgs::ctrl_system_stateFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message


")



(provide :actionlib_modules_msgs/ctrl_system_stateFeedback "d41d8cd98f00b204e9800998ecf8427e")


