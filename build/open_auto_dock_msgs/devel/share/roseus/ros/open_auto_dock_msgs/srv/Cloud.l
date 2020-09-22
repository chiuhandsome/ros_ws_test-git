;; Auto-generated. Do not edit!


(when (boundp 'open_auto_dock_msgs::Cloud)
  (if (not (find-package "OPEN_AUTO_DOCK_MSGS"))
    (make-package "OPEN_AUTO_DOCK_MSGS"))
  (shadow 'Cloud (find-package "OPEN_AUTO_DOCK_MSGS")))
(unless (find-package "OPEN_AUTO_DOCK_MSGS::CLOUD")
  (make-package "OPEN_AUTO_DOCK_MSGS::CLOUD"))
(unless (find-package "OPEN_AUTO_DOCK_MSGS::CLOUDREQUEST")
  (make-package "OPEN_AUTO_DOCK_MSGS::CLOUDREQUEST"))
(unless (find-package "OPEN_AUTO_DOCK_MSGS::CLOUDRESPONSE")
  (make-package "OPEN_AUTO_DOCK_MSGS::CLOUDRESPONSE"))

(in-package "ROS")





(defclass open_auto_dock_msgs::CloudRequest
  :super ros::object
  :slots (_left _middle _right _bottom _depth ))

(defmethod open_auto_dock_msgs::CloudRequest
  (:init
   (&key
    ((:left __left) 0.0)
    ((:middle __middle) 0.0)
    ((:right __right) 0.0)
    ((:bottom __bottom) 0.0)
    ((:depth __depth) 0.0)
    )
   (send-super :init)
   (setq _left (float __left))
   (setq _middle (float __middle))
   (setq _right (float __right))
   (setq _bottom (float __bottom))
   (setq _depth (float __depth))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:middle
   (&optional __middle)
   (if __middle (setq _middle __middle)) _middle)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; float64 _left
    8
    ;; float64 _middle
    8
    ;; float64 _right
    8
    ;; float64 _bottom
    8
    ;; float64 _depth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left
       (sys::poke _left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _middle
       (sys::poke _middle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right
       (sys::poke _right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bottom
       (sys::poke _bottom (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left
     (setq _left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _middle
     (setq _middle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right
     (setq _right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bottom
     (setq _bottom (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth
     (setq _depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass open_auto_dock_msgs::CloudResponse
  :super ros::object
  :slots (_success ))

(defmethod open_auto_dock_msgs::CloudResponse
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

(defclass open_auto_dock_msgs::Cloud
  :super ros::object
  :slots ())

(setf (get open_auto_dock_msgs::Cloud :md5sum-) "0174a0e0bacd6b165992780fb43e35f8")
(setf (get open_auto_dock_msgs::Cloud :datatype-) "open_auto_dock_msgs/Cloud")
(setf (get open_auto_dock_msgs::Cloud :request) open_auto_dock_msgs::CloudRequest)
(setf (get open_auto_dock_msgs::Cloud :response) open_auto_dock_msgs::CloudResponse)

(defmethod open_auto_dock_msgs::CloudRequest
  (:response () (instance open_auto_dock_msgs::CloudResponse :init)))

(setf (get open_auto_dock_msgs::CloudRequest :md5sum-) "0174a0e0bacd6b165992780fb43e35f8")
(setf (get open_auto_dock_msgs::CloudRequest :datatype-) "open_auto_dock_msgs/CloudRequest")
(setf (get open_auto_dock_msgs::CloudRequest :definition-)
      "float64 left
float64 middle
float64 right
float64 bottom
float64 depth
---
bool success

")

(setf (get open_auto_dock_msgs::CloudResponse :md5sum-) "0174a0e0bacd6b165992780fb43e35f8")
(setf (get open_auto_dock_msgs::CloudResponse :datatype-) "open_auto_dock_msgs/CloudResponse")
(setf (get open_auto_dock_msgs::CloudResponse :definition-)
      "float64 left
float64 middle
float64 right
float64 bottom
float64 depth
---
bool success

")



(provide :open_auto_dock_msgs/Cloud "0174a0e0bacd6b165992780fb43e35f8")


