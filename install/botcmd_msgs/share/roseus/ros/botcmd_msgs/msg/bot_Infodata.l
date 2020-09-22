;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_Infodata)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_Infodata (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_INFODATA")
  (make-package "BOTCMD_MSGS::BOT_INFODATA"))

(in-package "ROS")
;;//! \htmlinclude bot_Infodata.msg.html


(defclass botcmd_msgs::bot_Infodata
  :super ros::object
  :slots (_stamp _info_status ))

(defmethod botcmd_msgs::bot_Infodata
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:info_status __info_status) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _info_status (round __info_status))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:info_status
   (&optional __info_status)
   (if __info_status (setq _info_status __info_status)) _info_status)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int8 _info_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int8 _info_status
       (write-byte _info_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _info_status
     (setq _info_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _info_status 127) (setq _info_status (- _info_status 256)))
   ;;
   self)
  )

(setf (get botcmd_msgs::bot_Infodata :md5sum-) "740be2245d9c22ac1e693a9ba553240e")
(setf (get botcmd_msgs::bot_Infodata :datatype-) "botcmd_msgs/bot_Infodata")
(setf (get botcmd_msgs::bot_Infodata :definition-)
      "time stamp
int8 info_status	

")



(provide :botcmd_msgs/bot_Infodata "740be2245d9c22ac1e693a9ba553240e")


