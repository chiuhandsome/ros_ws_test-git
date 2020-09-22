;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_di_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_di_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_DI_CMD")
  (make-package "BOTCMD_MSGS::BOT_DI_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_DI_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_DI_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_DI_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_DI_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_di_cmdRequest
  :super ros::object
  :slots (_command ))

(defmethod botcmd_msgs::bot_di_cmdRequest
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

(defclass botcmd_msgs::bot_di_cmdResponse
  :super ros::object
  :slots (_result _status ))

(defmethod botcmd_msgs::bot_di_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _status (string __status))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_di_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_di_cmd :md5sum-) "1370eea95d2e64a2a473cf48bbf54676")
(setf (get botcmd_msgs::bot_di_cmd :datatype-) "botcmd_msgs/bot_di_cmd")
(setf (get botcmd_msgs::bot_di_cmd :request) botcmd_msgs::bot_di_cmdRequest)
(setf (get botcmd_msgs::bot_di_cmd :response) botcmd_msgs::bot_di_cmdResponse)

(defmethod botcmd_msgs::bot_di_cmdRequest
  (:response () (instance botcmd_msgs::bot_di_cmdResponse :init)))

(setf (get botcmd_msgs::bot_di_cmdRequest :md5sum-) "1370eea95d2e64a2a473cf48bbf54676")
(setf (get botcmd_msgs::bot_di_cmdRequest :datatype-) "botcmd_msgs/bot_di_cmdRequest")
(setf (get botcmd_msgs::bot_di_cmdRequest :definition-)
      "int8 command
---
bool result
string status

")

(setf (get botcmd_msgs::bot_di_cmdResponse :md5sum-) "1370eea95d2e64a2a473cf48bbf54676")
(setf (get botcmd_msgs::bot_di_cmdResponse :datatype-) "botcmd_msgs/bot_di_cmdResponse")
(setf (get botcmd_msgs::bot_di_cmdResponse :definition-)
      "int8 command
---
bool result
string status

")



(provide :botcmd_msgs/bot_di_cmd "1370eea95d2e64a2a473cf48bbf54676")


