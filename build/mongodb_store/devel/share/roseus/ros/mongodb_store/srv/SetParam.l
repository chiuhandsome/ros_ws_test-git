;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store::SetParam)
  (if (not (find-package "MONGODB_STORE"))
    (make-package "MONGODB_STORE"))
  (shadow 'SetParam (find-package "MONGODB_STORE")))
(unless (find-package "MONGODB_STORE::SETPARAM")
  (make-package "MONGODB_STORE::SETPARAM"))
(unless (find-package "MONGODB_STORE::SETPARAMREQUEST")
  (make-package "MONGODB_STORE::SETPARAMREQUEST"))
(unless (find-package "MONGODB_STORE::SETPARAMRESPONSE")
  (make-package "MONGODB_STORE::SETPARAMRESPONSE"))

(in-package "ROS")





(defclass mongodb_store::SetParamRequest
  :super ros::object
  :slots (_param ))

(defmethod mongodb_store::SetParamRequest
  (:init
   (&key
    ((:param __param) "")
    )
   (send-super :init)
   (setq _param (string __param))
   self)
  (:param
   (&optional __param)
   (if __param (setq _param __param)) _param)
  (:serialization-length
   ()
   (+
    ;; string _param
    4 (length _param)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _param
       (write-long (length _param) s) (princ _param s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _param
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mongodb_store::SetParamResponse
  :super ros::object
  :slots (_success ))

(defmethod mongodb_store::SetParamResponse
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

(defclass mongodb_store::SetParam
  :super ros::object
  :slots ())

(setf (get mongodb_store::SetParam :md5sum-) "0ca675cadcc7920678717a658779319b")
(setf (get mongodb_store::SetParam :datatype-) "mongodb_store/SetParam")
(setf (get mongodb_store::SetParam :request) mongodb_store::SetParamRequest)
(setf (get mongodb_store::SetParam :response) mongodb_store::SetParamResponse)

(defmethod mongodb_store::SetParamRequest
  (:response () (instance mongodb_store::SetParamResponse :init)))

(setf (get mongodb_store::SetParamRequest :md5sum-) "0ca675cadcc7920678717a658779319b")
(setf (get mongodb_store::SetParamRequest :datatype-) "mongodb_store/SetParamRequest")
(setf (get mongodb_store::SetParamRequest :definition-)
      "string param
---
bool success
")

(setf (get mongodb_store::SetParamResponse :md5sum-) "0ca675cadcc7920678717a658779319b")
(setf (get mongodb_store::SetParamResponse :datatype-) "mongodb_store/SetParamResponse")
(setf (get mongodb_store::SetParamResponse :definition-)
      "string param
---
bool success
")



(provide :mongodb_store/SetParam "0ca675cadcc7920678717a658779319b")


