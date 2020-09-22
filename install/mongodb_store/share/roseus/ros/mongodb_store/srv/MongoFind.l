;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store::MongoFind)
  (if (not (find-package "MONGODB_STORE"))
    (make-package "MONGODB_STORE"))
  (shadow 'MongoFind (find-package "MONGODB_STORE")))
(unless (find-package "MONGODB_STORE::MONGOFIND")
  (make-package "MONGODB_STORE::MONGOFIND"))
(unless (find-package "MONGODB_STORE::MONGOFINDREQUEST")
  (make-package "MONGODB_STORE::MONGOFINDREQUEST"))
(unless (find-package "MONGODB_STORE::MONGOFINDRESPONSE")
  (make-package "MONGODB_STORE::MONGOFINDRESPONSE"))

(in-package "ROS")





(defclass mongodb_store::MongoFindRequest
  :super ros::object
  :slots (_db _collection _query ))

(defmethod mongodb_store::MongoFindRequest
  (:init
   (&key
    ((:db __db) "")
    ((:collection __collection) "")
    ((:query __query) "")
    )
   (send-super :init)
   (setq _db (string __db))
   (setq _collection (string __collection))
   (setq _query (string __query))
   self)
  (:db
   (&optional __db)
   (if __db (setq _db __db)) _db)
  (:collection
   (&optional __collection)
   (if __collection (setq _collection __collection)) _collection)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:serialization-length
   ()
   (+
    ;; string _db
    4 (length _db)
    ;; string _collection
    4 (length _collection)
    ;; string _query
    4 (length _query)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _db
       (write-long (length _db) s) (princ _db s)
     ;; string _collection
       (write-long (length _collection) s) (princ _collection s)
     ;; string _query
       (write-long (length _query) s) (princ _query s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _db
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _db (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collection
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collection (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mongodb_store::MongoFindResponse
  :super ros::object
  :slots (_result ))

(defmethod mongodb_store::MongoFindResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mongodb_store::MongoFind
  :super ros::object
  :slots ())

(setf (get mongodb_store::MongoFind :md5sum-) "af526ebd8fc8f237d912cdce0c13e918")
(setf (get mongodb_store::MongoFind :datatype-) "mongodb_store/MongoFind")
(setf (get mongodb_store::MongoFind :request) mongodb_store::MongoFindRequest)
(setf (get mongodb_store::MongoFind :response) mongodb_store::MongoFindResponse)

(defmethod mongodb_store::MongoFindRequest
  (:response () (instance mongodb_store::MongoFindResponse :init)))

(setf (get mongodb_store::MongoFindRequest :md5sum-) "af526ebd8fc8f237d912cdce0c13e918")
(setf (get mongodb_store::MongoFindRequest :datatype-) "mongodb_store/MongoFindRequest")
(setf (get mongodb_store::MongoFindRequest :definition-)
      "string db
string collection
string query
---
string result
")

(setf (get mongodb_store::MongoFindResponse :md5sum-) "af526ebd8fc8f237d912cdce0c13e918")
(setf (get mongodb_store::MongoFindResponse :datatype-) "mongodb_store/MongoFindResponse")
(setf (get mongodb_store::MongoFindResponse :definition-)
      "string db
string collection
string query
---
string result
")



(provide :mongodb_store/MongoFind "af526ebd8fc8f237d912cdce0c13e918")


