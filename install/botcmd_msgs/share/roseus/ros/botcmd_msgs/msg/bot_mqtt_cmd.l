;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_mqtt_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_mqtt_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_MQTT_CMD")
  (make-package "BOTCMD_MSGS::BOT_MQTT_CMD"))

(in-package "ROS")
;;//! \htmlinclude bot_mqtt_cmd.msg.html


(defclass botcmd_msgs::bot_mqtt_cmd
  :super ros::object
  :slots (_robot_ID _bState ))

(defmethod botcmd_msgs::bot_mqtt_cmd
  (:init
   (&key
    ((:robot_ID __robot_ID) "")
    ((:bState __bState) nil)
    )
   (send-super :init)
   (setq _robot_ID (string __robot_ID))
   (setq _bState __bState)
   self)
  (:robot_ID
   (&optional __robot_ID)
   (if __robot_ID (setq _robot_ID __robot_ID)) _robot_ID)
  (:bState
   (&optional __bState)
   (if __bState (setq _bState __bState)) _bState)
  (:serialization-length
   ()
   (+
    ;; string _robot_ID
    4 (length _robot_ID)
    ;; bool _bState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_ID
       (write-long (length _robot_ID) s) (princ _robot_ID s)
     ;; bool _bState
       (if _bState (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_ID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_ID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _bState
     (setq _bState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get botcmd_msgs::bot_mqtt_cmd :md5sum-) "ea01a6f206d81ac77784145d2af0f688")
(setf (get botcmd_msgs::bot_mqtt_cmd :datatype-) "botcmd_msgs/bot_mqtt_cmd")
(setf (get botcmd_msgs::bot_mqtt_cmd :definition-)
      "string robot_ID
bool   bState	

")



(provide :botcmd_msgs/bot_mqtt_cmd "ea01a6f206d81ac77784145d2af0f688")


