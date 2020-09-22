;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_device_cmd)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_device_cmd (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_DEVICE_CMD")
  (make-package "BOTCMD_MSGS::BOT_DEVICE_CMD"))
(unless (find-package "BOTCMD_MSGS::BOT_DEVICE_CMDREQUEST")
  (make-package "BOTCMD_MSGS::BOT_DEVICE_CMDREQUEST"))
(unless (find-package "BOTCMD_MSGS::BOT_DEVICE_CMDRESPONSE")
  (make-package "BOTCMD_MSGS::BOT_DEVICE_CMDRESPONSE"))

(in-package "ROS")





(defclass botcmd_msgs::bot_device_cmdRequest
  :super ros::object
  :slots (_dev_num _devic_ID _bActive ))

(defmethod botcmd_msgs::bot_device_cmdRequest
  (:init
   (&key
    ((:dev_num __dev_num) 0)
    ((:devic_ID __devic_ID) (make-array 0 :initial-element 0 :element-type :integer))
    ((:bActive __bActive) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _dev_num (round __dev_num))
   (setq _devic_ID __devic_ID)
   (setq _bActive __bActive)
   self)
  (:dev_num
   (&optional __dev_num)
   (if __dev_num (setq _dev_num __dev_num)) _dev_num)
  (:devic_ID
   (&optional __devic_ID)
   (if __devic_ID (setq _devic_ID __devic_ID)) _devic_ID)
  (:bActive
   (&optional __bActive)
   (if __bActive (setq _bActive __bActive)) _bActive)
  (:serialization-length
   ()
   (+
    ;; int8 _dev_num
    1
    ;; int8[] _devic_ID
    (* 1    (length _devic_ID)) 4
    ;; bool[] _bActive
    (* 1    (length _bActive)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _dev_num
       (write-byte _dev_num s)
     ;; int8[] _devic_ID
     (write-long (length _devic_ID) s)
     (dotimes (i (length _devic_ID))
       (write-byte (elt _devic_ID i) s)
       )
     ;; bool[] _bActive
     (write-long (length _bActive) s)
     (dotimes (i (length _bActive))
       (if (elt _bActive i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _dev_num
     (setq _dev_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _dev_num 127) (setq _dev_num (- _dev_num 256)))
   ;; int8[] _devic_ID
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _devic_ID (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _devic_ID i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _devic_ID i) 127) (setf (elt _devic_ID i) (- (elt _devic_ID i) 256)))
     ))
   ;; bool[] _bActive
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bActive (make-list n))
     (dotimes (i n)
     (setf (elt _bActive i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass botcmd_msgs::bot_device_cmdResponse
  :super ros::object
  :slots (_result ))

(defmethod botcmd_msgs::bot_device_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass botcmd_msgs::bot_device_cmd
  :super ros::object
  :slots ())

(setf (get botcmd_msgs::bot_device_cmd :md5sum-) "17e1a131c7d1450e63bc762f11e32314")
(setf (get botcmd_msgs::bot_device_cmd :datatype-) "botcmd_msgs/bot_device_cmd")
(setf (get botcmd_msgs::bot_device_cmd :request) botcmd_msgs::bot_device_cmdRequest)
(setf (get botcmd_msgs::bot_device_cmd :response) botcmd_msgs::bot_device_cmdResponse)

(defmethod botcmd_msgs::bot_device_cmdRequest
  (:response () (instance botcmd_msgs::bot_device_cmdResponse :init)))

(setf (get botcmd_msgs::bot_device_cmdRequest :md5sum-) "17e1a131c7d1450e63bc762f11e32314")
(setf (get botcmd_msgs::bot_device_cmdRequest :datatype-) "botcmd_msgs/bot_device_cmdRequest")
(setf (get botcmd_msgs::bot_device_cmdRequest :definition-)
      "int8   dev_num
int8[] devic_ID
bool[] bActive
---
bool result



")

(setf (get botcmd_msgs::bot_device_cmdResponse :md5sum-) "17e1a131c7d1450e63bc762f11e32314")
(setf (get botcmd_msgs::bot_device_cmdResponse :datatype-) "botcmd_msgs/bot_device_cmdResponse")
(setf (get botcmd_msgs::bot_device_cmdResponse :definition-)
      "int8   dev_num
int8[] devic_ID
bool[] bActive
---
bool result



")



(provide :botcmd_msgs/bot_device_cmd "17e1a131c7d1450e63bc762f11e32314")


