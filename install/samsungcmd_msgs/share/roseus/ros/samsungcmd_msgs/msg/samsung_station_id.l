;; Auto-generated. Do not edit!


(when (boundp 'samsungcmd_msgs::samsung_station_id)
  (if (not (find-package "SAMSUNGCMD_MSGS"))
    (make-package "SAMSUNGCMD_MSGS"))
  (shadow 'samsung_station_id (find-package "SAMSUNGCMD_MSGS")))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_STATION_ID")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_STATION_ID"))

(in-package "ROS")
;;//! \htmlinclude samsung_station_id.msg.html


(defclass samsungcmd_msgs::samsung_station_id
  :super ros::object
  :slots (_key_id _station_id _station_type _delay_time _timeout_value _start_turn_right _end_turn_right _start_straight _end_straight _start_turn_left _end_turn_left _update_time ))

(defmethod samsungcmd_msgs::samsung_station_id
  (:init
   (&key
    ((:key_id __key_id) "")
    ((:station_id __station_id) 0)
    ((:station_type __station_type) 0)
    ((:delay_time __delay_time) 0)
    ((:timeout_value __timeout_value) 0)
    ((:start_turn_right __start_turn_right) 0)
    ((:end_turn_right __end_turn_right) 0)
    ((:start_straight __start_straight) 0)
    ((:end_straight __end_straight) 0)
    ((:start_turn_left __start_turn_left) 0)
    ((:end_turn_left __end_turn_left) 0)
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _key_id (string __key_id))
   (setq _station_id (round __station_id))
   (setq _station_type (round __station_type))
   (setq _delay_time (round __delay_time))
   (setq _timeout_value (round __timeout_value))
   (setq _start_turn_right (round __start_turn_right))
   (setq _end_turn_right (round __end_turn_right))
   (setq _start_straight (round __start_straight))
   (setq _end_straight (round __end_straight))
   (setq _start_turn_left (round __start_turn_left))
   (setq _end_turn_left (round __end_turn_left))
   (setq _update_time (string __update_time))
   self)
  (:key_id
   (&optional __key_id)
   (if __key_id (setq _key_id __key_id)) _key_id)
  (:station_id
   (&optional __station_id)
   (if __station_id (setq _station_id __station_id)) _station_id)
  (:station_type
   (&optional __station_type)
   (if __station_type (setq _station_type __station_type)) _station_type)
  (:delay_time
   (&optional __delay_time)
   (if __delay_time (setq _delay_time __delay_time)) _delay_time)
  (:timeout_value
   (&optional __timeout_value)
   (if __timeout_value (setq _timeout_value __timeout_value)) _timeout_value)
  (:start_turn_right
   (&optional __start_turn_right)
   (if __start_turn_right (setq _start_turn_right __start_turn_right)) _start_turn_right)
  (:end_turn_right
   (&optional __end_turn_right)
   (if __end_turn_right (setq _end_turn_right __end_turn_right)) _end_turn_right)
  (:start_straight
   (&optional __start_straight)
   (if __start_straight (setq _start_straight __start_straight)) _start_straight)
  (:end_straight
   (&optional __end_straight)
   (if __end_straight (setq _end_straight __end_straight)) _end_straight)
  (:start_turn_left
   (&optional __start_turn_left)
   (if __start_turn_left (setq _start_turn_left __start_turn_left)) _start_turn_left)
  (:end_turn_left
   (&optional __end_turn_left)
   (if __end_turn_left (setq _end_turn_left __end_turn_left)) _end_turn_left)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:serialization-length
   ()
   (+
    ;; string _key_id
    4 (length _key_id)
    ;; uint16 _station_id
    2
    ;; uint8 _station_type
    1
    ;; uint16 _delay_time
    2
    ;; uint16 _timeout_value
    2
    ;; uint16 _start_turn_right
    2
    ;; uint16 _end_turn_right
    2
    ;; uint16 _start_straight
    2
    ;; uint16 _end_straight
    2
    ;; uint16 _start_turn_left
    2
    ;; uint16 _end_turn_left
    2
    ;; string _update_time
    4 (length _update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key_id
       (write-long (length _key_id) s) (princ _key_id s)
     ;; uint16 _station_id
       (write-word _station_id s)
     ;; uint8 _station_type
       (write-byte _station_type s)
     ;; uint16 _delay_time
       (write-word _delay_time s)
     ;; uint16 _timeout_value
       (write-word _timeout_value s)
     ;; uint16 _start_turn_right
       (write-word _start_turn_right s)
     ;; uint16 _end_turn_right
       (write-word _end_turn_right s)
     ;; uint16 _start_straight
       (write-word _start_straight s)
     ;; uint16 _end_straight
       (write-word _end_straight s)
     ;; uint16 _start_turn_left
       (write-word _start_turn_left s)
     ;; uint16 _end_turn_left
       (write-word _end_turn_left s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _station_id
     (setq _station_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _station_type
     (setq _station_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _delay_time
     (setq _delay_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _timeout_value
     (setq _timeout_value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _start_turn_right
     (setq _start_turn_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _end_turn_right
     (setq _end_turn_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _start_straight
     (setq _start_straight (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _end_straight
     (setq _end_straight (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _start_turn_left
     (setq _start_turn_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _end_turn_left
     (setq _end_turn_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get samsungcmd_msgs::samsung_station_id :md5sum-) "f001fc825a44832e3c37deefba7596b8")
(setf (get samsungcmd_msgs::samsung_station_id :datatype-) "samsungcmd_msgs/samsung_station_id")
(setf (get samsungcmd_msgs::samsung_station_id :definition-)
      "string 	key_id
uint16  station_id
uint8 	station_type		# 0: sAnti-collision/1:direction-id
uint16 	delay_time		    # 0: - /1:keep time for straight-run
uint16 	timeout_value  		# 0: no respone for sAnti-collision/ 1:check out codition of turn	
uint16 	start_turn_right 	# 0: - /1:range start for turn-right	
uint16 	end_turn_right 		# 0: - /1:range end for turn-right
uint16 	start_straight 		# 0: - /1:range start for straight	
uint16 	end_straight 		# 0: - /1:range end for straight
uint16 	start_turn_left 	# 0: - /1:range start for turn-left	
uint16 	end_turn_left 		# 0: - /1:range end for turn-left
string 	update_time

")



(provide :samsungcmd_msgs/samsung_station_id "f001fc825a44832e3c37deefba7596b8")


