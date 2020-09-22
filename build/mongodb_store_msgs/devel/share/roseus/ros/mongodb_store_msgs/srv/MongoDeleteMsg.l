;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store_msgs::MongoDeleteMsg)
  (if (not (find-package "MONGODB_STORE_MSGS"))
    (make-package "MONGODB_STORE_MSGS"))
  (shadow 'MongoDeleteMsg (find-package "MONGODB_STORE_MSGS")))
(unless (find-package "MONGODB_STORE_MSGS::MONGODELETEMSG")
  (make-package "MONGODB_STORE_MSGS::MONGODELETEMSG"))
(unless (find-package "MONGODB_STORE_MSGS::MONGODELETEMSGREQUEST")
  (make-package "MONGODB_STORE_MSGS::MONGODELETEMSGREQUEST"))
(unless (find-package "MONGODB_STORE_MSGS::MONGODELETEMSGRESPONSE")
  (make-package "MONGODB_STORE_MSGS::MONGODELETEMSGRESPONSE"))

(in-package "ROS")





(defclass mongodb_store_msgs::MongoDeleteMsgRequest
  :super ros::object
  :slots (_database _collection _document_id ))

(defmethod mongodb_store_msgs::MongoDeleteMsgRequest
  (:init
   (&key
    ((:database __database) "")
    ((:collection __collection) "")
    ((:document_id __document_id) "")
    )
   (send-super :init)
   (setq _database (string __database))
   (setq _collection (string __collection))
   (setq _document_id (string __document_id))
   self)
  (:database
   (&optional __database)
   (if __database (setq _database __database)) _database)
  (:collection
   (&optional __collection)
   (if __collection (setq _collection __collection)) _collection)
  (:document_id
   (&optional __document_id)
   (if __document_id (setq _document_id __document_id)) _document_id)
  (:serialization-length
   ()
   (+
    ;; string _database
    4 (length _database)
    ;; string _collection
    4 (length _collection)
    ;; string _document_id
    4 (length _document_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _database
       (write-long (length _database) s) (princ _database s)
     ;; string _collection
       (write-long (length _collection) s) (princ _collection s)
     ;; string _document_id
       (write-long (length _document_id) s) (princ _document_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _database
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _database (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collection
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collection (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _document_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _document_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mongodb_store_msgs::MongoDeleteMsgResponse
  :super ros::object
  :slots (_success ))

(defmethod mongodb_store_msgs::MongoDeleteMsgResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mongodb_store_msgs::MongoDeleteMsg
  :super ros::object
  :slots ())

(setf (get mongodb_store_msgs::MongoDeleteMsg :md5sum-) "539ecd40e2a1f10c047a4c404ebe139f")
(setf (get mongodb_store_msgs::MongoDeleteMsg :datatype-) "mongodb_store_msgs/MongoDeleteMsg")
(setf (get mongodb_store_msgs::MongoDeleteMsg :request) mongodb_store_msgs::MongoDeleteMsgRequest)
(setf (get mongodb_store_msgs::MongoDeleteMsg :response) mongodb_store_msgs::MongoDeleteMsgResponse)

(defmethod mongodb_store_msgs::MongoDeleteMsgRequest
  (:response () (instance mongodb_store_msgs::MongoDeleteMsgResponse :init)))

(setf (get mongodb_store_msgs::MongoDeleteMsgRequest :md5sum-) "539ecd40e2a1f10c047a4c404ebe139f")
(setf (get mongodb_store_msgs::MongoDeleteMsgRequest :datatype-) "mongodb_store_msgs/MongoDeleteMsgRequest")
(setf (get mongodb_store_msgs::MongoDeleteMsgRequest :definition-)
      "string database
string collection
string document_id 
---
bool success
")

(setf (get mongodb_store_msgs::MongoDeleteMsgResponse :md5sum-) "539ecd40e2a1f10c047a4c404ebe139f")
(setf (get mongodb_store_msgs::MongoDeleteMsgResponse :datatype-) "mongodb_store_msgs/MongoDeleteMsgResponse")
(setf (get mongodb_store_msgs::MongoDeleteMsgResponse :definition-)
      "string database
string collection
string document_id 
---
bool success
")



(provide :mongodb_store_msgs/MongoDeleteMsg "539ecd40e2a1f10c047a4c404ebe139f")


