;; Auto-generated. Do not edit!


(when (boundp 'samsungcmd_msgs::samsung_commdata_actFeedback)
  (if (not (find-package "SAMSUNGCMD_MSGS"))
    (make-package "SAMSUNGCMD_MSGS"))
  (shadow 'samsung_commdata_actFeedback (find-package "SAMSUNGCMD_MSGS")))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA_ACTFEEDBACK")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA_ACTFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude samsung_commdata_actFeedback.msg.html


(defclass samsungcmd_msgs::samsung_commdata_actFeedback
  :super ros::object
  :slots (_status_id _status_desc ))

(defmethod samsungcmd_msgs::samsung_commdata_actFeedback
  (:init
   (&key
    ((:status_id __status_id) 0)
    ((:status_desc __status_desc) "")
    )
   (send-super :init)
   (setq _status_id (round __status_id))
   (setq _status_desc (string __status_desc))
   self)
  (:status_id
   (&optional __status_id)
   (if __status_id (setq _status_id __status_id)) _status_id)
  (:status_desc
   (&optional __status_desc)
   (if __status_desc (setq _status_desc __status_desc)) _status_desc)
  (:serialization-length
   ()
   (+
    ;; int8 _status_id
    1
    ;; string _status_desc
    4 (length _status_desc)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _status_id
       (write-byte _status_id s)
     ;; string _status_desc
       (write-long (length _status_desc) s) (princ _status_desc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _status_id
     (setq _status_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status_id 127) (setq _status_id (- _status_id 256)))
   ;; string _status_desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get samsungcmd_msgs::samsung_commdata_actFeedback :md5sum-) "8477dd7d5143d4c2230befe0e46a82e2")
(setf (get samsungcmd_msgs::samsung_commdata_actFeedback :datatype-) "samsungcmd_msgs/samsung_commdata_actFeedback")
(setf (get samsungcmd_msgs::samsung_commdata_actFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback
int8    status_id
string  status_desc


")



(provide :samsungcmd_msgs/samsung_commdata_actFeedback "8477dd7d5143d4c2230befe0e46a82e2")

