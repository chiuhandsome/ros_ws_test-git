; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-msg)


;//! \htmlinclude bot_ultrasonic.msg.html

(cl:defclass <bot_ultrasonic> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (quantity
    :reader quantity
    :initarg :quantity
    :type cl:fixnum
    :initform 0)
   (ranges
    :reader ranges
    :initarg :ranges
    :type cl:string
    :initform ""))
)

(cl:defclass bot_ultrasonic (<bot_ultrasonic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_ultrasonic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_ultrasonic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-msg:<bot_ultrasonic> is deprecated: use botcmd_msgs-msg:bot_ultrasonic instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <bot_ultrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:stamp-val is deprecated.  Use botcmd_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'quantity-val :lambda-list '(m))
(cl:defmethod quantity-val ((m <bot_ultrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:quantity-val is deprecated.  Use botcmd_msgs-msg:quantity instead.")
  (quantity m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <bot_ultrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:ranges-val is deprecated.  Use botcmd_msgs-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_ultrasonic>) ostream)
  "Serializes a message object of type '<bot_ultrasonic>"
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
  (cl:let* ((signed (cl:slot-value msg 'quantity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_ultrasonic>) istream)
  "Deserializes a message object of type '<bot_ultrasonic>"
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
      (cl:setf (cl:slot-value msg 'quantity) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ranges) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ranges) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_ultrasonic>)))
  "Returns string type for a message object of type '<bot_ultrasonic>"
  "botcmd_msgs/bot_ultrasonic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_ultrasonic)))
  "Returns string type for a message object of type 'bot_ultrasonic"
  "botcmd_msgs/bot_ultrasonic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_ultrasonic>)))
  "Returns md5sum for a message object of type '<bot_ultrasonic>"
  "eb86edbddd862c6792e2bca43262c9f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_ultrasonic)))
  "Returns md5sum for a message object of type 'bot_ultrasonic"
  "eb86edbddd862c6792e2bca43262c9f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_ultrasonic>)))
  "Returns full string definition for message of type '<bot_ultrasonic>"
  (cl:format cl:nil "time stamp~%int8 quantity~%string ranges	#float32[] ranges	# 0:disable, -1:error , >0 :normal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_ultrasonic)))
  "Returns full string definition for message of type 'bot_ultrasonic"
  (cl:format cl:nil "time stamp~%int8 quantity~%string ranges	#float32[] ranges	# 0:disable, -1:error , >0 :normal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_ultrasonic>))
  (cl:+ 0
     8
     1
     4 (cl:length (cl:slot-value msg 'ranges))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_ultrasonic>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_ultrasonic
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':quantity (quantity msg))
    (cl:cons ':ranges (ranges msg))
))
