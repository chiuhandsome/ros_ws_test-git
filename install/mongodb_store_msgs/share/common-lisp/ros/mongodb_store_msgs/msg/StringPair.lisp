; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-msg)


;//! \htmlinclude StringPair.msg.html

(cl:defclass <StringPair> (roslisp-msg-protocol:ros-message)
  ((first
    :reader first
    :initarg :first
    :type cl:string
    :initform "")
   (second
    :reader second
    :initarg :second
    :type cl:string
    :initform ""))
)

(cl:defclass StringPair (<StringPair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringPair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringPair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-msg:<StringPair> is deprecated: use mongodb_store_msgs-msg:StringPair instead.")))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <StringPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:first-val is deprecated.  Use mongodb_store_msgs-msg:first instead.")
  (first m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <StringPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:second-val is deprecated.  Use mongodb_store_msgs-msg:second instead.")
  (second m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringPair>) ostream)
  "Serializes a message object of type '<StringPair>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'first))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'first))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'second))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringPair>) istream)
  "Deserializes a message object of type '<StringPair>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'first) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'first) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'second) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'second) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringPair>)))
  "Returns string type for a message object of type '<StringPair>"
  "mongodb_store_msgs/StringPair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringPair)))
  "Returns string type for a message object of type 'StringPair"
  "mongodb_store_msgs/StringPair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringPair>)))
  "Returns md5sum for a message object of type '<StringPair>"
  "c0d0db6e21f3fc1eb068f9cc22ba8beb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringPair)))
  "Returns md5sum for a message object of type 'StringPair"
  "c0d0db6e21f3fc1eb068f9cc22ba8beb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringPair>)))
  "Returns full string definition for message of type '<StringPair>"
  (cl:format cl:nil "string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringPair)))
  "Returns full string definition for message of type 'StringPair"
  (cl:format cl:nil "string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringPair>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'first))
     4 (cl:length (cl:slot-value msg 'second))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringPair>))
  "Converts a ROS message object to a list"
  (cl:list 'StringPair
    (cl:cons ':first (first msg))
    (cl:cons ':second (second msg))
))
