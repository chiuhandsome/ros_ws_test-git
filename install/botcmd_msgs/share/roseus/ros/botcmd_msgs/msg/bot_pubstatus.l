;; Auto-generated. Do not edit!


(when (boundp 'botcmd_msgs::bot_pubstatus)
  (if (not (find-package "BOTCMD_MSGS"))
    (make-package "BOTCMD_MSGS"))
  (shadow 'bot_pubstatus (find-package "BOTCMD_MSGS")))
(unless (find-package "BOTCMD_MSGS::BOT_PUBSTATUS")
  (make-package "BOTCMD_MSGS::BOT_PUBSTATUS"))

(in-package "ROS")
;;//! \htmlinclude bot_pubstatus.msg.html


(defclass botcmd_msgs::bot_pubstatus
  :super ros::object
  :slots (_seq _stamp _device_ID _status _error_code _data ))

(defmethod botcmd_msgs::bot_pubstatus
  (:init
   (&key
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:device_ID __device_ID) (make-array 0 :initial-element 0 :element-type :integer))
    ((:status __status) (make-array 0 :initial-element 0 :element-type :integer))
    ((:error_code __error_code) (make-array 0 :initial-element 0 :element-type :integer))
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _device_ID __device_ID)
   (setq _status __status)
   (setq _error_code __error_code)
   (setq _data __data)
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:device_ID
   (&optional __device_ID)
   (if __device_ID (setq _device_ID __device_ID)) _device_ID)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; int8[] _device_ID
    (* 1    (length _device_ID)) 4
    ;; int8[] _status
    (* 1    (length _status)) 4
    ;; int8[] _error_code
    (* 1    (length _error_code)) 4
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seq
       (write-long _seq s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int8[] _device_ID
     (write-long (length _device_ID) s)
     (dotimes (i (length _device_ID))
       (write-byte (elt _device_ID i) s)
       )
     ;; int8[] _status
     (write-long (length _status) s)
     (dotimes (i (length _status))
       (write-byte (elt _status i) s)
       )
     ;; int8[] _error_code
     (write-long (length _error_code) s)
     (dotimes (i (length _error_code))
       (write-byte (elt _error_code i) s)
       )
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8[] _device_ID
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _device_ID (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _device_ID i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _device_ID i) 127) (setf (elt _device_ID i) (- (elt _device_ID i) 256)))
     ))
   ;; int8[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _status i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _status i) 127) (setf (elt _status i) (- (elt _status i) 256)))
     ))
   ;; int8[] _error_code
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_code (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _error_code i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _error_code i) 127) (setf (elt _error_code i) (- (elt _error_code i) 256)))
     ))
   ;; string[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get botcmd_msgs::bot_pubstatus :md5sum-) "b1817e5d1572e2f529a3329b34502065")
(setf (get botcmd_msgs::bot_pubstatus :datatype-) "botcmd_msgs/bot_pubstatus")
(setf (get botcmd_msgs::bot_pubstatus :definition-)
      "uint32 seq
time stamp
int8[] device_ID
int8[] status
int8[] error_code
string[] data

")



(provide :botcmd_msgs/bot_pubstatus "b1817e5d1572e2f529a3329b34502065")


