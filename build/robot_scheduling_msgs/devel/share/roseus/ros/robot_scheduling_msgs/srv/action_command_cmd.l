;; Auto-generated. Do not edit!


(when (boundp 'robot_scheduling_msgs::action_command_cmd)
  (if (not (find-package "ROBOT_SCHEDULING_MSGS"))
    (make-package "ROBOT_SCHEDULING_MSGS"))
  (shadow 'action_command_cmd (find-package "ROBOT_SCHEDULING_MSGS")))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ACTION_COMMAND_CMD")
  (make-package "ROBOT_SCHEDULING_MSGS::ACTION_COMMAND_CMD"))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ACTION_COMMAND_CMDREQUEST")
  (make-package "ROBOT_SCHEDULING_MSGS::ACTION_COMMAND_CMDREQUEST"))
(unless (find-package "ROBOT_SCHEDULING_MSGS::ACTION_COMMAND_CMDRESPONSE")
  (make-package "ROBOT_SCHEDULING_MSGS::ACTION_COMMAND_CMDRESPONSE"))

(in-package "ROS")





(defclass robot_scheduling_msgs::action_command_cmdRequest
  :super ros::object
  :slots (_cmd_set_type _cmd_type _cmd_id _cmd_seq _cmd_data _set_data ))

(defmethod robot_scheduling_msgs::action_command_cmdRequest
  (:init
   (&key
    ((:cmd_set_type __cmd_set_type) 0)
    ((:cmd_type __cmd_type) 0)
    ((:cmd_id __cmd_id) 0)
    ((:cmd_seq __cmd_seq) 0)
    ((:cmd_data __cmd_data) "")
    ((:set_data __set_data) "")
    )
   (send-super :init)
   (setq _cmd_set_type (round __cmd_set_type))
   (setq _cmd_type (round __cmd_type))
   (setq _cmd_id (round __cmd_id))
   (setq _cmd_seq (round __cmd_seq))
   (setq _cmd_data (string __cmd_data))
   (setq _set_data (string __set_data))
   self)
  (:cmd_set_type
   (&optional __cmd_set_type)
   (if __cmd_set_type (setq _cmd_set_type __cmd_set_type)) _cmd_set_type)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:cmd_seq
   (&optional __cmd_seq)
   (if __cmd_seq (setq _cmd_seq __cmd_seq)) _cmd_seq)
  (:cmd_data
   (&optional __cmd_data)
   (if __cmd_data (setq _cmd_data __cmd_data)) _cmd_data)
  (:set_data
   (&optional __set_data)
   (if __set_data (setq _set_data __set_data)) _set_data)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd_set_type
    1
    ;; uint8 _cmd_type
    1
    ;; uint8 _cmd_id
    1
    ;; uint8 _cmd_seq
    1
    ;; string _cmd_data
    4 (length _cmd_data)
    ;; string _set_data
    4 (length _set_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd_set_type
       (write-byte _cmd_set_type s)
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; uint8 _cmd_id
       (write-byte _cmd_id s)
     ;; uint8 _cmd_seq
       (write-byte _cmd_seq s)
     ;; string _cmd_data
       (write-long (length _cmd_data) s) (princ _cmd_data s)
     ;; string _set_data
       (write-long (length _set_data) s) (princ _set_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd_set_type
     (setq _cmd_set_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_seq
     (setq _cmd_seq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _cmd_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _set_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _set_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_scheduling_msgs::action_command_cmdResponse
  :super ros::object
  :slots (_result _result_state _result_data ))

(defmethod robot_scheduling_msgs::action_command_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:result_state __result_state) 0)
    ((:result_data __result_data) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _result_state (round __result_state))
   (setq _result_data (string __result_data))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:result_state
   (&optional __result_state)
   (if __result_state (setq _result_state __result_state)) _result_state)
  (:result_data
   (&optional __result_data)
   (if __result_data (setq _result_data __result_data)) _result_data)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; uint8 _result_state
    1
    ;; string _result_data
    4 (length _result_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _result_state
       (write-byte _result_state s)
     ;; string _result_data
       (write-long (length _result_data) s) (princ _result_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _result_state
     (setq _result_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _result_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_scheduling_msgs::action_command_cmd
  :super ros::object
  :slots ())

(setf (get robot_scheduling_msgs::action_command_cmd :md5sum-) "c70509ca0082e9e32c4734aad4c091af")
(setf (get robot_scheduling_msgs::action_command_cmd :datatype-) "robot_scheduling_msgs/action_command_cmd")
(setf (get robot_scheduling_msgs::action_command_cmd :request) robot_scheduling_msgs::action_command_cmdRequest)
(setf (get robot_scheduling_msgs::action_command_cmd :response) robot_scheduling_msgs::action_command_cmdResponse)

(defmethod robot_scheduling_msgs::action_command_cmdRequest
  (:response () (instance robot_scheduling_msgs::action_command_cmdResponse :init)))

(setf (get robot_scheduling_msgs::action_command_cmdRequest :md5sum-) "c70509ca0082e9e32c4734aad4c091af")
(setf (get robot_scheduling_msgs::action_command_cmdRequest :datatype-) "robot_scheduling_msgs/action_command_cmdRequest")
(setf (get robot_scheduling_msgs::action_command_cmdRequest :definition-)
      "# set command type and its data 
uint8 cmd_set_type	 	
uint8 cmd_type		      
uint8 cmd_id    
uint8 cmd_seq 	 	
string cmd_data
string set_data
---
bool result
uint8 result_state
string result_data

")

(setf (get robot_scheduling_msgs::action_command_cmdResponse :md5sum-) "c70509ca0082e9e32c4734aad4c091af")
(setf (get robot_scheduling_msgs::action_command_cmdResponse :datatype-) "robot_scheduling_msgs/action_command_cmdResponse")
(setf (get robot_scheduling_msgs::action_command_cmdResponse :definition-)
      "# set command type and its data 
uint8 cmd_set_type	 	
uint8 cmd_type		      
uint8 cmd_id    
uint8 cmd_seq 	 	
string cmd_data
string set_data
---
bool result
uint8 result_state
string result_data

")



(provide :robot_scheduling_msgs/action_command_cmd "c70509ca0082e9e32c4734aad4c091af")


