;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store_msgs::StringPairList)
  (if (not (find-package "MONGODB_STORE_MSGS"))
    (make-package "MONGODB_STORE_MSGS"))
  (shadow 'StringPairList (find-package "MONGODB_STORE_MSGS")))
(unless (find-package "MONGODB_STORE_MSGS::STRINGPAIRLIST")
  (make-package "MONGODB_STORE_MSGS::STRINGPAIRLIST"))

(in-package "ROS")
;;//! \htmlinclude StringPairList.msg.html


(defclass mongodb_store_msgs::StringPairList
  :super ros::object
  :slots (_pairs ))

(defmethod mongodb_store_msgs::StringPairList
  (:init
   (&key
    ((:pairs __pairs) (let (r) (dotimes (i 0) (push (instance mongodb_store_msgs::StringPair :init) r)) r))
    )
   (send-super :init)
   (setq _pairs __pairs)
   self)
  (:pairs
   (&rest __pairs)
   (if (keywordp (car __pairs))
       (send* _pairs __pairs)
     (progn
       (if __pairs (setq _pairs (car __pairs)))
       _pairs)))
  (:serialization-length
   ()
   (+
    ;; mongodb_store_msgs/StringPair[] _pairs
    (apply #'+ (send-all _pairs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mongodb_store_msgs/StringPair[] _pairs
     (write-long (length _pairs) s)
     (dolist (elem _pairs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mongodb_store_msgs/StringPair[] _pairs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pairs (let (r) (dotimes (i n) (push (instance mongodb_store_msgs::StringPair :init) r)) r))
     (dolist (elem- _pairs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mongodb_store_msgs::StringPairList :md5sum-) "50c368c0f345d8de86876a3bada40aad")
(setf (get mongodb_store_msgs::StringPairList :datatype-) "mongodb_store_msgs/StringPairList")
(setf (get mongodb_store_msgs::StringPairList :definition-)
      "StringPair[] pairs

================================================================================
MSG: mongodb_store_msgs/StringPair
string first
string second

")



(provide :mongodb_store_msgs/StringPairList "50c368c0f345d8de86876a3bada40aad")


