;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_do_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_do_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_DO_CMD")
  (make-package "BOTCMD_MSGS::BOT_DO_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_DO_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_DO_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_DO_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_DO_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_do_cmdRequest
  :super ros::object
  :slots (_command _parameter ))

(defmethod botcmd_msgs::bot_do_cmdRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:parameter __parameter) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _parameter (string __parameter))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:serialization-length
   ()
   (+
    ;; int8 _command
    1
    ;; string _parameter
    4 (length _parameter)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _command
       (write-byte _command s)
     ;; string _parameter
       (write-long (length _parameter) s) (princ _parameter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command 127) (setq _command (- _command 256)))
   ;; string _parameter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_do_cmdResponse
  :super ros::object
  :slots (_result ))

(defmethod botcmd_msgs::bot_do_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass botcmd_msgs::bot_do_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_do_cmd :md5sum-) "843195841fd9bccb9459230778ac6303")
(setf (get botcmd_msgs::bot_do_cmd :datatype-) "botcmd_msgs/bot_do_cmd")
(setf (get botcmd_msgs::bot_do_cmd :request) botcmd_msgs::bot_do_cmdRequest)
(setf (get botcmd_msgs::bot_do_cmd :response) botcmd_msgs::bot_do_cmdResponse)

(defmethod botcmd_msgs::bot_do_cmdRequest
  (:response () (instance botcmd_msgs::bot_do_cmdResponse :init)))

(setf (get botcmd_msgs::bot_do_cmdRequest :md5sum-) "843195841fd9bccb9459230778ac6303")
(setf (get botcmd_msgs::bot_do_cmdRequest :datatype-) "botcmd_msgs/bot_do_cmdRequest")
(setf (get botcmd_msgs::bot_do_cmdRequest :definition-)
      "int8 command
string parameter
---
bool result


")

(setf (get botcmd_msgs::bot_do_cmdResponse :md5sum-) "843195841fd9bccb9459230778ac6303")
(setf (get botcmd_msgs::bot_do_cmdResponse :datatype-) "botcmd_msgs/bot_do_cmdResponse")
(setf (get botcmd_msgs::bot_do_cmdResponse :definition-)
      "int8 command
string parameter
---
bool result


")



(provide :botcmd_msgs/bot_do_cmd "843195841fd9bccb9459230778ac6303")


