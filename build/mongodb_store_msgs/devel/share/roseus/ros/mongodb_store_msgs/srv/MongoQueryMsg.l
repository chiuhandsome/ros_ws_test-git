;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store_msgs::MongoQueryMsg)
  (if (not (find-package "MONGODB_STORE_MSGS"))
    (make-package "MONGODB_STORE_MSGS"))
  (shadow 'MongoQueryMsg (find-package "MONGODB_STORE_MSGS")))
(unless (find-package "MONGODB_STORE_MSGS::MONGOQUERYMSG")
  (make-package "MONGODB_STORE_MSGS::MONGOQUERYMSG"))
(unless (find-package "MONGODB_STORE_MSGS::MONGOQUERYMSGREQUEST")
  (make-package "MONGODB_STORE_MSGS::MONGOQUERYMSGREQUEST"))
(unless (find-package "MONGODB_STORE_MSGS::MONGOQUERYMSGRESPONSE")
  (make-package "MONGODB_STORE_MSGS::MONGOQUERYMSGRESPONSE"))

(in-package "ROS")





(intern "*JSON_QUERY*" (find-package "MONGODB_STORE_MSGS::MONGOQUERYMSGREQUEST"))
(shadow '*JSON_QUERY* (find-package "MONGODB_STORE_MSGS::MONGOQUERYMSGREQUEST"))
(defconstant mongodb_store_msgs::MongoQueryMsgRequest::*JSON_QUERY* "\"jnsdfskajd_fmgs.dlf\"")
(defclass mongodb_store_msgs::MongoQueryMsgRequest
  :super ros::object
  :slots (_database _collection _type _single _limit _message_query _meta_query _sort_query _projection_query ))

(defmethod mongodb_store_msgs::MongoQueryMsgRequest
  (:init
   (&key
    ((:database __database) "")
    ((:collection __collection) "")
    ((:type __type) "")
    ((:single __single) nil)
    ((:limit __limit) 0)
    ((:message_query __message_query) (instance mongodb_store_msgs::StringPairList :init))
    ((:meta_query __meta_query) (instance mongodb_store_msgs::StringPairList :init))
    ((:sort_query __sort_query) (instance mongodb_store_msgs::StringPairList :init))
    ((:projection_query __projection_query) (instance mongodb_store_msgs::StringPairList :init))
    )
   (send-super :init)
   (setq _database (string __database))
   (setq _collection (string __collection))
   (setq _type (string __type))
   (setq _single __single)
   (setq _limit (round __limit))
   (setq _message_query __message_query)
   (setq _meta_query __meta_query)
   (setq _sort_query __sort_query)
   (setq _projection_query __projection_query)
   self)
  (:database
   (&optional __database)
   (if __database (setq _database __database)) _database)
  (:collection
   (&optional __collection)
   (if __collection (setq _collection __collection)) _collection)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:single
   (&optional __single)
   (if __single (setq _single __single)) _single)
  (:limit
   (&optional __limit)
   (if __limit (setq _limit __limit)) _limit)
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
  (:sort_query
   (&rest __sort_query)
   (if (keywordp (car __sort_query))
       (send* _sort_query __sort_query)
     (progn
       (if __sort_query (setq _sort_query (car __sort_query)))
       _sort_query)))
  (:projection_query
   (&rest __projection_query)
   (if (keywordp (car __projection_query))
       (send* _projection_query __projection_query)
     (progn
       (if __projection_query (setq _projection_query (car __projection_query)))
       _projection_query)))
  (:serialization-length
   ()
   (+
    ;; string _database
    4 (length _database)
    ;; string _collection
    4 (length _collection)
    ;; string _type
    4 (length _type)
    ;; bool _single
    1
    ;; uint16 _limit
    2
    ;; mongodb_store_msgs/StringPairList _message_query
    (send _message_query :serialization-length)
    ;; mongodb_store_msgs/StringPairList _meta_query
    (send _meta_query :serialization-length)
    ;; mongodb_store_msgs/StringPairList _sort_query
    (send _sort_query :serialization-length)
    ;; mongodb_store_msgs/StringPairList _projection_query
    (send _projection_query :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _database
       (write-long (length _database) s) (princ _database s)
     ;; string _collection
       (write-long (length _collection) s) (princ _collection s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; bool _single
       (if _single (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _limit
       (write-word _limit s)
     ;; mongodb_store_msgs/StringPairList _message_query
       (send _message_query :serialize s)
     ;; mongodb_store_msgs/StringPairList _meta_query
       (send _meta_query :serialize s)
     ;; mongodb_store_msgs/StringPairList _sort_query
       (send _sort_query :serialize s)
     ;; mongodb_store_msgs/StringPairList _projection_query
       (send _projection_query :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _database
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _database (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collection
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collection (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _single
     (setq _single (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _limit
     (setq _limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; mongodb_store_msgs/StringPairList _message_query
     (send _message_query :deserialize buf ptr-) (incf ptr- (send _message_query :serialization-length))
   ;; mongodb_store_msgs/StringPairList _meta_query
     (send _meta_query :deserialize buf ptr-) (incf ptr- (send _meta_query :serialization-length))
   ;; mongodb_store_msgs/StringPairList _sort_query
     (send _sort_query :deserialize buf ptr-) (incf ptr- (send _sort_query :serialization-length))
   ;; mongodb_store_msgs/StringPairList _projection_query
     (send _projection_query :deserialize buf ptr-) (incf ptr- (send _projection_query :serialization-length))
   ;;
   self)
  )

(defclass mongodb_store_msgs::MongoQueryMsgResponse
  :super ros::object
  :slots (_messages _metas ))

(defmethod mongodb_store_msgs::MongoQueryMsgResponse
  (:init
   (&key
    ((:messages __messages) (let (r) (dotimes (i 0) (push (instance mongodb_store_msgs::SerialisedMessage :init) r)) r))
    ((:metas __metas) (let (r) (dotimes (i 0) (push (instance mongodb_store_msgs::StringPairList :init) r)) r))
    )
   (send-super :init)
   (setq _messages __messages)
   (setq _metas __metas)
   self)
  (:messages
   (&rest __messages)
   (if (keywordp (car __messages))
       (send* _messages __messages)
     (progn
       (if __messages (setq _messages (car __messages)))
       _messages)))
  (:metas
   (&rest __metas)
   (if (keywordp (car __metas))
       (send* _metas __metas)
     (progn
       (if __metas (setq _metas (car __metas)))
       _metas)))
  (:serialization-length
   ()
   (+
    ;; mongodb_store_msgs/SerialisedMessage[] _messages
    (apply #'+ (send-all _messages :serialization-length)) 4
    ;; mongodb_store_msgs/StringPairList[] _metas
    (apply #'+ (send-all _metas :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mongodb_store_msgs/SerialisedMessage[] _messages
     (write-long (length _messages) s)
     (dolist (elem _messages)
       (send elem :serialize s)
       )
     ;; mongodb_store_msgs/StringPairList[] _metas
     (write-long (length _metas) s)
     (dolist (elem _metas)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mongodb_store_msgs/SerialisedMessage[] _messages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _messages (let (r) (dotimes (i n) (push (instance mongodb_store_msgs::SerialisedMessage :init) r)) r))
     (dolist (elem- _messages)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; mongodb_store_msgs/StringPairList[] _metas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _metas (let (r) (dotimes (i n) (push (instance mongodb_store_msgs::StringPairList :init) r)) r))
     (dolist (elem- _metas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass mongodb_store_msgs::MongoQueryMsg
  :super ros::object
  :slots ())

(setf (get mongodb_store_msgs::MongoQueryMsg :md5sum-) "45d9c9b353113ab0888f363d63903883")
(setf (get mongodb_store_msgs::MongoQueryMsg :datatype-) "mongodb_store_msgs/MongoQueryMsg")
(setf (get mongodb_store_msgs::MongoQueryMsg :request) mongodb_store_msgs::MongoQueryMsgRequest)
(setf (get mongodb_store_msgs::MongoQueryMsg :response) mongodb_store_msgs::MongoQueryMsgResponse)

(defmethod mongodb_store_msgs::MongoQueryMsgRequest
  (:response () (instance mongodb_store_msgs::MongoQueryMsgResponse :init)))

(setf (get mongodb_store_msgs::MongoQueryMsgRequest :md5sum-) "45d9c9b353113ab0888f363d63903883")
(setf (get mongodb_store_msgs::MongoQueryMsgRequest :datatype-) "mongodb_store_msgs/MongoQueryMsgRequest")
(setf (get mongodb_store_msgs::MongoQueryMsgRequest :definition-)
      "# message used for querying for ids of matching ROS msgs from a MongoDB database

# constant passed as key in query to indicate the value should be treated as a query string (assuming that is possible...)
string JSON_QUERY=\"jnsdfskajd_fmgs.dlf\"

string database
string collection
# type to deserialise into
string type
# whether you're only looking for a single 
bool single
# how much messages you want. limit=0 is equivalent to setting no limit.
uint16 limit
# key/values to be turned into a query doc on message content
StringPairList message_query
# key/values to be turned into a query doc on meta content
StringPairList meta_query
# key/values to be turned into a sort query
StringPairList sort_query
# key/values to be turned into a projection query
StringPairList projection_query

================================================================================
MSG: mongodb_store_msgs/StringPairList
StringPair[] pairs

================================================================================
MSG: mongodb_store_msgs/StringPair
string first
string second
---
# messages which match the query
SerialisedMessage[] messages
StringPairList[] metas


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

(setf (get mongodb_store_msgs::MongoQueryMsgResponse :md5sum-) "45d9c9b353113ab0888f363d63903883")
(setf (get mongodb_store_msgs::MongoQueryMsgResponse :datatype-) "mongodb_store_msgs/MongoQueryMsgResponse")
(setf (get mongodb_store_msgs::MongoQueryMsgResponse :definition-)
      "# message used for querying for ids of matching ROS msgs from a MongoDB database

# constant passed as key in query to indicate the value should be treated as a query string (assuming that is possible...)
string JSON_QUERY=\"jnsdfskajd_fmgs.dlf\"

string database
string collection
# type to deserialise into
string type
# whether you're only looking for a single 
bool single
# how much messages you want. limit=0 is equivalent to setting no limit.
uint16 limit
# key/values to be turned into a query doc on message content
StringPairList message_query
# key/values to be turned into a query doc on meta content
StringPairList meta_query
# key/values to be turned into a sort query
StringPairList sort_query
# key/values to be turned into a projection query
StringPairList projection_query

================================================================================
MSG: mongodb_store_msgs/StringPairList
StringPair[] pairs

================================================================================
MSG: mongodb_store_msgs/StringPair
string first
string second
---
# messages which match the query
SerialisedMessage[] messages
StringPairList[] metas


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



(provide :mongodb_store_msgs/MongoQueryMsg "45d9c9b353113ab0888f363d63903883")


