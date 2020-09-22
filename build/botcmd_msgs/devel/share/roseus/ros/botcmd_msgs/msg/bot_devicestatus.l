;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_devicestatus)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_devicestatus (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_DEVICESTATUS")
  (make-package "BOTCMD_MSGS::BOT_DEVICESTATUS"))

(in-package "ROS")
;;//! \htmlinclude bot_devicestatus.msg.html


(defclass botcmd_msgs::bot_devicestatus
  :super ros::object
  :slots (_stamp _status _error_code _data ))

(defmethod botcmd_msgs::bot_devicestatus
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:status __status) 0)
    ((:error_code __error_code) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _status (round __status))
   (setq _error_code (round __error_code))
   (setq _data (string __data))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int8 _status
    1
    ;; int8 _error_code
    1
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int8 _status
       (write-byte _status s)
     ;; int8 _error_code
       (write-byte _error_code s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; int8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_code 127) (setq _error_code (- _error_code 256)))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get botcmd_msgs::bot_devicestatus :md5sum-) "ee45a81459c43868e0e411a5f46c76aa")
(setf (get botcmd_msgs::bot_devicestatus :datatype-) "botcmd_msgs/bot_devicestatus")
(setf (get botcmd_msgs::bot_devicestatus :definition-)
      "time stamp
int8 status
int8 error_code
string data

")



(provide :botcmd_msgs/bot_devicestatus "ee45a81459c43868e0e411a5f46c76aa")


