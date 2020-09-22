; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-msg)


;//! \htmlinclude bot_transferdata.msg.html

(cl:defclass <bot_transferdata> (roslisp-msg-protocol:ros-message)
  ((index_ID
    :reader index_ID
    :initarg :index_ID
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bot_transferdata (<bot_transferdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_transferdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_transferdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-msg:<bot_transferdata> is deprecated: use botcmd_msgs-msg:bot_transferdata instead.")))

(cl:ensure-generic-function 'index_ID-val :lambda-list '(m))
(cl:defmethod index_ID-val ((m <bot_transferdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:index_ID-val is deprecated.  Use botcmd_msgs-msg:index_ID instead.")
  (index_ID m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <bot_transferdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:data-val is deprecated.  Use botcmd_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_transferdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:result-val is deprecated.  Use botcmd_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_transferdata>) ostream)
  "Serializes a message object of type '<bot_transferdata>"
  (cl:let* ((signed (cl:slot-value msg 'index_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_transferdata>) istream)
  "Deserializes a message object of type '<bot_transferdata>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index_ID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_transferdata>)))
  "Returns string type for a message object of type '<bot_transferdata>"
  "botcmd_msgs/bot_transferdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_transferdata)))
  "Returns string type for a message object of type 'bot_transferdata"
  "botcmd_msgs/bot_transferdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_transferdata>)))
  "Returns md5sum for a message object of type '<bot_transferdata>"
  "09a8772b40b66daa3c0ae4a33bacb8ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_transferdata)))
  "Returns md5sum for a message object of type 'bot_transferdata"
  "09a8772b40b66daa3c0ae4a33bacb8ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_transferdata>)))
  "Returns full string definition for message of type '<bot_transferdata>"
  (cl:format cl:nil "int8 index_ID~%string data~%bool result	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_transferdata)))
  "Returns full string definition for message of type 'bot_transferdata"
  (cl:format cl:nil "int8 index_ID~%string data~%bool result	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_transferdata>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'data))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_transferdata>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_transferdata
    (cl:cons ':index_ID (index_ID msg))
    (cl:cons ':data (data msg))
    (cl:cons ':result (result msg))
))
