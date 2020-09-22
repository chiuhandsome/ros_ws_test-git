;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::ActionFinished)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'ActionFinished (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::ACTIONFINISHED")
  (make-package "PNP_MSGS::ACTIONFINISHED"))

(in-package "ROS")
;;//! \htmlinclude ActionFinished.msg.html


(defclass pnp_msgs::ActionFinished
  :super ros::object
  :slots (_id _name _params _result ))

(defmethod pnp_msgs::ActionFinished
  (:init
   (&key
    ((:id __id) "")
    ((:name __name) "")
    ((:params __params) "")
    ((:result __result) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _name (string __name))
   (setq _params (string __params))
   (setq _result (string __result))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _name
    4 (length _name)
    ;; string _params
    4 (length _params)
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _params
       (write-long (length _params) s) (princ _params s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pnp_msgs::ActionFinished :md5sum-) "62ff49e7da707990283c2b8184dd5fc0")
(setf (get pnp_msgs::ActionFinished :datatype-) "pnp_msgs/ActionFinished")
(setf (get pnp_msgs::ActionFinished :definition-)
      "string id
string name
string params
string result

")



(provide :pnp_msgs/ActionFinished "62ff49e7da707990283c2b8184dd5fc0")


