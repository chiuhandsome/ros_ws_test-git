;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_transfer_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_transfer_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_TRANSFER_CMD")
  (make-package "BOTCMD_MSGS::BOT_TRANSFER_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_TRANSFER_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_TRANSFER_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_TRANSFER_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_TRANSFER_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_transfer_cmdRequest
  :super ros::object
  :slots (_index_ID _parameter ))

(defmethod botcmd_msgs::bot_transfer_cmdRequest
  (:init
   (&key
    ((:index_ID __index_ID) 0)
    ((:parameter __parameter) "")
    )
   (send-super :init)
   (setq _index_ID (round __index_ID))
   (setq _parameter (string __parameter))
   self)
  (:index_ID
   (&optional __index_ID)
   (if __index_ID (setq _index_ID __index_ID)) _index_ID)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:serialization-length
   ()
   (+
    ;; int8 _index_ID
    1
    ;; string _parameter
    4 (length _parameter)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _index_ID
       (write-byte _index_ID s)
     ;; string _parameter
       (write-long (length _parameter) s) (princ _parameter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _index_ID
     (setq _index_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _index_ID 127) (setq _index_ID (- _index_ID 256)))
   ;; string _parameter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_transfer_cmdResponse
  :super ros::object
  :slots (_result _result_ID _result_Data ))

(defmethod botcmd_msgs::bot_transfer_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:result_ID __result_ID) 0)
    ((:result_Data __result_Data) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _result_ID (round __result_ID))
   (setq _result_Data (string __result_Data))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:result_ID
   (&optional __result_ID)
   (if __result_ID (setq _result_ID __result_ID)) _result_ID)
  (:result_Data
   (&optional __result_Data)
   (if __result_Data (setq _result_Data __result_Data)) _result_Data)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; int8 _result_ID
    1
    ;; string _result_Data
    4 (length _result_Data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; int8 _result_ID
       (write-byte _result_ID s)
     ;; string _result_Data
       (write-long (length _result_Data) s) (princ _result_Data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _result_ID
     (setq _result_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result_ID 127) (setq _result_ID (- _result_ID 256)))
   ;; string _result_Data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result_Data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_transfer_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_transfer_cmd :md5sum-) "770bce408b30c62eb35300571e79267e")
(setf (get botcmd_msgs::bot_transfer_cmd :datatype-) "botcmd_msgs/bot_transfer_cmd")
(setf (get botcmd_msgs::bot_transfer_cmd :request) botcmd_msgs::bot_transfer_cmdRequest)
(setf (get botcmd_msgs::bot_transfer_cmd :response) botcmd_msgs::bot_transfer_cmdResponse)

(defmethod botcmd_msgs::bot_transfer_cmdRequest
  (:response () (instance botcmd_msgs::bot_transfer_cmdResponse :init)))

(setf (get botcmd_msgs::bot_transfer_cmdRequest :md5sum-) "770bce408b30c62eb35300571e79267e")
(setf (get botcmd_msgs::bot_transfer_cmdRequest :datatype-) "botcmd_msgs/bot_transfer_cmdRequest")
(setf (get botcmd_msgs::bot_transfer_cmdRequest :definition-)
      "int8 index_ID
string parameter
---
bool result
int8 result_ID
string result_Data	

")

(setf (get botcmd_msgs::bot_transfer_cmdResponse :md5sum-) "770bce408b30c62eb35300571e79267e")
(setf (get botcmd_msgs::bot_transfer_cmdResponse :datatype-) "botcmd_msgs/bot_transfer_cmdResponse")
(setf (get botcmd_msgs::bot_transfer_cmdResponse :definition-)
      "int8 index_ID
string parameter
---
bool result
int8 result_ID
string result_Data	

")



(provide :botcmd_msgs/bot_transfer_cmd "770bce408b30c62eb35300571e79267e")


