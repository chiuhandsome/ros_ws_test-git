;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPReward)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPReward (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPREWARD")
  (make-package "PNP_MSGS::PNPREWARD"))
(unless (find-package "PNP_MSGS::PNPREWARDREQUEST")
  (make-package "PNP_MSGS::PNPREWARDREQUEST"))
(unless (find-package "PNP_MSGS::PNPREWARDRESPONSE")
  (make-package "PNP_MSGS::PNPREWARDRESPONSE"))

(in-package "ROS")





(defclass pnp_msgs::PNPRewardRequest
  :super ros::object
  :slots (_rewardRequest ))

(defmethod pnp_msgs::PNPRewardRequest
  (:init
   (&key
    ((:rewardRequest __rewardRequest) "")
    )
   (send-super :init)
   (setq _rewardRequest (string __rewardRequest))
   self)
  (:rewardRequest
   (&optional __rewardRequest)
   (if __rewardRequest (setq _rewardRequest __rewardRequest)) _rewardRequest)
  (:serialization-length
   ()
   (+
    ;; string _rewardRequest
    4 (length _rewardRequest)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _rewardRequest
       (write-long (length _rewardRequest) s) (princ _rewardRequest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _rewardRequest
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rewardRequest (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pnp_msgs::PNPRewardResponse
  :super ros::object
  :slots (_reward ))

(defmethod pnp_msgs::PNPRewardResponse
  (:init
   (&key
    ((:reward __reward) 0.0)
    )
   (send-super :init)
   (setq _reward (float __reward))
   self)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:serialization-length
   ()
   (+
    ;; float32 _reward
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _reward
     (setq _reward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pnp_msgs::PNPReward
  :super ros::object
  :slots ())

(setf (get pnp_msgs::PNPReward :md5sum-) "d6bac371d18603a2d7685bb5dacec7cb")
(setf (get pnp_msgs::PNPReward :datatype-) "pnp_msgs/PNPReward")
(setf (get pnp_msgs::PNPReward :request) pnp_msgs::PNPRewardRequest)
(setf (get pnp_msgs::PNPReward :response) pnp_msgs::PNPRewardResponse)

(defmethod pnp_msgs::PNPRewardRequest
  (:response () (instance pnp_msgs::PNPRewardResponse :init)))

(setf (get pnp_msgs::PNPRewardRequest :md5sum-) "d6bac371d18603a2d7685bb5dacec7cb")
(setf (get pnp_msgs::PNPRewardRequest :datatype-) "pnp_msgs/PNPRewardRequest")
(setf (get pnp_msgs::PNPRewardRequest :definition-)
      "string rewardRequest
---
float32 reward

")

(setf (get pnp_msgs::PNPRewardResponse :md5sum-) "d6bac371d18603a2d7685bb5dacec7cb")
(setf (get pnp_msgs::PNPRewardResponse :datatype-) "pnp_msgs/PNPRewardResponse")
(setf (get pnp_msgs::PNPRewardResponse :definition-)
      "string rewardRequest
---
float32 reward

")



(provide :pnp_msgs/PNPReward "d6bac371d18603a2d7685bb5dacec7cb")


