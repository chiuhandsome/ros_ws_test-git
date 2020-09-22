;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::robot_state)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'robot_state (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ROBOT_STATE")
  (make-package "ROBOT_SCHEDULING_MSGS::ROBOT_STATE"))

(in-package "ROS")
;;//! \htmlinclude robot_state.msg.html


(defclass robot_scheduling_msgs::robot_state
  :super ros::object
  :slots (_robot_name _shape _shape_variables _mode _status ))

(defmethod robot_scheduling_msgs::robot_state
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:shape __shape) 0)
    ((:shape_variables __shape_variables) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mode __mode) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _shape (round __shape))
   (setq _shape_variables __shape_variables)
   (setq _mode (round __mode))
   (setq _status (round __status))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:shape_variables
   (&optional __shape_variables)
   (if __shape_variables (setq _shape_variables __shape_variables)) _shape_variables)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; int32 _shape
    4
    ;; float32[] _shape_variables
    (* 4    (length _shape_variables)) 4
    ;; int32 _mode
    4
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; int32 _shape
       (write-long _shape s)
     ;; float32[] _shape_variables
     (write-long (length _shape_variables) s)
     (dotimes (i (length _shape_variables))
       (sys::poke (elt _shape_variables i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _mode
       (write-long _mode s)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _shape
     (setq _shape (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _shape_variables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_variables (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shape_variables i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_scheduling_msgs::robot_state :md5sum-) "e76bc04491a1baa1d7d27f2cdd4d8c03")
(setf (get robot_scheduling_msgs::robot_state :datatype-) "robot_scheduling_msgs/robot_state")
(setf (get robot_scheduling_msgs::robot_state :definition-)
      "string robot_name                        # the name of the robot (used in preconditions and topics)
int32 shape                              # the shape of the robots (see enums)
float32[] shape_variables                # shape variables to define width height, ...
#RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
int32   mode                             # the mode of operation
int32   status                           # the status of the robot
#int32   good_id                          # the good id attached to the robot
#int32   order_id                         # the order id scheduled to this robot (-1: none)
#int32   order_status                     # the status of the assigned order

")



(provide :robot_scheduling_msgs/robot_state "e76bc04491a1baa1d7d27f2cdd4d8c03")


