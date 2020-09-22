; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-msg)


;//! \htmlinclude bot_Infodata.msg.html

(cl:defclass <bot_Infodata> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (info_status
    :reader info_status
    :initarg :info_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass bot_Infodata (<bot_Infodata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_Infodata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_Infodata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-msg:<bot_Infodata> is deprecated: use botcmd_msgs-msg:bot_Infodata instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <bot_Infodata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:stamp-val is deprecated.  Use botcmd_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'info_status-val :lambda-list '(m))
(cl:defmethod info_status-val ((m <bot_Infodata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:info_status-val is deprecated.  Use botcmd_msgs-msg:info_status instead.")
  (info_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_Infodata>) ostream)
  "Serializes a message object of type '<bot_Infodata>"
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
  (cl:let* ((signed (cl:slot-value msg 'info_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_Infodata>) istream)
  "Deserializes a message object of type '<bot_Infodata>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_Infodata>)))
  "Returns string type for a message object of type '<bot_Infodata>"
  "botcmd_msgs/bot_Infodata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_Infodata)))
  "Returns string type for a message object of type 'bot_Infodata"
  "botcmd_msgs/bot_Infodata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_Infodata>)))
  "Returns md5sum for a message object of type '<bot_Infodata>"
  "740be2245d9c22ac1e693a9ba553240e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_Infodata)))
  "Returns md5sum for a message object of type 'bot_Infodata"
  "740be2245d9c22ac1e693a9ba553240e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_Infodata>)))
  "Returns full string definition for message of type '<bot_Infodata>"
  (cl:format cl:nil "time stamp~%int8 info_status	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_Infodata)))
  "Returns full string definition for message of type 'bot_Infodata"
  (cl:format cl:nil "time stamp~%int8 info_status	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_Infodata>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_Infodata>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_Infodata
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':info_status (info_status msg))
))
