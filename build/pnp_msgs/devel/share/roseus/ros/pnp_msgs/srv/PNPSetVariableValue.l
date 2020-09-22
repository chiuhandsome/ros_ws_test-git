;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPSetVariableValue)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPSetVariableValue (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPSETVARIABLEVALUE")
  (make-package "PNP_MSGS::PNPSETVARIABLEVALUE"))
(unless (find-package "PNP_MSGS::PNPSETVARIABLEVALUEREQUEST")
  (make-package "PNP_MSGS::PNPSETVARIABLEVALUEREQUEST"))
(unless (find-package "PNP_MSGS::PNPSETVARIABLEVALUERESPONSE")
  (make-package "PNP_MSGS::PNPSETVARIABLEVALUERESPONSE"))

(in-package "ROS")





(defclass pnp_msgs::PNPSetVariableValueRequest
  :super ros::object
  :slots (_variable _value ))

(defmethod pnp_msgs::PNPSetVariableValueRequest
  (:init
   (&key
    ((:variable __variable) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _variable (string __variable))
   (setq _value (string __value))
   self)
  (:variable
   (&optional __variable)
   (if __variable (setq _variable __variable)) _variable)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _variable
    4 (length _variable)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _variable
       (write-long (length _variable) s) (princ _variable s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _variable
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _variable (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pnp_msgs::PNPSetVariableValueResponse
  :super ros::object
  :slots ())

(defmethod pnp_msgs::PNPSetVariableValueResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pnp_msgs::PNPSetVariableValue
  :super ros::object
  :slots ())

(setf (get pnp_msgs::PNPSetVariableValue :md5sum-) "f26fb17f1178850596cc513f7a908898")
(setf (get pnp_msgs::PNPSetVariableValue :datatype-) "pnp_msgs/PNPSetVariableValue")
(setf (get pnp_msgs::PNPSetVariableValue :request) pnp_msgs::PNPSetVariableValueRequest)
(setf (get pnp_msgs::PNPSetVariableValue :response) pnp_msgs::PNPSetVariableValueResponse)

(defmethod pnp_msgs::PNPSetVariableValueRequest
  (:response () (instance pnp_msgs::PNPSetVariableValueResponse :init)))

(setf (get pnp_msgs::PNPSetVariableValueRequest :md5sum-) "f26fb17f1178850596cc513f7a908898")
(setf (get pnp_msgs::PNPSetVariableValueRequest :datatype-) "pnp_msgs/PNPSetVariableValueRequest")
(setf (get pnp_msgs::PNPSetVariableValueRequest :definition-)
      "string variable
string value
---
")

(setf (get pnp_msgs::PNPSetVariableValueResponse :md5sum-) "f26fb17f1178850596cc513f7a908898")
(setf (get pnp_msgs::PNPSetVariableValueResponse :datatype-) "pnp_msgs/PNPSetVariableValueResponse")
(setf (get pnp_msgs::PNPSetVariableValueResponse :definition-)
      "string variable
string value
---
")



(provide :pnp_msgs/PNPSetVariableValue "f26fb17f1178850596cc513f7a908898")


