;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store_msgs::MongoUpdateMsg)
  (if (not (find-package "MONGODB_STORE_MSGS"))
    (make-package "MONGODB_STORE_MSGS"))
  (shadow 'MongoUpdateMsg (find-package "MONGODB_STORE_MSGS")))
(unless (find-package "MONGODB_STORE_MSGS::MONGOUPDATEMSG")
  (make-package "MONGODB_STORE_MSGS::MONGOUPDATEMSG"))
(unless (find-package "MONGODB_STORE_MSGS::MONGOUPDATEMSGREQUEST")
  (make-package "MONGODB_STORE_MSGS::MONGOUPDATEMSGREQUEST"))
(unless (find-package "MONGODB_STORE_MSGS::MONGOUPDATEMSGRESPONSE")
  (make-package "MONGODB_STORE_MSGS::MONGOUPDATEMSGRESPONSE"))

(in-package "ROS")





(defclass mongodb_store_msgs::MongoUpdateMsgRequest
  :super ros::object
  :slots (_database _collection _upsert _message_query _meta_query _message _meta ))

(defmethod mongodb_store_msgs::MongoUpdateMsgRequest
  (:init
   (&key
    ((:database __database) "")
    ((:collection __collection) "")
    ((:upsert __upsert) nil)
    ((:message_query __message_query) (instance mongodb_store_msgs::StringPairList :init))
    ((:meta_query __meta_query) (instance mongodb_store_msgs::StringPairList :init))
    ((:message __message) (instance mongodb_store_msgs::SerialisedMessage :init))
    ((:meta __meta) (instance mongodb_store_msgs::StringPairList :init))
    )
   (send-super :init)
   (setq _database (string __database))
   (setq _collection (string __collection))
   (setq _upsert __upsert)
   (setq _message_query __message_query)
   (setq _meta_query __meta_query)
   (setq _message __message)
   (setq _meta __meta)
   self)
  (:database
   (&optional __database)
   (if __database (setq _database __database)) _database)
  (:collection
   (&optional __collection)
   (if __collection (setq _collection __collection)) _collection)
  (:upsert
   (&optional __upsert)
   (if __upsert (setq _upsert __upsert)) _upsert)
  (:message_query
   (&rest __message_query)
   (if (keywordp (car __message_query))
       (send* _message_query __message_query)
     (progn
       (if __message_query (setq _message_query (car __message_query)))
       _message_query)))
  (:meta_query
   (&rest __meta_query)
   (if (keywordp (car __meta_query))
       (send* _meta_query __meta_query)
     (progn
       (if __meta_query (setq _meta_query (car __meta_query)))
       _meta_query)))
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
    ;; bool _upsert
    1
    ;; mongodb_store_msgs/StringPairList _message_query
    (send _message_query :serialization-length)
    ;; mongodb_store_msgs/StringPairList _meta_query
    (send _meta_query :serialization-length)
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
     ;; bool _upsert
       (if _upsert (write-byte -1 s) (write-byte 0 s))
     ;; mongodb_store_msgs/StringPairList _message_query
       (send _message_query :serialize s)
     ;; mongodb_store_msgs/StringPairList _meta_query
       (send _meta_query :serialize s)
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
   ;; bool _upsert
     (setq _upsert (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mongodb_store_msgs/StringPairList _message_query
     (send _message_query :deserialize buf ptr-) (incf ptr- (send _message_query :serialization-length))
   ;; mongodb_store_msgs/StringPairList _meta_query
     (send _meta_query :deserialize buf ptr-) (incf ptr- (send _meta_query :serialization-length))
   ;; mongodb_store_msgs/SerialisedMessage _message
     (send _message :deserialize buf ptr-) (incf ptr- (send _message :serialization-length))
   ;; mongodb_store_msgs/StringPairList _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;;
   self)
  )

(defclass mongodb_store_msgs::MongoUpdateMsgResponse
  :super ros::object
  :slots (_id _success ))

(defmethod mongodb_store_msgs::MongoUpdateMsgResponse
  (:init
   (&key
    ((:id __id) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _success __success)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mongodb_store_msgs::MongoUpdateMsg
  :super ros::object
  :slots ())

(setf (get mongodb_store_msgs::MongoUpdateMsg :md5sum-) "c9a34b8e3509040b39c21bb4f3c2ca95")
(setf (get mongodb_store_msgs::MongoUpdateMsg :datatype-) "mongodb_store_msgs/MongoUpdateMsg")
(setf (get mongodb_store_msgs::MongoUpdateMsg :request) mongodb_store_msgs::MongoUpdateMsgRequest)
(setf (get mongodb_store_msgs::MongoUpdateMsg :response) mongodb_store_msgs::MongoUpdateMsgResponse)

(defmethod mongodb_store_msgs::MongoUpdateMsgRequest
  (:response () (instance mongodb_store_msgs::MongoUpdateMsgResponse :init)))

(setf (get mongodb_store_msgs::MongoUpdateMsgRequest :md5sum-) "c9a34b8e3509040b39c21bb4f3c2ca95")
(setf (get mongodb_store_msgs::MongoUpdateMsgRequest :datatype-) "mongodb_store_msgs/MongoUpdateMsgRequest")
(setf (get mongodb_store_msgs::MongoUpdateMsgRequest :definition-)
      "# message used for updating matching ROS msgs from a MongoDB database

string database
string collection
# insert if no matching message found
bool upsert
# key/values to be turned into a query doc on message content
StringPairList message_query
# key/values to be turned into a query doc on meta content
StringPairList meta_query
# the message to be inserted
SerialisedMessage message
# meta description to be added to message, if empty leave meta unchanged, if upsert true and empty, use meta_query
StringPairList meta

================================================================================
MSG: mongodb_store_msgs/StringPairList
StringPair[] pairs

================================================================================
MSG: mongodb_store_msgs/StringPair
string first
string second

================================================================================
MSG: mongodb_store_msgs/SerialisedMessage
# type to of the serialised message
string type
# the serialised message
---
# id of the updated msg
string id
# true if the database was changed
bool success
")

(setf (get mongodb_store_msgs::MongoUpdateMsgResponse :md5sum-) "c9a34b8e3509040b39c21bb4f3c2ca95")
(setf (get mongodb_store_msgs::MongoUpdateMsgResponse :datatype-) "mongodb_store_msgs/MongoUpdateMsgResponse")
(setf (get mongodb_store_msgs::MongoUpdateMsgResponse :definition-)
      "# message used for updating matching ROS msgs from a MongoDB database

string database
string collection
# insert if no matching message found
bool upsert
# key/values to be turned into a query doc on message content
StringPairList message_query
# key/values to be turned into a query doc on meta content
StringPairList meta_query
# the message to be inserted
SerialisedMessage message
# meta description to be added to message, if empty leave meta unchanged, if upsert true and empty, use meta_query
StringPairList meta

================================================================================
MSG: mongodb_store_msgs/StringPairList
StringPair[] pairs

================================================================================
MSG: mongodb_store_msgs/StringPair
string first
string second

================================================================================
MSG: mongodb_store_msgs/SerialisedMessage
# type to of the serialised message
string type
# the serialised message
---
# id of the updated msg
string id
# true if the database was changed
bool success
")



(provide :mongodb_store_msgs/MongoUpdateMsg "c9a34b8e3509040b39c21bb4f3c2ca95")


