;; Auto-generated. Do not edit!


(when (boundp 'mongodb_store_msgs::SerialisedMessage)
  (if (not (find-package "MONGODB_STORE_MSGS"))
    (make-package "MONGODB_STORE_MSGS"))
  (shadow 'SerialisedMessage (find-package "MONGODB_STORE_MSGS")))
(unless (find-package "MONGODB_STORE_MSGS::SERIALISEDMESSAGE")
  (make-package "MONGODB_STORE_MSGS::SERIALISEDMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude SerialisedMessage.msg.html


(defclass mongodb_store_msgs::SerialisedMessage
  :super ros::object
  :slots (_type _msg ))

(defmethod mongodb_store_msgs::SerialisedMessage
  (:init
   (&key
    ((:type __type) "")
    ((:msg __msg) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _msg __msg)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; uint8[] _msg
    (* 1    (length _msg)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8[] _msg
     (write-long (length _msg) s)
     (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _msg
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _msg (make-array n :element-type :char))
     (replace _msg buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get mongodb_store_msgs::SerialisedMessage :md5sum-) "42f77e70b6ff70f99d1597d836874cfc")
(setf (get mongodb_store_msgs::SerialisedMessage :datatype-) "mongodb_store_msgs/SerialisedMessage")
(setf (get mongodb_store_msgs::SerialisedMessage :definition-)
      "# type to of the serialised message
string type
# the serialised message
uint8[] msg
")



(provide :mongodb_store_msgs/SerialisedMessage "42f77e70b6ff70f99d1597d836874cfc")


