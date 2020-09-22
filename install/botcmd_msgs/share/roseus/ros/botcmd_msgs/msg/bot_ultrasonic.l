;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_ultrasonic)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_ultrasonic (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_ULTRASONIC")
  (make-package "BOTCMD_MSGS::BOT_ULTRASONIC"))

(in-package "ROS")
;;//! \htmlinclude bot_ultrasonic.msg.html


(defclass botcmd_msgs::bot_ultrasonic
  :super ros::object
  :slots (_stamp _quantity _ranges ))

(defmethod botcmd_msgs::bot_ultrasonic
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:quantity __quantity) 0)
    ((:ranges __ranges) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _quantity (round __quantity))
   (setq _ranges (string __ranges))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:quantity
   (&optional __quantity)
   (if __quantity (setq _quantity __quantity)) _quantity)
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int8 _quantity
    1
    ;; string _ranges
    4 (length _ranges)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int8 _quantity
       (write-byte _quantity s)
     ;; string _ranges
       (write-long (length _ranges) s) (princ _ranges s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _quantity
     (setq _quantity (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _quantity 127) (setq _quantity (- _quantity 256)))
   ;; string _ranges
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ranges (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get botcmd_msgs::bot_ultrasonic :md5sum-) "eb86edbddd862c6792e2bca43262c9f1")
(setf (get botcmd_msgs::bot_ultrasonic :datatype-) "botcmd_msgs/bot_ultrasonic")
(setf (get botcmd_msgs::bot_ultrasonic :definition-)
      "time stamp
int8 quantity
string ranges	#float32[] ranges	# 0:disable, -1:error , >0 :normal

")



(provide :botcmd_msgs/bot_ultrasonic "eb86edbddd862c6792e2bca43262c9f1")


