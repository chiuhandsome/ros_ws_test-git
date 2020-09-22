;; Auto-generated. Do not edit!


(when (boundp 'samsungcmd_msgs::samsung_cntparamsdata)
  (if (not (find-package "SAMSUNGCMD_MSGS"))
    (make-package "SAMSUNGCMD_MSGS"))
  (shadow 'samsung_cntparamsdata (find-package "SAMSUNGCMD_MSGS")))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_CNTPARAMSDATA")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_CNTPARAMSDATA"))

(in-package "ROS")
;;//! \htmlinclude samsung_cntparamsdata.msg.html


(defclass samsungcmd_msgs::samsung_cntparamsdata
  :super ros::object
  :slots (_Mag_center_analog _Mag_center_digital _car_roller_status _car_velrpm_left _car_velrpm_right _car_control_code _car_Status_code _car_Command_code _car_Error_code _car_SetCommand _roller_SetCommand ))

(defmethod samsungcmd_msgs::samsung_cntparamsdata
  (:init
   (&key
    ((:Mag_center_analog __Mag_center_analog) 0.0)
    ((:Mag_center_digital __Mag_center_digital) 0)
    ((:car_roller_status __car_roller_status) 0)
    ((:car_velrpm_left __car_velrpm_left) 0.0)
    ((:car_velrpm_right __car_velrpm_right) 0.0)
    ((:car_control_code __car_control_code) 0)
    ((:car_Status_code __car_Status_code) 0)
    ((:car_Command_code __car_Command_code) 0)
    ((:car_Error_code __car_Error_code) 0)
    ((:car_SetCommand __car_SetCommand) 0)
    ((:roller_SetCommand __roller_SetCommand) 0)
    )
   (send-super :init)
   (setq _Mag_center_analog (float __Mag_center_analog))
   (setq _Mag_center_digital (round __Mag_center_digital))
   (setq _car_roller_status (round __car_roller_status))
   (setq _car_velrpm_left (float __car_velrpm_left))
   (setq _car_velrpm_right (float __car_velrpm_right))
   (setq _car_control_code (round __car_control_code))
   (setq _car_Status_code (round __car_Status_code))
   (setq _car_Command_code (round __car_Command_code))
   (setq _car_Error_code (round __car_Error_code))
   (setq _car_SetCommand (round __car_SetCommand))
   (setq _roller_SetCommand (round __roller_SetCommand))
   self)
  (:Mag_center_analog
   (&optional __Mag_center_analog)
   (if __Mag_center_analog (setq _Mag_center_analog __Mag_center_analog)) _Mag_center_analog)
  (:Mag_center_digital
   (&optional __Mag_center_digital)
   (if __Mag_center_digital (setq _Mag_center_digital __Mag_center_digital)) _Mag_center_digital)
  (:car_roller_status
   (&optional __car_roller_status)
   (if __car_roller_status (setq _car_roller_status __car_roller_status)) _car_roller_status)
  (:car_velrpm_left
   (&optional __car_velrpm_left)
   (if __car_velrpm_left (setq _car_velrpm_left __car_velrpm_left)) _car_velrpm_left)
  (:car_velrpm_right
   (&optional __car_velrpm_right)
   (if __car_velrpm_right (setq _car_velrpm_right __car_velrpm_right)) _car_velrpm_right)
  (:car_control_code
   (&optional __car_control_code)
   (if __car_control_code (setq _car_control_code __car_control_code)) _car_control_code)
  (:car_Status_code
   (&optional __car_Status_code)
   (if __car_Status_code (setq _car_Status_code __car_Status_code)) _car_Status_code)
  (:car_Command_code
   (&optional __car_Command_code)
   (if __car_Command_code (setq _car_Command_code __car_Command_code)) _car_Command_code)
  (:car_Error_code
   (&optional __car_Error_code)
   (if __car_Error_code (setq _car_Error_code __car_Error_code)) _car_Error_code)
  (:car_SetCommand
   (&optional __car_SetCommand)
   (if __car_SetCommand (setq _car_SetCommand __car_SetCommand)) _car_SetCommand)
  (:roller_SetCommand
   (&optional __roller_SetCommand)
   (if __roller_SetCommand (setq _roller_SetCommand __roller_SetCommand)) _roller_SetCommand)
  (:serialization-length
   ()
   (+
    ;; float32 _Mag_center_analog
    4
    ;; int32 _Mag_center_digital
    4
    ;; int8 _car_roller_status
    1
    ;; float32 _car_velrpm_left
    4
    ;; float32 _car_velrpm_right
    4
    ;; int8 _car_control_code
    1
    ;; int8 _car_Status_code
    1
    ;; int8 _car_Command_code
    1
    ;; int16 _car_Error_code
    2
    ;; int32 _car_SetCommand
    4
    ;; int32 _roller_SetCommand
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Mag_center_analog
       (sys::poke _Mag_center_analog (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _Mag_center_digital
       (write-long _Mag_center_digital s)
     ;; int8 _car_roller_status
       (write-byte _car_roller_status s)
     ;; float32 _car_velrpm_left
       (sys::poke _car_velrpm_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _car_velrpm_right
       (sys::poke _car_velrpm_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _car_control_code
       (write-byte _car_control_code s)
     ;; int8 _car_Status_code
       (write-byte _car_Status_code s)
     ;; int8 _car_Command_code
       (write-byte _car_Command_code s)
     ;; int16 _car_Error_code
       (write-word _car_Error_code s)
     ;; int32 _car_SetCommand
       (write-long _car_SetCommand s)
     ;; int32 _roller_SetCommand
       (write-long _roller_SetCommand s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Mag_center_analog
     (setq _Mag_center_analog (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _Mag_center_digital
     (setq _Mag_center_digital (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _car_roller_status
     (setq _car_roller_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _car_roller_status 127) (setq _car_roller_status (- _car_roller_status 256)))
   ;; float32 _car_velrpm_left
     (setq _car_velrpm_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _car_velrpm_right
     (setq _car_velrpm_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _car_control_code
     (setq _car_control_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _car_control_code 127) (setq _car_control_code (- _car_control_code 256)))
   ;; int8 _car_Status_code
     (setq _car_Status_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _car_Status_code 127) (setq _car_Status_code (- _car_Status_code 256)))
   ;; int8 _car_Command_code
     (setq _car_Command_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _car_Command_code 127) (setq _car_Command_code (- _car_Command_code 256)))
   ;; int16 _car_Error_code
     (setq _car_Error_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _car_SetCommand
     (setq _car_SetCommand (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _roller_SetCommand
     (setq _roller_SetCommand (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get samsungcmd_msgs::samsung_cntparamsdata :md5sum-) "028fc3da18d39088df04b2e5220a67fe")
(setf (get samsungcmd_msgs::samsung_cntparamsdata :datatype-) "samsungcmd_msgs/samsung_cntparamsdata")
(setf (get samsungcmd_msgs::samsung_cntparamsdata :definition-)
      "float32 Mag_center_analog
int32 	Mag_center_digital
int8 	car_roller_status 
float32 car_velrpm_left
float32 car_velrpm_right
int8 	car_control_code 
int8 	car_Status_code 
int8 	car_Command_code
int16 	car_Error_code 
int32 	car_SetCommand 
int32 	roller_SetCommand

")



(provide :samsungcmd_msgs/samsung_cntparamsdata "028fc3da18d39088df04b2e5220a67fe")


