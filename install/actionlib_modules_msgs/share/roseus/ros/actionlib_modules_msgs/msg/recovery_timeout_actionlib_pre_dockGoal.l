;; Auto-generated. Do not edit!


(when (boundp 'actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockGoal)
  (if (not (find-package "ACTIONLIB_MODULES_MSGS"))
    (make-package "ACTIONLIB_MODULES_MSGS"))
  (shadow 'recovery_timeout_actionlib_pre_dockGoal (find-package "ACTIONLIB_MODULES_MSGS")))
(unless (find-package "ACTIONLIB_MODULES_MSGS::RECOVERY_TIMEOUT_ACTIONLIB_PRE_DOCKGOAL")
  (make-package "ACTIONLIB_MODULES_MSGS::RECOVERY_TIMEOUT_ACTIONLIB_PRE_DOCKGOAL"))

(in-package "ROS")
;;//! \htmlinclude recovery_timeout_actionlib_pre_dockGoal.msg.html


(defclass actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockGoal
  :super ros::object
  :slots ())

(defmethod actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockGoal
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

(setf (get actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockGoal :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockGoal :datatype-) "actionlib_modules_msgs/recovery_timeout_actionlib_pre_dockGoal")
(setf (get actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal

")



(provide :actionlib_modules_msgs/recovery_timeout_actionlib_pre_dockGoal "d41d8cd98f00b204e9800998ecf8427e")

