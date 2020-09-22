;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_transbattery)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_transbattery (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_TRANSBATTERY")
  (make-package "BOTCMD_MSGS::BOT_TRANSBATTERY"))

(in-package "ROS")
;;//! \htmlinclude bot_transbattery.msg.html


(defclass botcmd_msgs::bot_transbattery
  :super ros::object
  :slots (_index_ID _gen_alarmcode _emg_alarmcode _chargstate_code _cell_balance_code _cell_volt_min _cell_volt_max _chargcurrent_code _full_capacity _loop_counter _cell_temp_min _cell_temp_max _Pack_tol_volt _Pack_resistance _total_discharge _ASOC_code _scaleunit_code _result ))

(defmethod botcmd_msgs::bot_transbattery
  (:init
   (&key
    ((:index_ID __index_ID) 0)
    ((:gen_alarmcode __gen_alarmcode) 0)
    ((:emg_alarmcode __emg_alarmcode) 0)
    ((:chargstate_code __chargstate_code) 0)
    ((:cell_balance_code __cell_balance_code) 0)
    ((:cell_volt_min __cell_volt_min) 0)
    ((:cell_volt_max __cell_volt_max) 0)
    ((:chargcurrent_code __chargcurrent_code) 0)
    ((:full_capacity __full_capacity) 0)
    ((:loop_counter __loop_counter) 0)
    ((:cell_temp_min __cell_temp_min) 0)
    ((:cell_temp_max __cell_temp_max) 0)
    ((:Pack_tol_volt __Pack_tol_volt) 0)
    ((:Pack_resistance __Pack_resistance) 0)
    ((:total_discharge __total_discharge) 0)
    ((:ASOC_code __ASOC_code) 0)
    ((:scaleunit_code __scaleunit_code) 0)
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _index_ID (round __index_ID))
   (setq _gen_alarmcode (round __gen_alarmcode))
   (setq _emg_alarmcode (round __emg_alarmcode))
   (setq _chargstate_code (round __chargstate_code))
   (setq _cell_balance_code (round __cell_balance_code))
   (setq _cell_volt_min (round __cell_volt_min))
   (setq _cell_volt_max (round __cell_volt_max))
   (setq _chargcurrent_code (round __chargcurrent_code))
   (setq _full_capacity (round __full_capacity))
   (setq _loop_counter (round __loop_counter))
   (setq _cell_temp_min (round __cell_temp_min))
   (setq _cell_temp_max (round __cell_temp_max))
   (setq _Pack_tol_volt (round __Pack_tol_volt))
   (setq _Pack_resistance (round __Pack_resistance))
   (setq _total_discharge (round __total_discharge))
   (setq _ASOC_code (round __ASOC_code))
   (setq _scaleunit_code (round __scaleunit_code))
   (setq _result __result)
   self)
  (:index_ID
   (&optional __index_ID)
   (if __index_ID (setq _index_ID __index_ID)) _index_ID)
  (:gen_alarmcode
   (&optional __gen_alarmcode)
   (if __gen_alarmcode (setq _gen_alarmcode __gen_alarmcode)) _gen_alarmcode)
  (:emg_alarmcode
   (&optional __emg_alarmcode)
   (if __emg_alarmcode (setq _emg_alarmcode __emg_alarmcode)) _emg_alarmcode)
  (:chargstate_code
   (&optional __chargstate_code)
   (if __chargstate_code (setq _chargstate_code __chargstate_code)) _chargstate_code)
  (:cell_balance_code
   (&optional __cell_balance_code)
   (if __cell_balance_code (setq _cell_balance_code __cell_balance_code)) _cell_balance_code)
  (:cell_volt_min
   (&optional __cell_volt_min)
   (if __cell_volt_min (setq _cell_volt_min __cell_volt_min)) _cell_volt_min)
  (:cell_volt_max
   (&optional __cell_volt_max)
   (if __cell_volt_max (setq _cell_volt_max __cell_volt_max)) _cell_volt_max)
  (:chargcurrent_code
   (&optional __chargcurrent_code)
   (if __chargcurrent_code (setq _chargcurrent_code __chargcurrent_code)) _chargcurrent_code)
  (:full_capacity
   (&optional __full_capacity)
   (if __full_capacity (setq _full_capacity __full_capacity)) _full_capacity)
  (:loop_counter
   (&optional __loop_counter)
   (if __loop_counter (setq _loop_counter __loop_counter)) _loop_counter)
  (:cell_temp_min
   (&optional __cell_temp_min)
   (if __cell_temp_min (setq _cell_temp_min __cell_temp_min)) _cell_temp_min)
  (:cell_temp_max
   (&optional __cell_temp_max)
   (if __cell_temp_max (setq _cell_temp_max __cell_temp_max)) _cell_temp_max)
  (:Pack_tol_volt
   (&optional __Pack_tol_volt)
   (if __Pack_tol_volt (setq _Pack_tol_volt __Pack_tol_volt)) _Pack_tol_volt)
  (:Pack_resistance
   (&optional __Pack_resistance)
   (if __Pack_resistance (setq _Pack_resistance __Pack_resistance)) _Pack_resistance)
  (:total_discharge
   (&optional __total_discharge)
   (if __total_discharge (setq _total_discharge __total_discharge)) _total_discharge)
  (:ASOC_code
   (&optional __ASOC_code)
   (if __ASOC_code (setq _ASOC_code __ASOC_code)) _ASOC_code)
  (:scaleunit_code
   (&optional __scaleunit_code)
   (if __scaleunit_code (setq _scaleunit_code __scaleunit_code)) _scaleunit_code)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int8 _index_ID
    1
    ;; int16 _gen_alarmcode
    2
    ;; int16 _emg_alarmcode
    2
    ;; int16 _chargstate_code
    2
    ;; int16 _cell_balance_code
    2
    ;; int16 _cell_volt_min
    2
    ;; int16 _cell_volt_max
    2
    ;; int16 _chargcurrent_code
    2
    ;; int16 _full_capacity
    2
    ;; int16 _loop_counter
    2
    ;; int8 _cell_temp_min
    1
    ;; int8 _cell_temp_max
    1
    ;; int16 _Pack_tol_volt
    2
    ;; int16 _Pack_resistance
    2
    ;; int32 _total_discharge
    4
    ;; int16 _ASOC_code
    2
    ;; int16 _scaleunit_code
    2
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _index_ID
       (write-byte _index_ID s)
     ;; int16 _gen_alarmcode
       (write-word _gen_alarmcode s)
     ;; int16 _emg_alarmcode
       (write-word _emg_alarmcode s)
     ;; int16 _chargstate_code
       (write-word _chargstate_code s)
     ;; int16 _cell_balance_code
       (write-word _cell_balance_code s)
     ;; int16 _cell_volt_min
       (write-word _cell_volt_min s)
     ;; int16 _cell_volt_max
       (write-word _cell_volt_max s)
     ;; int16 _chargcurrent_code
       (write-word _chargcurrent_code s)
     ;; int16 _full_capacity
       (write-word _full_capacity s)
     ;; int16 _loop_counter
       (write-word _loop_counter s)
     ;; int8 _cell_temp_min
       (write-byte _cell_temp_min s)
     ;; int8 _cell_temp_max
       (write-byte _cell_temp_max s)
     ;; int16 _Pack_tol_volt
       (write-word _Pack_tol_volt s)
     ;; int16 _Pack_resistance
       (write-word _Pack_resistance s)
     ;; int32 _total_discharge
       (write-long _total_discharge s)
     ;; int16 _ASOC_code
       (write-word _ASOC_code s)
     ;; int16 _scaleunit_code
       (write-word _scaleunit_code s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _index_ID
     (setq _index_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _index_ID 127) (setq _index_ID (- _index_ID 256)))
   ;; int16 _gen_alarmcode
     (setq _gen_alarmcode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _emg_alarmcode
     (setq _emg_alarmcode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _chargstate_code
     (setq _chargstate_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cell_balance_code
     (setq _cell_balance_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cell_volt_min
     (setq _cell_volt_min (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cell_volt_max
     (setq _cell_volt_max (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _chargcurrent_code
     (setq _chargcurrent_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _full_capacity
     (setq _full_capacity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _loop_counter
     (setq _loop_counter (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _cell_temp_min
     (setq _cell_temp_min (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cell_temp_min 127) (setq _cell_temp_min (- _cell_temp_min 256)))
   ;; int8 _cell_temp_max
     (setq _cell_temp_max (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cell_temp_max 127) (setq _cell_temp_max (- _cell_temp_max 256)))
   ;; int16 _Pack_tol_volt
     (setq _Pack_tol_volt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Pack_resistance
     (setq _Pack_resistance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _total_discharge
     (setq _total_discharge (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _ASOC_code
     (setq _ASOC_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _scaleunit_code
     (setq _scaleunit_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get botcmd_msgs::bot_transbattery :md5sum-) "42a37315d341a8a261c4ebe967c4f174")
(setf (get botcmd_msgs::bot_transbattery :datatype-) "botcmd_msgs/bot_transbattery")
(setf (get botcmd_msgs::bot_transbattery :definition-)
      "int8 index_ID
int16 gen_alarmcode		#address : 0x60
int16 emg_alarmcode		#address : 0x61
int16 chargstate_code	#address : 0x62
int16 cell_balance_code	#address : 0x63
int16 cell_volt_min		#address : 0x64 (mV/unit)
int16 cell_volt_max		#address : 0x65 (mV/unit)
int16 chargcurrent_code	#address : 0x66 (10mA/unit or mA/unit)
int16 full_capacity  	#address : 0x67 (mAH)
int16 loop_counter  	#address : 0x68 (times)
int8  cell_temp_min  	#address : 0x69-L (deg C)
int8  cell_temp_max  	#address : 0x69-H (deg C)
int16 Pack_tol_volt		#address : 0x6A (10mV/unit or mV/unit)
int16 Pack_resistance	#address : 0x6B (uOhm)
int32 total_discharge	#address : 0x6C_D (uAH)
int16 ASOC_code     	#address : 0x6E (%,absolute (remaining) capacity percentage of the battery pack)
int16 scaleunit_code	#address : 0x6F (conversion unit for voltage ,current and temperature)
bool result

")



(provide :botcmd_msgs/bot_transbattery "42a37315d341a8a261c4ebe967c4f174")


