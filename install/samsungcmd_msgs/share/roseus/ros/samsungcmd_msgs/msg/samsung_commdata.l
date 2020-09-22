;; Auto-generated. Do not edit!


(when (boundp 'samsungcmd_msgs::samsung_commdata)
  (if (not (find-package "SAMSUNGCMD_MSGS"))
    (make-package "SAMSUNGCMD_MSGS"))
  (shadow 'samsung_commdata (find-package "SAMSUNGCMD_MSGS")))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA"))

(in-package "ROS")
;;//! \htmlinclude samsung_commdata.msg.html


(defclass samsungcmd_msgs::samsung_commdata
  :super ros::object
  :slots (_stamp _comm_ID _func_code _comm_data _comm_data_1 _comm_data_2 ))

(defmethod samsungcmd_msgs::samsung_commdata
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:comm_ID __comm_ID) "")
    ((:func_code __func_code) "")
    ((:comm_data __comm_data) "")
    ((:comm_data_1 __comm_data_1) "")
    ((:comm_data_2 __comm_data_2) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _comm_ID (string __comm_ID))
   (setq _func_code (string __func_code))
   (setq _comm_data (string __comm_data))
   (setq _comm_data_1 (string __comm_data_1))
   (setq _comm_data_2 (string __comm_data_2))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:comm_ID
   (&optional __comm_ID)
   (if __comm_ID (setq _comm_ID __comm_ID)) _comm_ID)
  (:func_code
   (&optional __func_code)
   (if __func_code (setq _func_code __func_code)) _func_code)
  (:comm_data
   (&optional __comm_data)
   (if __comm_data (setq _comm_data __comm_data)) _comm_data)
  (:comm_data_1
   (&optional __comm_data_1)
   (if __comm_data_1 (setq _comm_data_1 __comm_data_1)) _comm_data_1)
  (:comm_data_2
   (&optional __comm_data_2)
   (if __comm_data_2 (setq _comm_data_2 __comm_data_2)) _comm_data_2)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _comm_ID
    4 (length _comm_ID)
    ;; string _func_code
    4 (length _func_code)
    ;; string _comm_data
    4 (length _comm_data)
    ;; string _comm_data_1
    4 (length _comm_data_1)
    ;; string _comm_data_2
    4 (length _comm_data_2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _comm_ID
       (write-long (length _comm_ID) s) (princ _comm_ID s)
     ;; string _func_code
       (write-long (length _func_code) s) (princ _func_code s)
     ;; string _comm_data
       (write-long (length _comm_data) s) (princ _comm_data s)
     ;; string _comm_data_1
       (write-long (length _comm_data_1) s) (princ _comm_data_1 s)
     ;; string _comm_data_2
       (write-long (length _comm_data_2) s) (princ _comm_data_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _comm_ID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _comm_ID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _func_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _func_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _comm_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _comm_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _comm_data_1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _comm_data_1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _comm_data_2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _comm_data_2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get samsungcmd_msgs::samsung_commdata :md5sum-) "688c11db53a0af4f57afcf5ca5ec4c46")
(setf (get samsungcmd_msgs::samsung_commdata :datatype-) "samsungcmd_msgs/samsung_commdata")
(setf (get samsungcmd_msgs::samsung_commdata :definition-)
      "time 	stamp
string 	comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]
string 	func_code		#1 byte :E,S,L,U,M
string 	comm_data		#2 byte
string 	comm_data_1		#2 byte
string 	comm_data_2		#2 byte

")



(provide :samsungcmd_msgs/samsung_commdata "688c11db53a0af4f57afcf5ca5ec4c46")


