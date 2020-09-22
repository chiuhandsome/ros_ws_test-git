;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_ultrasonic_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_ultrasonic_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_ULTRASONIC_CMD")
  (make-package "BOTCMD_MSGS::BOT_ULTRASONIC_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_ULTRASONIC_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_ULTRASONIC_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_ULTRASONIC_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_ULTRASONIC_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_ultrasonic_cmdRequest
  :super ros::object
  :slots (_command ))

(defmethod botcmd_msgs::bot_ultrasonic_cmdRequest
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; int8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command 127) (setq _command (- _command 256)))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_ultrasonic_cmdResponse
  :super ros::object
  :slots (_result _stamp _Command_Params _quantity _ranges ))

(defmethod botcmd_msgs::bot_ultrasonic_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:stamp __stamp) (instance ros::time :init))
    ((:Command_Params __Command_Params) 0)
    ((:quantity __quantity) 0)
    ((:ranges __ranges) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _stamp __stamp)
   (setq _Command_Params (round __Command_Params))
   (setq _quantity (round __quantity))
   (setq _ranges (string __ranges))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:Command_Params
   (&optional __Command_Params)
   (if __Command_Params (setq _Command_Params __Command_Params)) _Command_Params)
  (:quantity
   (&optional __quantity)
   (if __quantity (setq _quantity __quantity)) _quantity)
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; time _stamp
    8
    ;; int8 _Command_Params
    1
    ;; int8 _quantity
    1
    ;; string _ranges
    4 (length _ranges)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int8 _Command_Params
       (write-byte _Command_Params s)
     ;; int8 _quantity
       (write-byte _quantity s)
     ;; string _ranges
       (write-long (length _ranges) s) (princ _ranges s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _Command_Params
     (setq _Command_Params (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Command_Params 127) (setq _Command_Params (- _Command_Params 256)))
   ;; int8 _quantity
     (setq _quantity (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _quantity 127) (setq _quantity (- _quantity 256)))
   ;; string _ranges
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ranges (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_ultrasonic_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_ultrasonic_cmd :md5sum-) "eb2706d46118bd280836f581d94cbcfc")
(setf (get botcmd_msgs::bot_ultrasonic_cmd :datatype-) "botcmd_msgs/bot_ultrasonic_cmd")
(setf (get botcmd_msgs::bot_ultrasonic_cmd :request) botcmd_msgs::bot_ultrasonic_cmdRequest)
(setf (get botcmd_msgs::bot_ultrasonic_cmd :response) botcmd_msgs::bot_ultrasonic_cmdResponse)

(defmethod botcmd_msgs::bot_ultrasonic_cmdRequest
  (:response () (instance botcmd_msgs::bot_ultrasonic_cmdResponse :init)))

(setf (get botcmd_msgs::bot_ultrasonic_cmdRequest :md5sum-) "eb2706d46118bd280836f581d94cbcfc")
(setf (get botcmd_msgs::bot_ultrasonic_cmdRequest :datatype-) "botcmd_msgs/bot_ultrasonic_cmdRequest")
(setf (get botcmd_msgs::bot_ultrasonic_cmdRequest :definition-)
      "int8 command
---
bool  result
time stamp
int8 Command_Params
int8 quantity
string ranges           #float32[] ranges

")

(setf (get botcmd_msgs::bot_ultrasonic_cmdResponse :md5sum-) "eb2706d46118bd280836f581d94cbcfc")
(setf (get botcmd_msgs::bot_ultrasonic_cmdResponse :datatype-) "botcmd_msgs/bot_ultrasonic_cmdResponse")
(setf (get botcmd_msgs::bot_ultrasonic_cmdResponse :definition-)
      "int8 command
---
bool  result
time stamp
int8 Command_Params
int8 quantity
string ranges           #float32[] ranges

")



(provide :botcmd_msgs/bot_ultrasonic_cmd "eb2706d46118bd280836f581d94cbcfc")


