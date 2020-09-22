;; Auto-generated. Do not edit!


(when (boundp 'robot_control_msgs::hyc_heartbeat)
  (if (not (find-package "ROBOT_CONTROL_MSGS"))
    (make-package "ROBOT_CONTROL_MSGS"))
  (shadow 'hyc_heartbeat (find-package "ROBOT_CONTROL_MSGS")))
(unless (find-package "ROBOT_CONTROL_MSGS::HYC_HEARTBEAT")
  (make-package "ROBOT_CONTROL_MSGS::HYC_HEARTBEAT"))

(in-package "ROS")
;;//! \htmlinclude hyc_heartbeat.msg.html


(defclass robot_control_msgs::hyc_heartbeat
  :super ros::object
  :slots (_hb_status _hb_stamp ))

(defmethod robot_control_msgs::hyc_heartbeat
  (:init
   (&key
    ((:hb_status __hb_status) 0)
    ((:hb_stamp __hb_stamp) 0)
    )
   (send-super :init)
   (setq _hb_status (round __hb_status))
   (setq _hb_stamp (round __hb_stamp))
   self)
  (:hb_status
   (&optional __hb_status)
   (if __hb_status (setq _hb_status __hb_status)) _hb_status)
  (:hb_stamp
   (&optional __hb_stamp)
   (if __hb_stamp (setq _hb_stamp __hb_stamp)) _hb_stamp)
  (:serialization-length
   ()
   (+
    ;; int8 _hb_status
    1
    ;; int16 _hb_stamp
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _hb_status
       (write-byte _hb_status s)
     ;; int16 _hb_stamp
       (write-word _hb_stamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _hb_status
     (setq _hb_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _hb_status 127) (setq _hb_status (- _hb_status 256)))
   ;; int16 _hb_stamp
     (setq _hb_stamp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robot_control_msgs::hyc_heartbeat :md5sum-) "df9efe1397ef4d3891140ed1e523817f")
(setf (get robot_control_msgs::hyc_heartbeat :datatype-) "robot_control_msgs/hyc_heartbeat")
(setf (get robot_control_msgs::hyc_heartbeat :definition-)
      "#################################################################
## heart_beat message
#################################################################
int8 hb_status
int16 hb_stamp

")



(provide :robot_control_msgs/hyc_heartbeat "df9efe1397ef4d3891140ed1e523817f")


