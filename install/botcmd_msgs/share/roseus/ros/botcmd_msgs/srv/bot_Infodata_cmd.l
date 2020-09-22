;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_Infodata_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_Infodata_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_INFODATA_CMD")
  (make-package "BOTCMD_MSGS::BOT_INFODATA_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_INFODATA_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_INFODATA_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_INFODATA_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_INFODATA_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_Infodata_cmdRequest
  :super ros::object
  :slots (_command ))

(defmethod botcmd_msgs::bot_Infodata_cmdRequest
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

(defclass botcmd_msgs::bot_Infodata_cmdResponse
  :super ros::object
  :slots (_result _stamp _Command_Params _info_status _info_data ))

(defmethod botcmd_msgs::bot_Infodata_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:stamp __stamp) (instance ros::time :init))
    ((:Command_Params __Command_Params) 0)
    ((:info_status __info_status) 0)
    ((:info_data __info_data) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _stamp __stamp)
   (setq _Command_Params (round __Command_Params))
   (setq _info_status (round __info_status))
   (setq _info_data (string __info_data))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:Command_Params
   (&optional __Command_Params)
   (if __Command_Params (setq _Command_Params __Command_Params)) _Command_Params)
  (:info_status
   (&optional __info_status)
   (if __info_status (setq _info_status __info_status)) _info_status)
  (:info_data
   (&optional __info_data)
   (if __info_data (setq _info_data __info_data)) _info_data)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; time _stamp
    8
    ;; int8 _Command_Params
    1
    ;; int8 _info_status
    1
    ;; string _info_data
    4 (length _info_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int8 _Command_Params
       (write-byte _Command_Params s)
     ;; int8 _info_status
       (write-byte _info_status s)
     ;; string _info_data
       (write-long (length _info_data) s) (princ _info_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _Command_Params
     (setq _Command_Params (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Command_Params 127) (setq _Command_Params (- _Command_Params 256)))
   ;; int8 _info_status
     (setq _info_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _info_status 127) (setq _info_status (- _info_status 256)))
   ;; string _info_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_Infodata_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_Infodata_cmd :md5sum-) "4cdc66a3a1deb293be974096c860975c")
(setf (get botcmd_msgs::bot_Infodata_cmd :datatype-) "botcmd_msgs/bot_Infodata_cmd")
(setf (get botcmd_msgs::bot_Infodata_cmd :request) botcmd_msgs::bot_Infodata_cmdRequest)
(setf (get botcmd_msgs::bot_Infodata_cmd :response) botcmd_msgs::bot_Infodata_cmdResponse)

(defmethod botcmd_msgs::bot_Infodata_cmdRequest
  (:response () (instance botcmd_msgs::bot_Infodata_cmdResponse :init)))

(setf (get botcmd_msgs::bot_Infodata_cmdRequest :md5sum-) "4cdc66a3a1deb293be974096c860975c")
(setf (get botcmd_msgs::bot_Infodata_cmdRequest :datatype-) "botcmd_msgs/bot_Infodata_cmdRequest")
(setf (get botcmd_msgs::bot_Infodata_cmdRequest :definition-)
      "int8 command
---
bool result
time stamp
int8 Command_Params
int8 info_status
string info_data	

")

(setf (get botcmd_msgs::bot_Infodata_cmdResponse :md5sum-) "4cdc66a3a1deb293be974096c860975c")
(setf (get botcmd_msgs::bot_Infodata_cmdResponse :datatype-) "botcmd_msgs/bot_Infodata_cmdResponse")
(setf (get botcmd_msgs::bot_Infodata_cmdResponse :definition-)
      "int8 command
---
bool result
time stamp
int8 Command_Params
int8 info_status
string info_data	

")



(provide :botcmd_msgs/bot_Infodata_cmd "4cdc66a3a1deb293be974096c860975c")


