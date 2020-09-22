;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_battery_info_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_battery_info_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_BATTERY_INFO_CMD")
  (make-package "BOTCMD_MSGS::BOT_BATTERY_INFO_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_BATTERY_INFO_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_BATTERY_INFO_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_BATTERY_INFO_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_BATTERY_INFO_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_battery_info_cmdRequest
  :super ros::object
  :slots (_command ))

(defmethod botcmd_msgs::bot_battery_info_cmdRequest
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

(defclass botcmd_msgs::bot_battery_info_cmdResponse
  :super ros::object
  :slots (_result _Command_Params _stamp _alarmcode _chargstate _voltage _current _full_capacity _percentage ))

(defmethod botcmd_msgs::bot_battery_info_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:Command_Params __Command_Params) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:alarmcode __alarmcode) 0)
    ((:chargstate __chargstate) 0)
    ((:voltage __voltage) 0)
    ((:current __current) 0)
    ((:full_capacity __full_capacity) 0)
    ((:percentage __percentage) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _Command_Params (round __Command_Params))
   (setq _stamp __stamp)
   (setq _alarmcode (round __alarmcode))
   (setq _chargstate (round __chargstate))
   (setq _voltage (round __voltage))
   (setq _current (round __current))
   (setq _full_capacity (round __full_capacity))
   (setq _percentage (round __percentage))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:Command_Params
   (&optional __Command_Params)
   (if __Command_Params (setq _Command_Params __Command_Params)) _Command_Params)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:alarmcode
   (&optional __alarmcode)
   (if __alarmcode (setq _alarmcode __alarmcode)) _alarmcode)
  (:chargstate
   (&optional __chargstate)
   (if __chargstate (setq _chargstate __chargstate)) _chargstate)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:full_capacity
   (&optional __full_capacity)
   (if __full_capacity (setq _full_capacity __full_capacity)) _full_capacity)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; int8 _Command_Params
    1
    ;; time _stamp
    8
    ;; int16 _alarmcode
    2
    ;; int16 _chargstate
    2
    ;; int16 _voltage
    2
    ;; int16 _current
    2
    ;; int16 _full_capacity
    2
    ;; int16 _percentage
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; int8 _Command_Params
       (write-byte _Command_Params s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int16 _alarmcode
       (write-word _alarmcode s)
     ;; int16 _chargstate
       (write-word _chargstate s)
     ;; int16 _voltage
       (write-word _voltage s)
     ;; int16 _current
       (write-word _current s)
     ;; int16 _full_capacity
       (write-word _full_capacity s)
     ;; int16 _percentage
       (write-word _percentage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _Command_Params
     (setq _Command_Params (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Command_Params 127) (setq _Command_Params (- _Command_Params 256)))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _alarmcode
     (setq _alarmcode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _chargstate
     (setq _chargstate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _voltage
     (setq _voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _current
     (setq _current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _full_capacity
     (setq _full_capacity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _percentage
     (setq _percentage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass botcmd_msgs::bot_battery_info_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_battery_info_cmd :md5sum-) "37f5b24189cc92ce3ca44682c06b0a43")
(setf (get botcmd_msgs::bot_battery_info_cmd :datatype-) "botcmd_msgs/bot_battery_info_cmd")
(setf (get botcmd_msgs::bot_battery_info_cmd :request) botcmd_msgs::bot_battery_info_cmdRequest)
(setf (get botcmd_msgs::bot_battery_info_cmd :response) botcmd_msgs::bot_battery_info_cmdResponse)

(defmethod botcmd_msgs::bot_battery_info_cmdRequest
  (:response () (instance botcmd_msgs::bot_battery_info_cmdResponse :init)))

(setf (get botcmd_msgs::bot_battery_info_cmdRequest :md5sum-) "37f5b24189cc92ce3ca44682c06b0a43")
(setf (get botcmd_msgs::bot_battery_info_cmdRequest :datatype-) "botcmd_msgs/bot_battery_info_cmdRequest")
(setf (get botcmd_msgs::bot_battery_info_cmdRequest :definition-)
      "int8 command
---
bool  result
int8 Command_Params
time stamp
int16 alarmcode	
int16 chargstate	 
int16 voltage	
int16 current	
int16 full_capacity
int16 percentage

")

(setf (get botcmd_msgs::bot_battery_info_cmdResponse :md5sum-) "37f5b24189cc92ce3ca44682c06b0a43")
(setf (get botcmd_msgs::bot_battery_info_cmdResponse :datatype-) "botcmd_msgs/bot_battery_info_cmdResponse")
(setf (get botcmd_msgs::bot_battery_info_cmdResponse :definition-)
      "int8 command
---
bool  result
int8 Command_Params
time stamp
int16 alarmcode	
int16 chargstate	 
int16 voltage	
int16 current	
int16 full_capacity
int16 percentage

")



(provide :botcmd_msgs/bot_battery_info_cmd "37f5b24189cc92ce3ca44682c06b0a43")


