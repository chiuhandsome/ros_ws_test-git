;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store::MongoUpdate)
  (if (not (find-package "MONGODB_STORE"))
    (make-package "MONGODB_STORE"))
  (shadow 'MongoUpdate (find-package "MONGODB_STORE")))
(unless (find-package "MONGODB_STORE::MONGOUPDATE")
  (make-package "MONGODB_STORE::MONGOUPDATE"))
(unless (find-package "MONGODB_STORE::MONGOUPDATEREQUEST")
  (make-package "MONGODB_STORE::MONGOUPDATEREQUEST"))
(unless (find-package "MONGODB_STORE::MONGOUPDATERESPONSE")
  (make-package "MONGODB_STORE::MONGOUPDATERESPONSE"))

(in-package "ROS")





(defclass mongodb_store::MongoUpdateRequest
  :super ros::object
  :slots (_db _collection _query _update ))

(defmethod mongodb_store::MongoUpdateRequest
  (:init
   (&key
    ((:db __db) "")
    ((:collection __collection) "")
    ((:query __query) "")
    ((:update __update) "")
    )
   (send-super :init)
   (setq _db (string __db))
   (setq _collection (string __collection))
   (setq _query (string __query))
   (setq _update (string __update))
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
  (:update
   (&optional __update)
   (if __update (setq _update __update)) _update)
  (:serialization-length
   ()
   (+
    ;; string _db
    4 (length _db)
    ;; string _collection
    4 (length _collection)
    ;; string _query
    4 (length _query)
    ;; string _update
    4 (length _update)
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
     ;; string _update
       (write-long (length _update) s) (princ _update s)
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
   ;; string _update
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mongodb_store::MongoUpdateResponse
  :super ros::object
  :slots (_result ))

(defmethod mongodb_store::MongoUpdateResponse
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

(defclass mongodb_store::MongoUpdate
  :super ros::object
  :slots ())

(setf (get mongodb_store::MongoUpdate :md5sum-) "2806c067c40cdb2b9e11634221c51298")
(setf (get mongodb_store::MongoUpdate :datatype-) "mongodb_store/MongoUpdate")
(setf (get mongodb_store::MongoUpdate :request) mongodb_store::MongoUpdateRequest)
(setf (get mongodb_store::MongoUpdate :response) mongodb_store::MongoUpdateResponse)

(defmethod mongodb_store::MongoUpdateRequest
  (:response () (instance mongodb_store::MongoUpdateResponse :init)))

(setf (get mongodb_store::MongoUpdateRequest :md5sum-) "2806c067c40cdb2b9e11634221c51298")
(setf (get mongodb_store::MongoUpdateRequest :datatype-) "mongodb_store/MongoUpdateRequest")
(setf (get mongodb_store::MongoUpdateRequest :definition-)
      "string db
string collection
string query
string update
---
string result
")

(setf (get mongodb_store::MongoUpdateResponse :md5sum-) "2806c067c40cdb2b9e11634221c51298")
(setf (get mongodb_store::MongoUpdateResponse :datatype-) "mongodb_store/MongoUpdateResponse")
(setf (get mongodb_store::MongoUpdateResponse :definition-)
      "string db
string collection
string query
string update
---
string result
")



(provide :mongodb_store/MongoUpdate "2806c067c40cdb2b9e11634221c51298")


