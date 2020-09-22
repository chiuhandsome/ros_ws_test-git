;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPCondition)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPCondition (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPCONDITION")
  (make-package "PNP_MSGS::PNPCONDITION"))
(unless (find-package "PNP_MSGS::PNPCONDITIONREQUEST")
  (make-package "PNP_MSGS::PNPCONDITIONREQUEST"))
(unless (find-package "PNP_MSGS::PNPCONDITIONRESPONSE")
  (make-package "PNP_MSGS::PNPCONDITIONRESPONSE"))

(in-package "ROS")





(defclass pnp_msgs::PNPConditionRequest
  :super ros::object
  :slots (_cond ))

(defmethod pnp_msgs::PNPConditionRequest
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

(defclass pnp_msgs::PNPConditionResponse
  :super ros::object
  :slots (_truth_value ))

(defmethod pnp_msgs::PNPConditionResponse
  (:init
   (&key
    ((:truth_value __truth_value) 0)
    )
   (send-super :init)
   (setq _truth_value (round __truth_value))
   self)
  (:truth_value
   (&optional __truth_value)
   (if __truth_value (setq _truth_value __truth_value)) _truth_value)
  (:serialization-length
   ()
   (+
    ;; int8 _truth_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _truth_value
       (write-byte _truth_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _truth_value
     (setq _truth_value (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _truth_value 127) (setq _truth_value (- _truth_value 256)))
   ;;
   self)
  )

(defclass pnp_msgs::PNPCondition
  :super ros::object
  :slots ())

(setf (get pnp_msgs::PNPCondition :md5sum-) "1ecc39f814c627a69987379b4f614f10")
(setf (get pnp_msgs::PNPCondition :datatype-) "pnp_msgs/PNPCondition")
(setf (get pnp_msgs::PNPCondition :request) pnp_msgs::PNPConditionRequest)
(setf (get pnp_msgs::PNPCondition :response) pnp_msgs::PNPConditionResponse)

(defmethod pnp_msgs::PNPConditionRequest
  (:response () (instance pnp_msgs::PNPConditionResponse :init)))

(setf (get pnp_msgs::PNPConditionRequest :md5sum-) "1ecc39f814c627a69987379b4f614f10")
(setf (get pnp_msgs::PNPConditionRequest :datatype-) "pnp_msgs/PNPConditionRequest")
(setf (get pnp_msgs::PNPConditionRequest :definition-)
      "string cond
---
int8 truth_value

")

(setf (get pnp_msgs::PNPConditionResponse :md5sum-) "1ecc39f814c627a69987379b4f614f10")
(setf (get pnp_msgs::PNPConditionResponse :datatype-) "pnp_msgs/PNPConditionResponse")
(setf (get pnp_msgs::PNPConditionResponse :definition-)
      "string cond
---
int8 truth_value

")



(provide :pnp_msgs/PNPCondition "1ecc39f814c627a69987379b4f614f10")


