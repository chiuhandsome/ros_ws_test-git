;; Auto-generated. Do not edit!


(when (boundp 'robot_control_msgs::robot_ctrl_roslog)
  (if (not (find-package "ROBOT_CONTROL_MSGS"))
    (make-package "ROBOT_CONTROL_MSGS"))
  (shadow 'robot_ctrl_roslog (find-package "ROBOT_CONTROL_MSGS")))
(unless (find-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ROSLOG")
  (make-package "ROBOT_CONTROL_MSGS::ROBOT_CTRL_ROSLOG"))

(in-package "ROS")
;;//! \htmlinclude robot_ctrl_roslog.msg.html


(defclass robot_control_msgs::robot_ctrl_roslog
  :super ros::object
  :slots (_system_id _roslog_level _roslog_node _roslog_content _occure_time _update_time ))

(defmethod robot_control_msgs::robot_ctrl_roslog
  (:init
   (&key
    ((:system_id __system_id) "")
    ((:roslog_level __roslog_level) "")
    ((:roslog_node __roslog_node) "")
    ((:roslog_content __roslog_content) "")
    ((:occure_time __occure_time) "")
    ((:update_time __update_time) "")
    )
   (send-super :init)
   (setq _system_id (string __system_id))
   (setq _roslog_level (string __roslog_level))
   (setq _roslog_node (string __roslog_node))
   (setq _roslog_content (string __roslog_content))
   (setq _occure_time (string __occure_time))
   (setq _update_time (string __update_time))
   self)
  (:system_id
   (&optional __system_id)
   (if __system_id (setq _system_id __system_id)) _system_id)
  (:roslog_level
   (&optional __roslog_level)
   (if __roslog_level (setq _roslog_level __roslog_level)) _roslog_level)
  (:roslog_node
   (&optional __roslog_node)
   (if __roslog_node (setq _roslog_node __roslog_node)) _roslog_node)
  (:roslog_content
   (&optional __roslog_content)
   (if __roslog_content (setq _roslog_content __roslog_content)) _roslog_content)
  (:occure_time
   (&optional __occure_time)
   (if __occure_time (setq _occure_time __occure_time)) _occure_time)
  (:update_time
   (&optional __update_time)
   (if __update_time (setq _update_time __update_time)) _update_time)
  (:serialization-length
   ()
   (+
    ;; string _system_id
    4 (length _system_id)
    ;; string _roslog_level
    4 (length _roslog_level)
    ;; string _roslog_node
    4 (length _roslog_node)
    ;; string _roslog_content
    4 (length _roslog_content)
    ;; string _occure_time
    4 (length _occure_time)
    ;; string _update_time
    4 (length _update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _system_id
       (write-long (length _system_id) s) (princ _system_id s)
     ;; string _roslog_level
       (write-long (length _roslog_level) s) (princ _roslog_level s)
     ;; string _roslog_node
       (write-long (length _roslog_node) s) (princ _roslog_node s)
     ;; string _roslog_content
       (write-long (length _roslog_content) s) (princ _roslog_content s)
     ;; string _occure_time
       (write-long (length _occure_time) s) (princ _occure_time s)
     ;; string _update_time
       (write-long (length _update_time) s) (princ _update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _system_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _system_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _roslog_level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _roslog_level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _roslog_node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _roslog_node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _roslog_content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _roslog_content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _occure_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _occure_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_control_msgs::robot_ctrl_roslog :md5sum-) "8fbe8c01a89f28f5cb406e90c253e0af")
(setf (get robot_control_msgs::robot_ctrl_roslog :datatype-) "robot_control_msgs/robot_ctrl_roslog")
(setf (get robot_control_msgs::robot_ctrl_roslog :definition-)
      "string system_id 
string roslog_level 			 
string roslog_node 			 
string roslog_content 			 
string occure_time 	 
string update_time 

")



(provide :robot_control_msgs/robot_ctrl_roslog "8fbe8c01a89f28f5cb406e90c253e0af")


