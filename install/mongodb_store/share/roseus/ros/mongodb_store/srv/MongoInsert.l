;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store::MongoInsert)
  (if (not (find-package "MONGODB_STORE"))
    (make-package "MONGODB_STORE"))
  (shadow 'MongoInsert (find-package "MONGODB_STORE")))
(unless (find-package "MONGODB_STORE::MONGOINSERT")
  (make-package "MONGODB_STORE::MONGOINSERT"))
(unless (find-package "MONGODB_STORE::MONGOINSERTREQUEST")
  (make-package "MONGODB_STORE::MONGOINSERTREQUEST"))
(unless (find-package "MONGODB_STORE::MONGOINSERTRESPONSE")
  (make-package "MONGODB_STORE::MONGOINSERTRESPONSE"))

(in-package "ROS")





(defclass mongodb_store::MongoInsertRequest
  :super ros::object
  :slots (_db _collection _document ))

(defmethod mongodb_store::MongoInsertRequest
  (:init
   (&key
    ((:db __db) "")
    ((:collection __collection) "")
    ((:document __document) "")
    )
   (send-super :init)
   (setq _db (string __db))
   (setq _collection (string __collection))
   (setq _document (string __document))
   self)
  (:db
   (&optional __db)
   (if __db (setq _db __db)) _db)
  (:collection
   (&optional __collection)
   (if __collection (setq _collection __collection)) _collection)
  (:document
   (&optional __document)
   (if __document (setq _document __document)) _document)
  (:serialization-length
   ()
   (+
    ;; string _db
    4 (length _db)
    ;; string _collection
    4 (length _collection)
    ;; string _document
    4 (length _document)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _db
       (write-long (length _db) s) (princ _db s)
     ;; string _collection
       (write-long (length _collection) s) (princ _collection s)
     ;; string _document
       (write-long (length _document) s) (princ _document s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _db
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _db (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _collection
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collection (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _document
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _document (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mongodb_store::MongoInsertResponse
  :super ros::object
  :slots (_result ))

(defmethod mongodb_store::MongoInsertResponse
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

(defclass mongodb_store::MongoInsert
  :super ros::object
  :slots ())

(setf (get mongodb_store::MongoInsert :md5sum-) "bd76635267dc21edfbf37677e5139543")
(setf (get mongodb_store::MongoInsert :datatype-) "mongodb_store/MongoInsert")
(setf (get mongodb_store::MongoInsert :request) mongodb_store::MongoInsertRequest)
(setf (get mongodb_store::MongoInsert :response) mongodb_store::MongoInsertResponse)

(defmethod mongodb_store::MongoInsertRequest
  (:response () (instance mongodb_store::MongoInsertResponse :init)))

(setf (get mongodb_store::MongoInsertRequest :md5sum-) "bd76635267dc21edfbf37677e5139543")
(setf (get mongodb_store::MongoInsertRequest :datatype-) "mongodb_store/MongoInsertRequest")
(setf (get mongodb_store::MongoInsertRequest :definition-)
      "string db
string collection
string document 
---
string result
")

(setf (get mongodb_store::MongoInsertResponse :md5sum-) "bd76635267dc21edfbf37677e5139543")
(setf (get mongodb_store::MongoInsertResponse :datatype-) "mongodb_store/MongoInsertResponse")
(setf (get mongodb_store::MongoInsertResponse :definition-)
      "string db
string collection
string document 
---
string result
")



(provide :mongodb_store/MongoInsert "bd76635267dc21edfbf37677e5139543")


