;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPGetVariableValue)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPGetVariableValue (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPGETVARIABLEVALUE")
  (make-package "PNP_MSGS::PNPGETVARIABLEVALUE"))
(unless (find-package "PNP_MSGS::PNPGETVARIABLEVALUEREQUEST")
  (make-package "PNP_MSGS::PNPGETVARIABLEVALUEREQUEST"))
(unless (find-package "PNP_MSGS::PNPGETVARIABLEVALUERESPONSE")
  (make-package "PNP_MSGS::PNPGETVARIABLEVALUERESPONSE"))

(in-package "ROS")





(defclass pnp_msgs::PNPGetVariableValueRequest
  :super ros::object
  :slots (_variable ))

(defmethod pnp_msgs::PNPGetVariableValueRequest
  (:init
   (&key
    ((:variable __variable) "")
    )
   (send-super :init)
   (setq _variable (string __variable))
   self)
  (:variable
   (&optional __variable)
   (if __variable (setq _variable __variable)) _variable)
  (:serialization-length
   ()
   (+
    ;; string _variable
    4 (length _variable)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _variable
       (write-long (length _variable) s) (princ _variable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _variable
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _variable (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pnp_msgs::PNPGetVariableValueResponse
  :super ros::object
  :slots (_answer ))

(defmethod pnp_msgs::PNPGetVariableValueResponse
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

(defclass pnp_msgs::PNPGetVariableValue
  :super ros::object
  :slots ())

(setf (get pnp_msgs::PNPGetVariableValue :md5sum-) "2cb822bc826e5843de6b96ba6e683d4b")
(setf (get pnp_msgs::PNPGetVariableValue :datatype-) "pnp_msgs/PNPGetVariableValue")
(setf (get pnp_msgs::PNPGetVariableValue :request) pnp_msgs::PNPGetVariableValueRequest)
(setf (get pnp_msgs::PNPGetVariableValue :response) pnp_msgs::PNPGetVariableValueResponse)

(defmethod pnp_msgs::PNPGetVariableValueRequest
  (:response () (instance pnp_msgs::PNPGetVariableValueResponse :init)))

(setf (get pnp_msgs::PNPGetVariableValueRequest :md5sum-) "2cb822bc826e5843de6b96ba6e683d4b")
(setf (get pnp_msgs::PNPGetVariableValueRequest :datatype-) "pnp_msgs/PNPGetVariableValueRequest")
(setf (get pnp_msgs::PNPGetVariableValueRequest :definition-)
      "string variable
---
string answer

")

(setf (get pnp_msgs::PNPGetVariableValueResponse :md5sum-) "2cb822bc826e5843de6b96ba6e683d4b")
(setf (get pnp_msgs::PNPGetVariableValueResponse :datatype-) "pnp_msgs/PNPGetVariableValueResponse")
(setf (get pnp_msgs::PNPGetVariableValueResponse :definition-)
      "string variable
---
string answer

")



(provide :pnp_msgs/PNPGetVariableValue "2cb822bc826e5843de6b96ba6e683d4b")


