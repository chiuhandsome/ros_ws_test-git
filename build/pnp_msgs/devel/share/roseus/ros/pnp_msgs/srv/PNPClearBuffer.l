;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPClearBuffer)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPClearBuffer (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPCLEARBUFFER")
  (make-package "PNP_MSGS::PNPCLEARBUFFER"))
(unless (find-package "PNP_MSGS::PNPCLEARBUFFERREQUEST")
  (make-package "PNP_MSGS::PNPCLEARBUFFERREQUEST"))
(unless (find-package "PNP_MSGS::PNPCLEARBUFFERRESPONSE")
  (make-package "PNP_MSGS::PNPCLEARBUFFERRESPONSE"))

(in-package "ROS")





(defclass pnp_msgs::PNPClearBufferRequest
  :super ros::object
  :slots (_cond ))

(defmethod pnp_msgs::PNPClearBufferRequest
  (:init
   (&key
    ((:cond __cond) "")
    )
   (send-super :init)
   (setq _cond (string __cond))
   self)
  (:cond
   (&optional __cond)
   (if __cond (setq _cond __cond)) _cond)
  (:serialization-length
   ()
   (+
    ;; string _cond
    4 (length _cond)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cond
       (write-long (length _cond) s) (princ _cond s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cond
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cond (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pnp_msgs::PNPClearBufferResponse
  :super ros::object
  :slots (_answer ))

(defmethod pnp_msgs::PNPClearBufferResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pnp_msgs::PNPClearBuffer
  :super ros::object
  :slots ())

(setf (get pnp_msgs::PNPClearBuffer :md5sum-) "70dde2d68f4afb0b125abb038f75e1e5")
(setf (get pnp_msgs::PNPClearBuffer :datatype-) "pnp_msgs/PNPClearBuffer")
(setf (get pnp_msgs::PNPClearBuffer :request) pnp_msgs::PNPClearBufferRequest)
(setf (get pnp_msgs::PNPClearBuffer :response) pnp_msgs::PNPClearBufferResponse)

(defmethod pnp_msgs::PNPClearBufferRequest
  (:response () (instance pnp_msgs::PNPClearBufferResponse :init)))

(setf (get pnp_msgs::PNPClearBufferRequest :md5sum-) "70dde2d68f4afb0b125abb038f75e1e5")
(setf (get pnp_msgs::PNPClearBufferRequest :datatype-) "pnp_msgs/PNPClearBufferRequest")
(setf (get pnp_msgs::PNPClearBufferRequest :definition-)
      "string cond
---
string answer

")

(setf (get pnp_msgs::PNPClearBufferResponse :md5sum-) "70dde2d68f4afb0b125abb038f75e1e5")
(setf (get pnp_msgs::PNPClearBufferResponse :datatype-) "pnp_msgs/PNPClearBufferResponse")
(setf (get pnp_msgs::PNPClearBufferResponse :definition-)
      "string cond
---
string answer

")



(provide :pnp_msgs/PNPClearBuffer "70dde2d68f4afb0b125abb038f75e1e5")


