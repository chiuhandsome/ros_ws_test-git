;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_battery_info)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_battery_info (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_BATTERY_INFO")
  (make-package "BOTCMD_MSGS::BOT_BATTERY_INFO"))

(in-package "ROS")
;;//! \htmlinclude bot_battery_info.msg.html


(defclass botcmd_msgs::bot_battery_info
  :super ros::object
  :slots (_stamp _alarmcode _chargstate _voltage _current _full_capacity _percentage ))

(defmethod botcmd_msgs::bot_battery_info
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:alarmcode __alarmcode) 0)
    ((:chargstate __chargstate) 0)
    ((:voltage __voltage) 0)
    ((:current __current) 0)
    ((:full_capacity __full_capacity) 0)
    ((:percentage __percentage) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _alarmcode (round __alarmcode))
   (setq _chargstate (round __chargstate))
   (setq _voltage (round __voltage))
   (setq _current (round __current))
   (setq _full_capacity (round __full_capacity))
   (setq _percentage (round __percentage))
   self)
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

(setf (get botcmd_msgs::bot_battery_info :md5sum-) "43216bcd23b79099892093ffe71f8fed")
(setf (get botcmd_msgs::bot_battery_info :datatype-) "botcmd_msgs/bot_battery_info")
(setf (get botcmd_msgs::bot_battery_info :definition-)
      "time stamp
int16 alarmcode	
int16 chargstate	 
int16 voltage	
int16 current	
int16 full_capacity
int16 percentage

")



(provide :botcmd_msgs/bot_battery_info "43216bcd23b79099892093ffe71f8fed")


