;; Auto-generated. Do not edit!


(when (boundp 'reset_location::TrilaterationResult)
  (if (not (find-package "RESET_LOCATION"))
    (make-package "RESET_LOCATION"))
  (shadow 'TrilaterationResult (find-package "RESET_LOCATION")))
(unless (find-package "RESET_LOCATION::TRILATERATIONRESULT")
  (make-package "RESET_LOCATION::TRILATERATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude TrilaterationResult.msg.html


(defclass reset_location::TrilaterationResult
  :super ros::object
  :slots (_error_code _x _y _theta ))

(defmethod reset_location::TrilaterationResult
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; int32 _error_code
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get reset_location::TrilaterationResult :md5sum-) "cb22ea92b965676338f7f0f6874fc242")
(setf (get reset_location::TrilaterationResult :datatype-) "reset_location/TrilaterationResult")
(setf (get reset_location::TrilaterationResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result
int32   error_code 
float64 x
float64 y
float64 theta

")



(provide :reset_location/TrilaterationResult "cb22ea92b965676338f7f0f6874fc242")

