;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_mqtt_rawdata)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_mqtt_rawdata (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_MQTT_RAWDATA")
  (make-package "BOTCMD_MSGS::BOT_MQTT_RAWDATA"))

(in-package "ROS")
;;//! \htmlinclude bot_mqtt_rawdata.msg.html


(defclass botcmd_msgs::bot_mqtt_rawdata
  :super ros::object
  :slots (_bImport_sensor _bexport_sensor ))

(defmethod botcmd_msgs::bot_mqtt_rawdata
  (:init
   (&key
    ((:bImport_sensor __bImport_sensor) nil)
    ((:bexport_sensor __bexport_sensor) nil)
    )
   (send-super :init)
   (setq _bImport_sensor __bImport_sensor)
   (setq _bexport_sensor __bexport_sensor)
   self)
  (:bImport_sensor
   (&optional __bImport_sensor)
   (if __bImport_sensor (setq _bImport_sensor __bImport_sensor)) _bImport_sensor)
  (:bexport_sensor
   (&optional __bexport_sensor)
   (if __bexport_sensor (setq _bexport_sensor __bexport_sensor)) _bexport_sensor)
  (:serialization-length
   ()
   (+
    ;; bool _bImport_sensor
    1
    ;; bool _bexport_sensor
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _bImport_sensor
       (if _bImport_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _bexport_sensor
       (if _bexport_sensor (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _bImport_sensor
     (setq _bImport_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bexport_sensor
     (setq _bexport_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get botcmd_msgs::bot_mqtt_rawdata :md5sum-) "3eaab3f40118d8034a925c7b353f23c2")
(setf (get botcmd_msgs::bot_mqtt_rawdata :datatype-) "botcmd_msgs/bot_mqtt_rawdata")
(setf (get botcmd_msgs::bot_mqtt_rawdata :definition-)
      "bool   bImport_sensor
bool   bexport_sensor	

")



(provide :botcmd_msgs/bot_mqtt_rawdata "3eaab3f40118d8034a925c7b353f23c2")


