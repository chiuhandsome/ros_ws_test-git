;; Auto-generated. Do not edit!


(when (boundp 'open_auto_dock_msgs::UndockGoal)
  (if (not (find-package "OPEN_AUTO_DOCK_MSGS"))
    (make-package "OPEN_AUTO_DOCK_MSGS"))
  (shadow 'UndockGoal (find-package "OPEN_AUTO_DOCK_MSGS")))
(unless (find-package "OPEN_AUTO_DOCK_MSGS::UNDOCKGOAL")
  (make-package "OPEN_AUTO_DOCK_MSGS::UNDOCKGOAL"))

(in-package "ROS")
;;//! \htmlinclude UndockGoal.msg.html


(defclass open_auto_dock_msgs::UndockGoal
  :super ros::object
  :slots (_rotate_in_place ))

(defmethod open_auto_dock_msgs::UndockGoal
  (:init
   (&key
    ((:rotate_in_place __rotate_in_place) nil)
    )
   (send-super :init)
   (setq _rotate_in_place __rotate_in_place)
   self)
  (:rotate_in_place
   (&optional __rotate_in_place)
   (if __rotate_in_place (setq _rotate_in_place __rotate_in_place)) _rotate_in_place)
  (:serialization-length
   ()
   (+
    ;; bool _rotate_in_place
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _rotate_in_place
       (if _rotate_in_place (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _rotate_in_place
     (setq _rotate_in_place (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get open_auto_dock_msgs::UndockGoal :md5sum-) "dc4d50a0ddde1312dc506a49b185c018")
(setf (get open_auto_dock_msgs::UndockGoal :datatype-) "open_auto_dock_msgs/UndockGoal")
(setf (get open_auto_dock_msgs::UndockGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# This action will always pull backwards off the dock
# Optionally, we can also turn around 180 degrees
bool rotate_in_place

")



(provide :open_auto_dock_msgs/UndockGoal "dc4d50a0ddde1312dc506a49b185c018")

