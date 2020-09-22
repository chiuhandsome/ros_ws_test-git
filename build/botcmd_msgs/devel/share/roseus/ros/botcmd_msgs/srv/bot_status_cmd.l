;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_status_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_status_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_STATUS_CMD")
  (make-package "BOTCMD_MSGS::BOT_STATUS_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_STATUS_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_STATUS_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_STATUS_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_STATUS_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_status_cmdRequest
  :super ros::object
  :slots (_Command ))

(defmethod botcmd_msgs::bot_status_cmdRequest
  (:init
   (&key
    ((:Command __Command) 0)
    )
   (send-super :init)
   (setq _Command (round __Command))
   self)
  (:Command
   (&optional __Command)
   (if __Command (setq _Command __Command)) _Command)
  (:serialization-length
   ()
   (+
    ;; int16 _Command
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Command
       (write-word _Command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Command
     (setq _Command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass botcmd_msgs::bot_status_cmdResponse
  :super ros::object
  :slots (_result _stamp _result_Command _status_code _error_code _data ))

(defmethod botcmd_msgs::bot_status_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:stamp __stamp) (instance ros::time :init))
    ((:result_Command __result_Command) 0)
    ((:status_code __status_code) 0)
    ((:error_code __error_code) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _stamp __stamp)
   (setq _result_Command (round __result_Command))
   (setq _status_code (round __status_code))
   (setq _error_code (round __error_code))
   (setq _data (string __data))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:result_Command
   (&optional __result_Command)
   (if __result_Command (setq _result_Command __result_Command)) _result_Command)
  (:status_code
   (&optional __status_code)
   (if __status_code (setq _status_code __status_code)) _status_code)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; time _stamp
    8
    ;; int16 _result_Command
    2
    ;; int8 _status_code
    1
    ;; int8 _error_code
    1
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int16 _result_Command
       (write-word _result_Command s)
     ;; int8 _status_code
       (write-byte _status_code s)
     ;; int8 _error_code
       (write-byte _error_code s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _result_Command
     (setq _result_Command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _status_code
     (setq _status_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status_code 127) (setq _status_code (- _status_code 256)))
   ;; int8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_code 127) (setq _error_code (- _error_code 256)))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_status_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_status_cmd :md5sum-) "78fe28ceb8cdb5fbcfec0625a620666c")
(setf (get botcmd_msgs::bot_status_cmd :datatype-) "botcmd_msgs/bot_status_cmd")
(setf (get botcmd_msgs::bot_status_cmd :request) botcmd_msgs::bot_status_cmdRequest)
(setf (get botcmd_msgs::bot_status_cmd :response) botcmd_msgs::bot_status_cmdResponse)

(defmethod botcmd_msgs::bot_status_cmdRequest
  (:response () (instance botcmd_msgs::bot_status_cmdResponse :init)))

(setf (get botcmd_msgs::bot_status_cmdRequest :md5sum-) "78fe28ceb8cdb5fbcfec0625a620666c")
(setf (get botcmd_msgs::bot_status_cmdRequest :datatype-) "botcmd_msgs/bot_status_cmdRequest")
(setf (get botcmd_msgs::bot_status_cmdRequest :definition-)
      "int16 Command 
---
bool result
time stamp
int16 result_Command 
int8 status_code
int8 error_code
string data

")

(setf (get botcmd_msgs::bot_status_cmdResponse :md5sum-) "78fe28ceb8cdb5fbcfec0625a620666c")
(setf (get botcmd_msgs::bot_status_cmdResponse :datatype-) "botcmd_msgs/bot_status_cmdResponse")
(setf (get botcmd_msgs::bot_status_cmdResponse :definition-)
      "int16 Command 
---
bool result
time stamp
int16 result_Command 
int8 status_code
int8 error_code
string data

")



(provide :botcmd_msgs/bot_status_cmd "78fe28ceb8cdb5fbcfec0625a620666c")


