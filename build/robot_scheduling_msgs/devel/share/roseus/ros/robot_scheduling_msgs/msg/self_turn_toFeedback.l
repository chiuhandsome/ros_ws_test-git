;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::self_turn_toFeedback)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'self_turn_toFeedback (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOFEEDBACK")
  (make-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude self_turn_toFeedback.msg.html


(defclass robot_scheduling_msgs::self_turn_toFeedback
  :super ros::object
  :slots (_delta_angle _tuened ))

(defmethod robot_scheduling_msgs::self_turn_toFeedback
  (:init
   (&key
    ((:delta_angle __delta_angle) 0.0)
    ((:tuened __tuened) nil)
    )
   (send-super :init)
   (setq _delta_angle (float __delta_angle))
   (setq _tuened __tuened)
   self)
  (:delta_angle
   (&optional __delta_angle)
   (if __delta_angle (setq _delta_angle __delta_angle)) _delta_angle)
  (:tuened
   (&optional __tuened)
   (if __tuened (setq _tuened __tuened)) _tuened)
  (:serialization-length
   ()
   (+
    ;; float64 _delta_angle
    8
    ;; bool _tuened
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _delta_angle
       (sys::poke _delta_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _tuened
       (if _tuened (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _delta_angle
     (setq _delta_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _tuened
     (setq _tuened (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::self_turn_toFeedback :md5sum-) "561e3716ece2d2003d0685c94f95b90f")
(setf (get robot_scheduling_msgs::self_turn_toFeedback :datatype-) "robot_scheduling_msgs/self_turn_toFeedback")
(setf (get robot_scheduling_msgs::self_turn_toFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message
float64 delta_angle
bool tuened


")



(provide :robot_scheduling_msgs/self_turn_toFeedback "561e3716ece2d2003d0685c94f95b90f")

