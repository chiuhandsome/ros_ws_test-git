;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_transferdata)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_transferdata (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_TRANSFERDATA")
  (make-package "BOTCMD_MSGS::BOT_TRANSFERDATA"))

(in-package "ROS")
;;//! \htmlinclude bot_transferdata.msg.html


(defclass botcmd_msgs::bot_transferdata
  :super ros::object
  :slots (_index_ID _data _result ))

(defmethod botcmd_msgs::bot_transferdata
  (:init
   (&key
    ((:index_ID __index_ID) 0)
    ((:data __data) "")
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _index_ID (round __index_ID))
   (setq _data (string __data))
   (setq _result __result)
   self)
  (:index_ID
   (&optional __index_ID)
   (if __index_ID (setq _index_ID __index_ID)) _index_ID)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int8 _index_ID
    1
    ;; string _data
    4 (length _data)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _index_ID
       (write-byte _index_ID s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _index_ID
     (setq _index_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _index_ID 127) (setq _index_ID (- _index_ID 256)))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get botcmd_msgs::bot_transferdata :md5sum-) "09a8772b40b66daa3c0ae4a33bacb8ed")
(setf (get botcmd_msgs::bot_transferdata :datatype-) "botcmd_msgs/bot_transferdata")
(setf (get botcmd_msgs::bot_transferdata :definition-)
      "int8 index_ID
string data
bool result	

")



(provide :botcmd_msgs/bot_transferdata "09a8772b40b66daa3c0ae4a33bacb8ed")


