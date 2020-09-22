;; Auto-generated. Do not edit!


(when (boundp 'samsungcmd_msgs::samsung_commdata_cmd)
  (if (not (find-package "SAMSUNGCMD_MSGS"))
    (make-package "SAMSUNGCMD_MSGS"))
  (shadow 'samsung_commdata_cmd (find-package "SAMSUNGCMD_MSGS")))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA_CMD")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA_CMD"))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA_CMDREQUEST")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA_CMDREQUEST"))
(unless (find-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA_CMDRESPONSE")
  (make-package "SAMSUNGCMD_MSGS::SAMSUNG_COMMDATA_CMDRESPONSE"))

(in-package "ROS")





(defclass samsungcmd_msgs::samsung_commdata_cmdRequest
  :super ros::object
  :slots (_req_comm_ID _req_func_code _req_comm_data _req_comm_data_1 _req_comm_data_2 ))

(defmethod samsungcmd_msgs::samsung_commdata_cmdRequest
  (:init
   (&key
    ((:req_comm_ID __req_comm_ID) "")
    ((:req_func_code __req_func_code) "")
    ((:req_comm_data __req_comm_data) "")
    ((:req_comm_data_1 __req_comm_data_1) "")
    ((:req_comm_data_2 __req_comm_data_2) "")
    )
   (send-super :init)
   (setq _req_comm_ID (string __req_comm_ID))
   (setq _req_func_code (string __req_func_code))
   (setq _req_comm_data (string __req_comm_data))
   (setq _req_comm_data_1 (string __req_comm_data_1))
   (setq _req_comm_data_2 (string __req_comm_data_2))
   self)
  (:req_comm_ID
   (&optional __req_comm_ID)
   (if __req_comm_ID (setq _req_comm_ID __req_comm_ID)) _req_comm_ID)
  (:req_func_code
   (&optional __req_func_code)
   (if __req_func_code (setq _req_func_code __req_func_code)) _req_func_code)
  (:req_comm_data
   (&optional __req_comm_data)
   (if __req_comm_data (setq _req_comm_data __req_comm_data)) _req_comm_data)
  (:req_comm_data_1
   (&optional __req_comm_data_1)
   (if __req_comm_data_1 (setq _req_comm_data_1 __req_comm_data_1)) _req_comm_data_1)
  (:req_comm_data_2
   (&optional __req_comm_data_2)
   (if __req_comm_data_2 (setq _req_comm_data_2 __req_comm_data_2)) _req_comm_data_2)
  (:serialization-length
   ()
   (+
    ;; string _req_comm_ID
    4 (length _req_comm_ID)
    ;; string _req_func_code
    4 (length _req_func_code)
    ;; string _req_comm_data
    4 (length _req_comm_data)
    ;; string _req_comm_data_1
    4 (length _req_comm_data_1)
    ;; string _req_comm_data_2
    4 (length _req_comm_data_2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _req_comm_ID
       (write-long (length _req_comm_ID) s) (princ _req_comm_ID s)
     ;; string _req_func_code
       (write-long (length _req_func_code) s) (princ _req_func_code s)
     ;; string _req_comm_data
       (write-long (length _req_comm_data) s) (princ _req_comm_data s)
     ;; string _req_comm_data_1
       (write-long (length _req_comm_data_1) s) (princ _req_comm_data_1 s)
     ;; string _req_comm_data_2
       (write-long (length _req_comm_data_2) s) (princ _req_comm_data_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _req_comm_ID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _req_comm_ID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _req_func_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _req_func_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _req_comm_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _req_comm_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _req_comm_data_1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _req_comm_data_1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _req_comm_data_2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _req_comm_data_2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass samsungcmd_msgs::samsung_commdata_cmdResponse
  :super ros::object
  :slots (_stamp _comm_ID _func_code _comm_data _comm_data_1 _comm_data_2 ))

(defmethod samsungcmd_msgs::samsung_commdata_cmdResponse
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

(defclass samsungcmd_msgs::samsung_commdata_cmd
  :super ros::object
  :slots ())

(setf (get samsungcmd_msgs::samsung_commdata_cmd :md5sum-) "242fd30b82c2183869504aaf92fdf73a")
(setf (get samsungcmd_msgs::samsung_commdata_cmd :datatype-) "samsungcmd_msgs/samsung_commdata_cmd")
(setf (get samsungcmd_msgs::samsung_commdata_cmd :request) samsungcmd_msgs::samsung_commdata_cmdRequest)
(setf (get samsungcmd_msgs::samsung_commdata_cmd :response) samsungcmd_msgs::samsung_commdata_cmdResponse)

(defmethod samsungcmd_msgs::samsung_commdata_cmdRequest
  (:response () (instance samsungcmd_msgs::samsung_commdata_cmdResponse :init)))

(setf (get samsungcmd_msgs::samsung_commdata_cmdRequest :md5sum-) "242fd30b82c2183869504aaf92fdf73a")
(setf (get samsungcmd_msgs::samsung_commdata_cmdRequest :datatype-) "samsungcmd_msgs/samsung_commdata_cmdRequest")
(setf (get samsungcmd_msgs::samsung_commdata_cmdRequest :definition-)
      "string 	req_comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]
string  req_func_code		#1 byte :C,T,R
string 	req_comm_data		#2 byte
string 	req_comm_data_1		#2 byte
string 	req_comm_data_2		#2 byte
---
time 	stamp
string 	comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]
string 	func_code		#1 byte :C,T,R
string 	comm_data		#2 byte
string 	comm_data_1		#2 byte
string 	comm_data_2		#2 byte

")

(setf (get samsungcmd_msgs::samsung_commdata_cmdResponse :md5sum-) "242fd30b82c2183869504aaf92fdf73a")
(setf (get samsungcmd_msgs::samsung_commdata_cmdResponse :datatype-) "samsungcmd_msgs/samsung_commdata_cmdResponse")
(setf (get samsungcmd_msgs::samsung_commdata_cmdResponse :definition-)
      "string 	req_comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]
string  req_func_code		#1 byte :C,T,R
string 	req_comm_data		#2 byte
string 	req_comm_data_1		#2 byte
string 	req_comm_data_2		#2 byte
---
time 	stamp
string 	comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]
string 	func_code		#1 byte :C,T,R
string 	comm_data		#2 byte
string 	comm_data_1		#2 byte
string 	comm_data_2		#2 byte

")



(provide :samsungcmd_msgs/samsung_commdata_cmd "242fd30b82c2183869504aaf92fdf73a")


