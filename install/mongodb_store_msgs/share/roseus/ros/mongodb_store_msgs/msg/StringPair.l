;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store_msgs::StringPair)
  (if (not (find-package "MONGODB_STORE_MSGS"))
    (make-package "MONGODB_STORE_MSGS"))
  (shadow 'StringPair (find-package "MONGODB_STORE_MSGS")))
(unless (find-package "MONGODB_STORE_MSGS::STRINGPAIR")
  (make-package "MONGODB_STORE_MSGS::STRINGPAIR"))

(in-package "ROS")
;;//! \htmlinclude StringPair.msg.html


(defclass mongodb_store_msgs::StringPair
  :super ros::object
  :slots (_first _second ))

(defmethod mongodb_store_msgs::StringPair
  (:init
   (&key
    ((:first __first) "")
    ((:second __second) "")
    )
   (send-super :init)
   (setq _first (string __first))
   (setq _second (string __second))
   self)
  (:first
   (&optional __first)
   (if __first (setq _first __first)) _first)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:serialization-length
   ()
   (+
    ;; string _first
    4 (length _first)
    ;; string _second
    4 (length _second)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _first
       (write-long (length _first) s) (princ _first s)
     ;; string _second
       (write-long (length _second) s) (princ _second s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _first
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _first (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _second
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _second (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mongodb_store_msgs::StringPair :md5sum-) "c0d0db6e21f3fc1eb068f9cc22ba8beb")
(setf (get mongodb_store_msgs::StringPair :datatype-) "mongodb_store_msgs/StringPair")
(setf (get mongodb_store_msgs::StringPair :definition-)
      "string first
string second

")



(provide :mongodb_store_msgs/StringPair "c0d0db6e21f3fc1eb068f9cc22ba8beb")


