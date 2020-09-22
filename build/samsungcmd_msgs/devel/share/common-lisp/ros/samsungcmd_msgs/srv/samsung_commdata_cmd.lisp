; Auto-generated. Do not edit!


(cl:in-package samsungcmd_msgs-srv)


;//! \htmlinclude samsung_commdata_cmd-request.msg.html

(cl:defclass <samsung_commdata_cmd-request> (roslisp-msg-protocol:ros-message)
  ((req_comm_ID
    :reader req_comm_ID
    :initarg :req_comm_ID
    :type cl:string
    :initform "")
   (req_func_code
    :reader req_func_code
    :initarg :req_func_code
    :type cl:string
    :initform "")
   (req_comm_data
    :reader req_comm_data
    :initarg :req_comm_data
    :type cl:string
    :initform "")
   (req_comm_data_1
    :reader req_comm_data_1
    :initarg :req_comm_data_1
    :type cl:string
    :initform "")
   (req_comm_data_2
    :reader req_comm_data_2
    :initarg :req_comm_data_2
    :type cl:string
    :initform ""))
)

(cl:defclass samsung_commdata_cmd-request (<samsung_commdata_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <samsung_commdata_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'samsung_commdata_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name samsungcmd_msgs-srv:<samsung_commdata_cmd-request> is deprecated: use samsungcmd_msgs-srv:samsung_commdata_cmd-request instead.")))

(cl:ensure-generic-function 'req_comm_ID-val :lambda-list '(m))
(cl:defmethod req_comm_ID-val ((m <samsung_commdata_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:req_comm_ID-val is deprecated.  Use samsungcmd_msgs-srv:req_comm_ID instead.")
  (req_comm_ID m))

(cl:ensure-generic-function 'req_func_code-val :lambda-list '(m))
(cl:defmethod req_func_code-val ((m <samsung_commdata_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:req_func_code-val is deprecated.  Use samsungcmd_msgs-srv:req_func_code instead.")
  (req_func_code m))

(cl:ensure-generic-function 'req_comm_data-val :lambda-list '(m))
(cl:defmethod req_comm_data-val ((m <samsung_commdata_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:req_comm_data-val is deprecated.  Use samsungcmd_msgs-srv:req_comm_data instead.")
  (req_comm_data m))

(cl:ensure-generic-function 'req_comm_data_1-val :lambda-list '(m))
(cl:defmethod req_comm_data_1-val ((m <samsung_commdata_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:req_comm_data_1-val is deprecated.  Use samsungcmd_msgs-srv:req_comm_data_1 instead.")
  (req_comm_data_1 m))

(cl:ensure-generic-function 'req_comm_data_2-val :lambda-list '(m))
(cl:defmethod req_comm_data_2-val ((m <samsung_commdata_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:req_comm_data_2-val is deprecated.  Use samsungcmd_msgs-srv:req_comm_data_2 instead.")
  (req_comm_data_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <samsung_commdata_cmd-request>) ostream)
  "Serializes a message object of type '<samsung_commdata_cmd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'req_comm_ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'req_comm_ID))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'req_func_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'req_func_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'req_comm_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'req_comm_data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'req_comm_data_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'req_comm_data_1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'req_comm_data_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'req_comm_data_2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <samsung_commdata_cmd-request>) istream)
  "Deserializes a message object of type '<samsung_commdata_cmd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'req_comm_ID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'req_comm_ID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'req_func_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'req_func_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'req_comm_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'req_comm_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'req_comm_data_1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'req_comm_data_1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'req_comm_data_2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'req_comm_data_2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<samsung_commdata_cmd-request>)))
  "Returns string type for a service object of type '<samsung_commdata_cmd-request>"
  "samsungcmd_msgs/samsung_commdata_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'samsung_commdata_cmd-request)))
  "Returns string type for a service object of type 'samsung_commdata_cmd-request"
  "samsungcmd_msgs/samsung_commdata_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<samsung_commdata_cmd-request>)))
  "Returns md5sum for a message object of type '<samsung_commdata_cmd-request>"
  "242fd30b82c2183869504aaf92fdf73a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'samsung_commdata_cmd-request)))
  "Returns md5sum for a message object of type 'samsung_commdata_cmd-request"
  "242fd30b82c2183869504aaf92fdf73a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<samsung_commdata_cmd-request>)))
  "Returns full string definition for message of type '<samsung_commdata_cmd-request>"
  (cl:format cl:nil "string 	req_comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]~%string  req_func_code		#1 byte :C,T,R~%string 	req_comm_data		#2 byte~%string 	req_comm_data_1		#2 byte~%string 	req_comm_data_2		#2 byte~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'samsung_commdata_cmd-request)))
  "Returns full string definition for message of type 'samsung_commdata_cmd-request"
  (cl:format cl:nil "string 	req_comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]~%string  req_func_code		#1 byte :C,T,R~%string 	req_comm_data		#2 byte~%string 	req_comm_data_1		#2 byte~%string 	req_comm_data_2		#2 byte~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <samsung_commdata_cmd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'req_comm_ID))
     4 (cl:length (cl:slot-value msg 'req_func_code))
     4 (cl:length (cl:slot-value msg 'req_comm_data))
     4 (cl:length (cl:slot-value msg 'req_comm_data_1))
     4 (cl:length (cl:slot-value msg 'req_comm_data_2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <samsung_commdata_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'samsung_commdata_cmd-request
    (cl:cons ':req_comm_ID (req_comm_ID msg))
    (cl:cons ':req_func_code (req_func_code msg))
    (cl:cons ':req_comm_data (req_comm_data msg))
    (cl:cons ':req_comm_data_1 (req_comm_data_1 msg))
    (cl:cons ':req_comm_data_2 (req_comm_data_2 msg))
))
;//! \htmlinclude samsung_commdata_cmd-response.msg.html

(cl:defclass <samsung_commdata_cmd-response> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (comm_ID
    :reader comm_ID
    :initarg :comm_ID
    :type cl:string
    :initform "")
   (func_code
    :reader func_code
    :initarg :func_code
    :type cl:string
    :initform "")
   (comm_data
    :reader comm_data
    :initarg :comm_data
    :type cl:string
    :initform "")
   (comm_data_1
    :reader comm_data_1
    :initarg :comm_data_1
    :type cl:string
    :initform "")
   (comm_data_2
    :reader comm_data_2
    :initarg :comm_data_2
    :type cl:string
    :initform ""))
)

(cl:defclass samsung_commdata_cmd-response (<samsung_commdata_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <samsung_commdata_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'samsung_commdata_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name samsungcmd_msgs-srv:<samsung_commdata_cmd-response> is deprecated: use samsungcmd_msgs-srv:samsung_commdata_cmd-response instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <samsung_commdata_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:stamp-val is deprecated.  Use samsungcmd_msgs-srv:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'comm_ID-val :lambda-list '(m))
(cl:defmethod comm_ID-val ((m <samsung_commdata_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:comm_ID-val is deprecated.  Use samsungcmd_msgs-srv:comm_ID instead.")
  (comm_ID m))

(cl:ensure-generic-function 'func_code-val :lambda-list '(m))
(cl:defmethod func_code-val ((m <samsung_commdata_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:func_code-val is deprecated.  Use samsungcmd_msgs-srv:func_code instead.")
  (func_code m))

(cl:ensure-generic-function 'comm_data-val :lambda-list '(m))
(cl:defmethod comm_data-val ((m <samsung_commdata_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:comm_data-val is deprecated.  Use samsungcmd_msgs-srv:comm_data instead.")
  (comm_data m))

(cl:ensure-generic-function 'comm_data_1-val :lambda-list '(m))
(cl:defmethod comm_data_1-val ((m <samsung_commdata_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:comm_data_1-val is deprecated.  Use samsungcmd_msgs-srv:comm_data_1 instead.")
  (comm_data_1 m))

(cl:ensure-generic-function 'comm_data_2-val :lambda-list '(m))
(cl:defmethod comm_data_2-val ((m <samsung_commdata_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-srv:comm_data_2-val is deprecated.  Use samsungcmd_msgs-srv:comm_data_2 instead.")
  (comm_data_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <samsung_commdata_cmd-response>) ostream)
  "Serializes a message object of type '<samsung_commdata_cmd-response>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comm_ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comm_ID))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'func_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'func_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comm_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comm_data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comm_data_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comm_data_1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comm_data_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comm_data_2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <samsung_commdata_cmd-response>) istream)
  "Deserializes a message object of type '<samsung_commdata_cmd-response>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'comm_ID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'comm_ID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'func_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'func_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'comm_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'comm_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'comm_data_1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'comm_data_1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'comm_data_2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'comm_data_2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<samsung_commdata_cmd-response>)))
  "Returns string type for a service object of type '<samsung_commdata_cmd-response>"
  "samsungcmd_msgs/samsung_commdata_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'samsung_commdata_cmd-response)))
  "Returns string type for a service object of type 'samsung_commdata_cmd-response"
  "samsungcmd_msgs/samsung_commdata_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<samsung_commdata_cmd-response>)))
  "Returns md5sum for a message object of type '<samsung_commdata_cmd-response>"
  "242fd30b82c2183869504aaf92fdf73a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'samsung_commdata_cmd-response)))
  "Returns md5sum for a message object of type 'samsung_commdata_cmd-response"
  "242fd30b82c2183869504aaf92fdf73a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<samsung_commdata_cmd-response>)))
  "Returns full string definition for message of type '<samsung_commdata_cmd-response>"
  (cl:format cl:nil "time 	stamp~%string 	comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]~%string 	func_code		#1 byte :C,T,R~%string 	comm_data		#2 byte~%string 	comm_data_1		#2 byte~%string 	comm_data_2		#2 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'samsung_commdata_cmd-response)))
  "Returns full string definition for message of type 'samsung_commdata_cmd-response"
  (cl:format cl:nil "time 	stamp~%string 	comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]~%string 	func_code		#1 byte :C,T,R~%string 	comm_data		#2 byte~%string 	comm_data_1		#2 byte~%string 	comm_data_2		#2 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <samsung_commdata_cmd-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'comm_ID))
     4 (cl:length (cl:slot-value msg 'func_code))
     4 (cl:length (cl:slot-value msg 'comm_data))
     4 (cl:length (cl:slot-value msg 'comm_data_1))
     4 (cl:length (cl:slot-value msg 'comm_data_2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <samsung_commdata_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'samsung_commdata_cmd-response
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':comm_ID (comm_ID msg))
    (cl:cons ':func_code (func_code msg))
    (cl:cons ':comm_data (comm_data msg))
    (cl:cons ':comm_data_1 (comm_data_1 msg))
    (cl:cons ':comm_data_2 (comm_data_2 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'samsung_commdata_cmd)))
  'samsung_commdata_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'samsung_commdata_cmd)))
  'samsung_commdata_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'samsung_commdata_cmd)))
  "Returns string type for a service object of type '<samsung_commdata_cmd>"
  "samsungcmd_msgs/samsung_commdata_cmd")