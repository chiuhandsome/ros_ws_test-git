;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_getenabledi_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_getenabledi_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_GETENABLEDI_CMD")
  (make-package "BOTCMD_MSGS::BOT_GETENABLEDI_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_GETENABLEDI_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_GETENABLEDI_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_GETENABLEDI_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_GETENABLEDI_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_getenabledi_cmdRequest
  :super ros::object
  :slots (_command ))

(defmethod botcmd_msgs::bot_getenabledi_cmdRequest
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

(defclass botcmd_msgs::bot_getenabledi_cmdResponse
  :super ros::object
  :slots (_result _status ))

(defmethod botcmd_msgs::bot_getenabledi_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _status (round __status))
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
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass botcmd_msgs::bot_getenabledi_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_getenabledi_cmd :md5sum-) "c310784b062f6ef0f7752130ef306c28")
(setf (get botcmd_msgs::bot_getenabledi_cmd :datatype-) "botcmd_msgs/bot_getenabledi_cmd")
(setf (get botcmd_msgs::bot_getenabledi_cmd :request) botcmd_msgs::bot_getenabledi_cmdRequest)
(setf (get botcmd_msgs::bot_getenabledi_cmd :response) botcmd_msgs::bot_getenabledi_cmdResponse)

(defmethod botcmd_msgs::bot_getenabledi_cmdRequest
  (:response () (instance botcmd_msgs::bot_getenabledi_cmdResponse :init)))

(setf (get botcmd_msgs::bot_getenabledi_cmdRequest :md5sum-) "c310784b062f6ef0f7752130ef306c28")
(setf (get botcmd_msgs::bot_getenabledi_cmdRequest :datatype-) "botcmd_msgs/bot_getenabledi_cmdRequest")
(setf (get botcmd_msgs::bot_getenabledi_cmdRequest :definition-)
      "int8 command
---
bool result
int32 status

")

(setf (get botcmd_msgs::bot_getenabledi_cmdResponse :md5sum-) "c310784b062f6ef0f7752130ef306c28")
(setf (get botcmd_msgs::bot_getenabledi_cmdResponse :datatype-) "botcmd_msgs/bot_getenabledi_cmdResponse")
(setf (get botcmd_msgs::bot_getenabledi_cmdResponse :definition-)
      "int8 command
---
bool result
int32 status

")



(provide :botcmd_msgs/bot_getenabledi_cmd "c310784b062f6ef0f7752130ef306c28")


