;; Auto-generated. Do not edit!


(when (boundp 'tug_example_msgs::RecoverTimedOutFeedback)
  (if (not (find-package "TUG_EXAMPLE_MSGS"))
    (make-package "TUG_EXAMPLE_MSGS"))
  (shadow 'RecoverTimedOutFeedback (find-package "TUG_EXAMPLE_MSGS")))
(unless (find-package "TUG_EXAMPLE_MSGS::RECOVERTIMEDOUTFEEDBACK")
  (make-package "TUG_EXAMPLE_MSGS::RECOVERTIMEDOUTFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude RecoverTimedOutFeedback.msg.html


(defclass tug_example_msgs::RecoverTimedOutFeedback
  :super ros::object
  :slots ())

(defmethod tug_example_msgs::RecoverTimedOutFeedback
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

(setf (get tug_example_msgs::RecoverTimedOutFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get tug_example_msgs::RecoverTimedOutFeedback :datatype-) "tug_example_msgs/RecoverTimedOutFeedback")
(setf (get tug_example_msgs::RecoverTimedOutFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message


")



(provide :tug_example_msgs/RecoverTimedOutFeedback "d41d8cd98f00b204e9800998ecf8427e")

