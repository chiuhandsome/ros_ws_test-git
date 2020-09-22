; Auto-generated. Do not edit!


(cl:in-package samsungcmd_msgs-msg)


;//! \htmlinclude samsung_alarmCode.msg.html

(cl:defclass <samsung_alarmCode> (roslisp-msg-protocol:ros-message)
  ((system_id
    :reader system_id
    :initarg :system_id
    :type cl:string
    :initform "")
   (alarm_id
    :reader alarm_id
    :initarg :alarm_id
    :type cl:string
    :initform "")
   (alarm_code
    :reader alarm_code
    :initarg :alarm_code
    :type cl:string
    :initform "")
   (alarm_level
    :reader alarm_level
    :initarg :alarm_level
    :type cl:string
    :initform "")
   (alarm_Desc_E
    :reader alarm_Desc_E
    :initarg :alarm_Desc_E
    :type cl:string
    :initform "")
   (alarm_Desc_TC
    :reader alarm_Desc_TC
    :initarg :alarm_Desc_TC
    :type cl:string
    :initform "")
   (alarm_Desc_SC
    :reader alarm_Desc_SC
    :initarg :alarm_Desc_SC
    :type cl:string
    :initform "")
   (alarm_version
    :reader alarm_version
    :initarg :alarm_version
    :type cl:string
    :initform "")
   (alarm_update_time
    :reader alarm_update_time
    :initarg :alarm_update_time
    :type cl:string
    :initform ""))
)

