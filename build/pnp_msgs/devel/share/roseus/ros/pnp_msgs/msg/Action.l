;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::Action)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'Action (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::ACTION")
  (make-package "PNP_MSGS::ACTION"))

(in-package "ROS")
;;//! \htmlinclude Action.msg.html


(defclass pnp_msgs::Action
  :super ros::object
  :slots (_id _robotname _name _params _function _result ))

(defmethod pnp_msgs::Action
  (:init
   (&key
    ((:id __id) "")
    ((:robotname __robotname) "")
    ((:name __name) "")
    ((:params __params) "")
    ((:function __function) "")
    ((:result __result) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _robotname (string __robotname))
   (setq _name (string __name))
   (setq _params (string __params))
   (setq _function (string __function))
   (setq _result (string __result))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:robotname
   (&optional __robotname)
   (if __robotname (setq _robotname __robotname)) _robotname)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:function
   (&optional __function)
   (if __function (setq _function __function)) _function)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _robotname
    4 (length _robotname)
    ;; string _name
    4 (length _name)
    ;; string _params
    4 (length _params)
    ;; string _function
    4 (length _function)
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _robotname
       (write-long (length _robotname) s) (princ _robotname s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _params
       (write-long (length _params) s) (princ _params s)
     ;; string _function
       (write-long (length _function) s) (princ _function s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robotname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robotname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _function
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _function (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pnp_msgs::Action :md5sum-) "8780cff1f4b14d977db133b1cc558632")
(setf (get pnp_msgs::Action :datatype-) "pnp_msgs/Action")
(setf (get pnp_msgs::Action :definition-)
      "string id
string robotname
string name
string params
string function
string result

")



(provide :pnp_msgs/Action "8780cff1f4b14d977db133b1cc558632")


