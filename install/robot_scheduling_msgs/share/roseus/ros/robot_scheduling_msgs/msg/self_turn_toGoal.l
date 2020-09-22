;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::self_turn_toGoal)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'self_turn_toGoal (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOGOAL")
  (make-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOGOAL"))

(in-package "ROS")
;;//! \htmlinclude self_turn_toGoal.msg.html


(intern "*TURN_ABS*" (find-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOGOAL"))
(shadow '*TURN_ABS* (find-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOGOAL"))
(defconstant robot_scheduling_msgs::self_turn_toGoal::*TURN_ABS* 1)
(intern "*TURN_REL*" (find-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOGOAL"))
(shadow '*TURN_REL* (find-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOGOAL"))
(defconstant robot_scheduling_msgs::self_turn_toGoal::*TURN_REL* 2)
(intern "*TURN_INTERRUPE*" (find-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOGOAL"))
(shadow '*TURN_INTERRUPE* (find-package "ROBOT_SCHEDULING_MSGS::SELF_TURN_TOGOAL"))
(defconstant robot_scheduling_msgs::self_turn_toGoal::*TURN_INTERRUPE* 99)
(defclass robot_scheduling_msgs::self_turn_toGoal
  :super ros::object
  :slots (_command_type _command_id _turn_id _pid_id _target_angle _time_out _turn_ac_name ))

(defmethod robot_scheduling_msgs::self_turn_toGoal
  (:init
   (&key
    ((:command_type __command_type) "")
    ((:command_id __command_id) 0)
    ((:turn_id __turn_id) "")
    ((:pid_id __pid_id) "")
    ((:target_angle __target_angle) 0.0)
    ((:time_out __time_out) 0.0)
    ((:turn_ac_name __turn_ac_name) "")
    )
   (send-super :init)
   (setq _command_type (string __command_type))
   (setq _command_id (round __command_id))
   (setq _turn_id (string __turn_id))
   (setq _pid_id (string __pid_id))
   (setq _target_angle (float __target_angle))
   (setq _time_out (float __time_out))
   (setq _turn_ac_name (string __turn_ac_name))
   self)
  (:command_type
   (&optional __command_type)
   (if __command_type (setq _command_type __command_type)) _command_type)
  (:command_id
   (&optional __command_id)
   (if __command_id (setq _command_id __command_id)) _command_id)
  (:turn_id
   (&optional __turn_id)
   (if __turn_id (setq _turn_id __turn_id)) _turn_id)
  (:pid_id
   (&optional __pid_id)
   (if __pid_id (setq _pid_id __pid_id)) _pid_id)
  (:target_angle
   (&optional __target_angle)
   (if __target_angle (setq _target_angle __target_angle)) _target_angle)
  (:time_out
   (&optional __time_out)
   (if __time_out (setq _time_out __time_out)) _time_out)
  (:turn_ac_name
   (&optional __turn_ac_name)
   (if __turn_ac_name (setq _turn_ac_name __turn_ac_name)) _turn_ac_name)
  (:serialization-length
   ()
   (+
    ;; string _command_type
    4 (length _command_type)
    ;; uint8 _command_id
    1
    ;; string _turn_id
    4 (length _turn_id)
    ;; string _pid_id
    4 (length _pid_id)
    ;; float64 _target_angle
    8
    ;; float32 _time_out
    4
    ;; string _turn_ac_name
    4 (length _turn_ac_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command_type
       (write-long (length _command_type) s) (princ _command_type s)
     ;; uint8 _command_id
       (write-byte _command_id s)
     ;; string _turn_id
       (write-long (length _turn_id) s) (princ _turn_id s)
     ;; string _pid_id
       (write-long (length _pid_id) s) (princ _pid_id s)
     ;; float64 _target_angle
       (sys::poke _target_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _time_out
       (sys::poke _time_out (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _turn_ac_name
       (write-long (length _turn_ac_name) s) (princ _turn_ac_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _command_id
     (setq _command_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _turn_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _turn_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pid_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pid_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _target_angle
     (setq _target_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _time_out
     (setq _time_out (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _turn_ac_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _turn_ac_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::self_turn_toGoal :md5sum-) "ee4eb3479d122eb64fe4a90b44c760ac")
(setf (get robot_scheduling_msgs::self_turn_toGoal :datatype-) "robot_scheduling_msgs/self_turn_toGoal")
(setf (get robot_scheduling_msgs::self_turn_toGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
string command_type
uint8 TURN_ABS=1
uint8 TURN_REL=2
uint8 TURN_INTERRUPE=99
uint8 command_id
string turn_id
string pid_id
float64 target_angle
float32 time_out
string turn_ac_name

")



(provide :robot_scheduling_msgs/self_turn_toGoal "ee4eb3479d122eb64fe4a90b44c760ac")


