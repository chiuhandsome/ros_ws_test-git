; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-srv)


;//! \htmlinclude MongoInsertMsg-request.msg.html

(cl:defclass <MongoInsertMsg-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MongoInsertMsg-request (<MongoInsertMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoInsertMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoInsertMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-srv:<MongoInsertMsg-request> is deprecated: use mongodb_store_msgs-srv:MongoInsertMsg-request instead.")))

(cl:ensure-generic-function 'database-val :lambda-list '(m))
(cl:defmethod database-val ((m <MongoInsertMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:database-val is deprecated.  Use mongodb_store_msgs-srv:database instead.")
  (database m))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <MongoInsertMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:collection-val is deprecated.  Use mongodb_store_msgs-srv:collection instead.")
  (collection m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MongoInsertMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:message-val is deprecated.  Use mongodb_store_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <MongoInsertMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:meta-val is deprecated.  Use mongodb_store_msgs-srv:meta instead.")
  (meta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoInsertMsg-request>) ostream)
  "Serializes a message object of type '<MongoInsertMsg-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoInsertMsg-request>) istream)
  "Deserializes a message object of type '<MongoInsertMsg-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoInsertMsg-request>)))
  "Returns string type for a service object of type '<MongoInsertMsg-request>"
  "mongodb_store_msgs/MongoInsertMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoInsertMsg-request)))
  "Returns string type for a service object of type 'MongoInsertMsg-request"
  "mongodb_store_msgs/MongoInsertMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoInsertMsg-request>)))
  "Returns md5sum for a message object of type '<MongoInsertMsg-request>"
  "1010faffc38f79deac2400dd47256e51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoInsertMsg-request)))
  "Returns md5sum for a message object of type 'MongoInsertMsg-request"
  "1010faffc38f79deac2400dd47256e51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoInsertMsg-request>)))
  "Returns full string definition for message of type '<MongoInsertMsg-request>"
  (cl:format cl:nil "# message used for inserting a ROS msg into a MongoDB database~%~%string database~%string collection~%SerialisedMessage message~%# meta description to be added to message, each pair interpreted as key = value~%StringPairList meta~%~%================================================================================~%MSG: mongodb_store_msgs/SerialisedMessage~%# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoInsertMsg-request)))
  "Returns full string definition for message of type 'MongoInsertMsg-request"
  (cl:format cl:nil "# message used for inserting a ROS msg into a MongoDB database~%~%string database~%string collection~%SerialisedMessage message~%# meta description to be added to message, each pair interpreted as key = value~%StringPairList meta~%~%================================================================================~%MSG: mongodb_store_msgs/SerialisedMessage~%# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoInsertMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'database))
     4 (cl:length (cl:slot-value msg 'collection))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoInsertMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoInsertMsg-request
    (cl:cons ':database (database msg))
    (cl:cons ':collection (collection msg))
    (cl:cons ':message (message msg))
    (cl:cons ':meta (meta msg))
))
;//! \htmlinclude MongoInsertMsg-response.msg.html

(cl:defclass <MongoInsertMsg-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass MongoInsertMsg-response (<MongoInsertMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoInsertMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoInsertMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-srv:<MongoInsertMsg-response> is deprecated: use mongodb_store_msgs-srv:MongoInsertMsg-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MongoInsertMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:id-val is deprecated.  Use mongodb_store_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoInsertMsg-response>) ostream)
  "Serializes a message object of type '<MongoInsertMsg-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoInsertMsg-response>) istream)
  "Deserializes a message object of type '<MongoInsertMsg-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoInsertMsg-response>)))
  "Returns string type for a service object of type '<MongoInsertMsg-response>"
  "mongodb_store_msgs/MongoInsertMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoInsertMsg-response)))
  "Returns string type for a service object of type 'MongoInsertMsg-response"
  "mongodb_store_msgs/MongoInsertMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoInsertMsg-response>)))
  "Returns md5sum for a message object of type '<MongoInsertMsg-response>"
  "1010faffc38f79deac2400dd47256e51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoInsertMsg-response)))
  "Returns md5sum for a message object of type 'MongoInsertMsg-response"
  "1010faffc38f79deac2400dd47256e51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoInsertMsg-response>)))
  "Returns full string definition for message of type '<MongoInsertMsg-response>"
  (cl:format cl:nil "# id of the inserted msg~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoInsertMsg-response)))
  "Returns full string definition for message of type 'MongoInsertMsg-response"
  (cl:format cl:nil "# id of the inserted msg~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoInsertMsg-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoInsertMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoInsertMsg-response
    (cl:cons ':id (id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MongoInsertMsg)))
  'MongoInsertMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MongoInsertMsg)))
  'MongoInsertMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoInsertMsg)))
  "Returns string type for a service object of type '<MongoInsertMsg>"
  "mongodb_store_msgs/MongoInsertMsg")