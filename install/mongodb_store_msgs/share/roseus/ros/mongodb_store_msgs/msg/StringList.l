;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store_msgs::StringList)
  (if (not (find-package "MONGODB_STORE_MSGS"))
    (make-package "MONGODB_STORE_MSGS"))
  (shadow 'StringList (find-package "MONGODB_STORE_MSGS")))
(unless (find-package "MONGODB_STORE_MSGS::STRINGLIST")
  (make-package "MONGODB_STORE_MSGS::STRINGLIST"))

(in-package "ROS")
;;//! \htmlinclude StringList.msg.html


(defclass mongodb_store_msgs::StringList
  :super ros::object
  :slots (_data ))

(defmethod mongodb_store_msgs::StringList
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(setf (get mongodb_store_msgs::StringList :md5sum-) "cce5a364f3a3be12c9722c6dcad2fa94")
(setf (get mongodb_store_msgs::StringList :datatype-) "mongodb_store_msgs/StringList")
(setf (get mongodb_store_msgs::StringList :definition-)
      "string[] data

")



(provide :mongodb_store_msgs/StringList "cce5a364f3a3be12c9722c6dcad2fa94")


