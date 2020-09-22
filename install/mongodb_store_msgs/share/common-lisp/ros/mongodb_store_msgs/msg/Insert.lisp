; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-msg)


;//! \htmlinclude Insert.msg.html

(cl:defclass <Insert> (roslisp-msg-protocol:ros-message)
  ((database
    :reader database
    :initarg :database
    :type cl:string
    :initform "")
   (collection
    :reader collection
    :initarg :collection
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type mongodb_store_msgs-msg:SerialisedMessage
    :initform (cl:make-instance 'mongodb_store_msgs-msg:SerialisedMessage))
   (meta
    :reader meta
    :initarg :meta
    :type mongodb_store_msgs-msg:StringPairList
    :initform (cl:make-instance 'mongodb_store_msgs-msg:StringPairList)))
)

(cl:defclass Insert (<Insert>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Insert>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Insert)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-msg:<Insert> is deprecated: use mongodb_store_msgs-msg:Insert instead.")))

(cl:ensure-generic-function 'database-val :lambda-list '(m))
(cl:defmethod database-val ((m <Insert>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:database-val is deprecated.  Use mongodb_store_msgs-msg:database instead.")
  (database m))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <Insert>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:collection-val is deprecated.  Use mongodb_store_msgs-msg:collection instead.")
  (collection m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Insert>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:message-val is deprecated.  Use mongodb_store_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <Insert>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:meta-val is deprecated.  Use mongodb_store_msgs-msg:meta instead.")
  (meta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Insert>) ostream)
  "Serializes a message object of type '<Insert>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'database))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'database))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collection))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'message) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Insert>) istream)
  "Deserializes a message object of type '<Insert>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'database) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'database) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collection) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collection) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'message) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Insert>)))
  "Returns string type for a message object of type '<Insert>"
  "mongodb_store_msgs/Insert")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Insert)))
  "Returns string type for a message object of type 'Insert"
  "mongodb_store_msgs/Insert")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Insert>)))
  "Returns md5sum for a message object of type '<Insert>"
  "d071b179071167c692331b5356e30470")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Insert)))
  "Returns md5sum for a message object of type 'Insert"
  "d071b179071167c692331b5356e30470")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Insert>)))
  "Returns full string definition for message of type '<Insert>"
  (cl:format cl:nil "# this is the same as mongodb_store_msgs/MongoInsertMsgRequest~%string database~%string collection~%SerialisedMessage message~%# meta description to be added to message, each pair interpreted as key = value~%StringPairList meta~%~%================================================================================~%MSG: mongodb_store_msgs/SerialisedMessage~%# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Insert)))
  "Returns full string definition for message of type 'Insert"
  (cl:format cl:nil "# this is the same as mongodb_store_msgs/MongoInsertMsgRequest~%string database~%string collection~%SerialisedMessage message~%# meta description to be added to message, each pair interpreted as key = value~%StringPairList meta~%~%================================================================================~%MSG: mongodb_store_msgs/SerialisedMessage~%# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Insert>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'database))
     4 (cl:length (cl:slot-value msg 'collection))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Insert>))
  "Converts a ROS message object to a list"
  (cl:list 'Insert
    (cl:cons ':database (database msg))
    (cl:cons ':collection (collection msg))
    (cl:cons ':message (message msg))
    (cl:cons ':meta (meta msg))
))
