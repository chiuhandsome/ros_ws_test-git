;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPLastEvent)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPLastEvent (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPLASTEVENT")
  (make-package "PNP_MSGS::PNPLASTEVENT"))
(unless (find-package "PNP_MSGS::PNPLASTEVENTREQUEST")
  (make-package "PNP_MSGS::PNPLASTEVENTREQUEST"))
(unless (find-package "PNP_MSGS::PNPLASTEVENTRESPONSE")
  (make-package "PNP_MSGS::PNPLASTEVENTRESPONSE"))

(in-package "ROS")





(defclass pnp_msgs::PNPLastEventRequest
  :super ros::object
  :slots (_substring ))

(defmethod pnp_msgs::PNPLastEventRequest
  (:init
   (&key
    ((:substring __substring) "")
    )
   (send-super :init)
   (setq _substring (string __substring))
   self)
  (:substring
   (&optional __substring)
   (if __substring (setq _substring __substring)) _substring)
  (:serialization-length
   ()
   (+
    ;; string _substring
    4 (length _substring)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _substring
       (write-long (length _substring) s) (princ _substring s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _substring
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _substring (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pnp_msgs::PNPLastEventResponse
  :super ros::object
  :slots (_eventName ))

(defmethod pnp_msgs::PNPLastEventResponse
  (:init
   (&key
    ((:eventName __eventName) "")
    )
   (send-super :init)
   (setq _eventName (string __eventName))
   self)
  (:eventName
   (&optional __eventName)
   (if __eventName (setq _eventName __eventName)) _eventName)
  (:serialization-length
   ()
   (+
    ;; string _eventName
    4 (length _eventName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _eventName
       (write-long (length _eventName) s) (princ _eventName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _eventName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _eventName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pnp_msgs::PNPLastEvent
  :super ros::object
  :slots ())

(setf (get pnp_msgs::PNPLastEvent :md5sum-) "0acea5ee5ed25bf28c97c4f649046fed")
(setf (get pnp_msgs::PNPLastEvent :datatype-) "pnp_msgs/PNPLastEvent")
(setf (get pnp_msgs::PNPLastEvent :request) pnp_msgs::PNPLastEventRequest)
(setf (get pnp_msgs::PNPLastEvent :response) pnp_msgs::PNPLastEventResponse)

(defmethod pnp_msgs::PNPLastEventRequest
  (:response () (instance pnp_msgs::PNPLastEventResponse :init)))

(setf (get pnp_msgs::PNPLastEventRequest :md5sum-) "0acea5ee5ed25bf28c97c4f649046fed")
(setf (get pnp_msgs::PNPLastEventRequest :datatype-) "pnp_msgs/PNPLastEventRequest")
(setf (get pnp_msgs::PNPLastEventRequest :definition-)
      "string substring
---
string eventName

")

(setf (get pnp_msgs::PNPLastEventResponse :md5sum-) "0acea5ee5ed25bf28c97c4f649046fed")
(setf (get pnp_msgs::PNPLastEventResponse :datatype-) "pnp_msgs/PNPLastEventResponse")
(setf (get pnp_msgs::PNPLastEventResponse :definition-)
      "string substring
---
string eventName

")



(provide :pnp_msgs/PNPLastEvent "0acea5ee5ed25bf28c97c4f649046fed")


