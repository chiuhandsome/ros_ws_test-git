;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store_msgs::Insert)
  (if (not (find-package "MONGODB_STORE_MSGS"))
    (make-package "MONGODB_STORE_MSGS"))
  (shadow 'Insert (find-package "MONGODB_STORE_MSGS")))
(unless (find-package "MONGODB_STORE_MSGS::INSERT")
  (make-package "MONGODB_STORE_MSGS::INSERT"))

(in-package "ROS")
;;//! \htmlinclude Insert.msg.html


(defclass mongodb_store_msgs::Insert
  :super ros::object
  :slots (_database _collection _message _meta ))

(defmethod mongodb_store_msgs::Insert
  (:init
   (&key
    ((:database __database) "")
    ((:collection __collection) "")
    ((:message __message) (instance mongodb_store_msgs::SerialisedMessage :init))
    ((:meta __meta) (instance mongodb_store_msgs::StringPairList :init))
    )
   (send-super :init)
   (setq _database (string __database))
   (setq _collection (string __collection))
   (setq _message __message)
   (setq _meta __meta)
   self)
  (:database
   (&optional __database)
   (if __database (setq _database __database)) _database)
  (:collection
   (&optional __collection)
   (if __collection (setq _collection __collection)) _collection)
  (:message
   (&rest __message)
   (if (keywordp (car __message))
       (send* _message __message)
     (progn
       (if __message (setq _message (car __message)))
       _message)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:serialization-length
   ()
   (+
    ;; string _database
    4 (length _database)
    ;; string _collection
    4 (length _collection)
    ;; mongodb_store_msgs/SerialisedMessage _message
    (send _message :serialization-length)
    ;; mongodb_store_msgs/StringPairList _meta
    (send _meta :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _database
       (write-long (length _database) s) (princ _database s)
     ;; string _collection
       (write-long (length _collection) s) (princ _collection s)
     ;; mongodb_store_msgs/SerialisedMessage _message
       (send _message :serialize s)
     ;; mongodb_store_msgs/StringPairList _meta
       (send _meta :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _database
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _database (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collection
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collection (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mongodb_store_msgs/SerialisedMessage _message
     (send _message :deserialize buf ptr-) (incf ptr- (send _message :serialization-length))
   ;; mongodb_store_msgs/StringPairList _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;;
   self)
  )

(setf (get mongodb_store_msgs::Insert :md5sum-) "d071b179071167c692331b5356e30470")
(setf (get mongodb_store_msgs::Insert :datatype-) "mongodb_store_msgs/Insert")
(setf (get mongodb_store_msgs::Insert :definition-)
      "# this is the same as mongodb_store_msgs/MongoInsertMsgRequest
string database
string collection
SerialisedMessage message
# meta description to be added to message, each pair interpreted as key = value
StringPairList meta

================================================================================
MSG: mongodb_store_msgs/SerialisedMessage
# type to of the serialised message
string type
# the serialised message
uint8[] msg
================================================================================
MSG: mongodb_store_msgs/StringPairList
StringPair[] pairs

================================================================================
MSG: mongodb_store_msgs/StringPair
string first
string second

")



(provide :mongodb_store_msgs/Insert "d071b179071167c692331b5356e30470")


