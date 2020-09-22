;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store::GetParam)
  (if (not (find-package "MONGODB_STORE"))
    (make-package "MONGODB_STORE"))
  (shadow 'GetParam (find-package "MONGODB_STORE")))
(unless (find-package "MONGODB_STORE::GETPARAM")
  (make-package "MONGODB_STORE::GETPARAM"))
(unless (find-package "MONGODB_STORE::GETPARAMREQUEST")
  (make-package "MONGODB_STORE::GETPARAMREQUEST"))
(unless (find-package "MONGODB_STORE::GETPARAMRESPONSE")
  (make-package "MONGODB_STORE::GETPARAMRESPONSE"))

(in-package "ROS")





(defclass mongodb_store::GetParamRequest
  :super ros::object
  :slots (_param_name ))

(defmethod mongodb_store::GetParamRequest
  (:init
   (&key
    ((:param_name __param_name) "")
    )
   (send-super :init)
   (setq _param_name (string __param_name))
   self)
  (:param_name
   (&optional __param_name)
   (if __param_name (setq _param_name __param_name)) _param_name)
  (:serialization-length
   ()
   (+
    ;; string _param_name
    4 (length _param_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _param_name
       (write-long (length _param_name) s) (princ _param_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _param_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mongodb_store::GetParamResponse
  :super ros::object
  :slots (_success _param_value ))

(defmethod mongodb_store::GetParamResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:param_value __param_value) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _param_value (string __param_value))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:param_value
   (&optional __param_value)
   (if __param_value (setq _param_value __param_value)) _param_value)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _param_value
    4 (length _param_value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _param_value
       (write-long (length _param_value) s) (princ _param_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _param_value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mongodb_store::GetParam
  :super ros::object
  :slots ())

(setf (get mongodb_store::GetParam :md5sum-) "add0a9ca8505353703e4f0dfd366c0c2")
(setf (get mongodb_store::GetParam :datatype-) "mongodb_store/GetParam")
(setf (get mongodb_store::GetParam :request) mongodb_store::GetParamRequest)
(setf (get mongodb_store::GetParam :response) mongodb_store::GetParamResponse)

(defmethod mongodb_store::GetParamRequest
  (:response () (instance mongodb_store::GetParamResponse :init)))

(setf (get mongodb_store::GetParamRequest :md5sum-) "add0a9ca8505353703e4f0dfd366c0c2")
(setf (get mongodb_store::GetParamRequest :datatype-) "mongodb_store/GetParamRequest")
(setf (get mongodb_store::GetParamRequest :definition-)
      "string param_name
---
bool success
string param_value
")

(setf (get mongodb_store::GetParamResponse :md5sum-) "add0a9ca8505353703e4f0dfd366c0c2")
(setf (get mongodb_store::GetParamResponse :datatype-) "mongodb_store/GetParamResponse")
(setf (get mongodb_store::GetParamResponse :definition-)
      "string param_name
---
bool success
string param_value
")



(provide :mongodb_store/GetParam "add0a9ca8505353703e4f0dfd366c0c2")