(cl:defclass samsung_alarmCode (<samsung_alarmCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <samsung_alarmCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'samsung_alarmCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name samsungcmd_msgs-msg:<samsung_alarmCode> is deprecated: use samsungcmd_msgs-msg:samsung_alarmCode instead.")))

(cl:ensure-generic-function 'system_id-val :lambda-list '(m))
(cl:defmethod system_id-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:system_id-val is deprecated.  Use samsungcmd_msgs-msg:system_id instead.")
  (system_id m))

(cl:ensure-generic-function 'alarm_id-val :lambda-list '(m))
(cl:defmethod alarm_id-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:alarm_id-val is deprecated.  Use samsungcmd_msgs-msg:alarm_id instead.")
  (alarm_id m))

(cl:ensure-generic-function 'alarm_code-val :lambda-list '(m))
(cl:defmethod alarm_code-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:alarm_code-val is deprecated.  Use samsungcmd_msgs-msg:alarm_code instead.")
  (alarm_code m))

(cl:ensure-generic-function 'alarm_level-val :lambda-list '(m))
(cl:defmethod alarm_level-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:alarm_level-val is deprecated.  Use samsungcmd_msgs-msg:alarm_level instead.")
  (alarm_level m))

(cl:ensure-generic-function 'alarm_Desc_E-val :lambda-list '(m))
(cl:defmethod alarm_Desc_E-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:alarm_Desc_E-val is deprecated.  Use samsungcmd_msgs-msg:alarm_Desc_E instead.")
  (alarm_Desc_E m))

(cl:ensure-generic-function 'alarm_Desc_TC-val :lambda-list '(m))
(cl:defmethod alarm_Desc_TC-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:alarm_Desc_TC-val is deprecated.  Use samsungcmd_msgs-msg:alarm_Desc_TC instead.")
  (alarm_Desc_TC m))

(cl:ensure-generic-function 'alarm_Desc_SC-val :lambda-list '(m))
(cl:defmethod alarm_Desc_SC-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:alarm_Desc_SC-val is deprecated.  Use samsungcmd_msgs-msg:alarm_Desc_SC instead.")
  (alarm_Desc_SC m))

(cl:ensure-generic-function 'alarm_version-val :lambda-list '(m))
(cl:defmethod alarm_version-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:alarm_version-val is deprecated.  Use samsungcmd_msgs-msg:alarm_version instead.")
  (alarm_version m))

(cl:ensure-generic-function 'alarm_update_time-val :lambda-list '(m))
(cl:defmethod alarm_update_time-val ((m <samsung_alarmCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:alarm_update_time-val is deprecated.  Use samsungcmd_msgs-msg:alarm_update_time instead.")
  (alarm_update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <samsung_alarmCode>) ostream)
  "Serializes a message object of type '<samsung_alarmCode>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'system_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'system_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_level))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_Desc_E))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_Desc_E))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_Desc_TC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_Desc_TC))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_Desc_SC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_Desc_SC))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <samsung_alarmCode>) istream)
  "Deserializes a message object of type '<samsung_alarmCode>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'system_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_Desc_E) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_Desc_E) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_Desc_TC) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_Desc_TC) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_Desc_SC) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_Desc_SC) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_update_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_update_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<samsung_alarmCode>)))
  "Returns string type for a message object of type '<samsung_alarmCode>"
  "samsungcmd_msgs/samsung_alarmCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'samsung_alarmCode)))
  "Returns string type for a message object of type 'samsung_alarmCode"
  "samsungcmd_msgs/samsung_alarmCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<samsung_alarmCode>)))
  "Returns md5sum for a message object of type '<samsung_alarmCode>"
  "0b84738275b1dc1036ab93e3e6ee935e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'samsung_alarmCode)))
  "Returns md5sum for a message object of type 'samsung_alarmCode"
  "0b84738275b1dc1036ab93e3e6ee935e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<samsung_alarmCode>)))
  "Returns full string definition for message of type '<samsung_alarmCode>"
  (cl:format cl:nil "string system_id 			~%string alarm_id 		# module_no(3) + module alarm code(3)	~%string alarm_code 		# same as alarm_id,preper for special requirement~%string alarm_level 		# level of ararm: 1:alart 2:alarm	~%string alarm_Desc_E 		# English description of alarm	~%string alarm_Desc_TC 		# Traditional chinese description of alarm	~%string alarm_Desc_SC 		# Sample chinese description of alarm~%string alarm_version 		# version of alarm~%string alarm_update_time 	# version time of alarm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'samsung_alarmCode)))
  "Returns full string definition for message of type 'samsung_alarmCode"
  (cl:format cl:nil "string system_id 			~%string alarm_id 		# module_no(3) + module alarm code(3)	~%string alarm_code 		# same as alarm_id,preper for special requirement~%string alarm_level 		# level of ararm: 1:alart 2:alarm	~%string alarm_Desc_E 		# English description of alarm	~%string alarm_Desc_TC 		# Traditional chinese description of alarm	~%string alarm_Desc_SC 		# Sample chinese description of alarm~%string alarm_version 		# version of alarm~%string alarm_update_time 	# version time of alarm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <samsung_alarmCode>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'system_id))
     4 (cl:length (cl:slot-value msg 'alarm_id))
     4 (cl:length (cl:slot-value msg 'alarm_code))
     4 (cl:length (cl:slot-value msg 'alarm_level))
     4 (cl:length (cl:slot-value msg 'alarm_Desc_E))
     4 (cl:length (cl:slot-value msg 'alarm_Desc_TC))
     4 (cl:length (cl:slot-value msg 'alarm_Desc_SC))
     4 (cl:length (cl:slot-value msg 'alarm_version))
     4 (cl:length (cl:slot-value msg 'alarm_update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <samsung_alarmCode>))
  "Converts a ROS message object to a list"
  (cl:list 'samsung_alarmCode
    (cl:cons ':system_id (system_id msg))
    (cl:cons ':alarm_id (alarm_id msg))
    (cl:cons ':alarm_code (alarm_code msg))
    (cl:cons ':alarm_level (alarm_level msg))
    (cl:cons ':alarm_Desc_E (alarm_Desc_E msg))
    (cl:cons ':alarm_Desc_TC (alarm_Desc_TC msg))
    (cl:cons ':alarm_Desc_SC (alarm_Desc_SC msg))
    (cl:cons ':alarm_version (alarm_version msg))
    (cl:cons ':alarm_update_time (alarm_update_time msg))
))
