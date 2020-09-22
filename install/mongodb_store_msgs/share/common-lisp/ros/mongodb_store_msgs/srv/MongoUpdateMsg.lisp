; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-srv)


;//! \htmlinclude MongoUpdateMsg-request.msg.html

(cl:defclass <MongoUpdateMsg-request> (roslisp-msg-protocol:ros-message)
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
   (upsert
    :reader upsert
    :initarg :upsert
    :type cl:boolean
    :initform cl:nil)
   (message_query
    :reader message_query
    :initarg :message_query
    :type mongodb_store_msgs-msg:StringPairList
    :initform (cl:make-instance 'mongodb_store_msgs-msg:StringPairList))
   (meta_query
    :reader meta_query
    :initarg :meta_query
    :type mongodb_store_msgs-msg:StringPairList
    :initform (cl:make-instance 'mongodb_store_msgs-msg:StringPairList))
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

(cl:defclass MongoUpdateMsg-request (<MongoUpdateMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoUpdateMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoUpdateMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-srv:<MongoUpdateMsg-request> is deprecated: use mongodb_store_msgs-srv:MongoUpdateMsg-request instead.")))

(cl:ensure-generic-function 'database-val :lambda-list '(m))
(cl:defmethod database-val ((m <MongoUpdateMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:database-val is deprecated.  Use mongodb_store_msgs-srv:database instead.")
  (database m))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <MongoUpdateMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:collection-val is deprecated.  Use mongodb_store_msgs-srv:collection instead.")
  (collection m))

(cl:ensure-generic-function 'upsert-val :lambda-list '(m))
(cl:defmethod upsert-val ((m <MongoUpdateMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:upsert-val is deprecated.  Use mongodb_store_msgs-srv:upsert instead.")
  (upsert m))

(cl:ensure-generic-function 'message_query-val :lambda-list '(m))
(cl:defmethod message_query-val ((m <MongoUpdateMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:message_query-val is deprecated.  Use mongodb_store_msgs-srv:message_query instead.")
  (message_query m))

(cl:ensure-generic-function 'meta_query-val :lambda-list '(m))
(cl:defmethod meta_query-val ((m <MongoUpdateMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:meta_query-val is deprecated.  Use mongodb_store_msgs-srv:meta_query instead.")
  (meta_query m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MongoUpdateMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:message-val is deprecated.  Use mongodb_store_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <MongoUpdateMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:meta-val is deprecated.  Use mongodb_store_msgs-srv:meta instead.")
  (meta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoUpdateMsg-request>) ostream)
  "Serializes a message object of type '<MongoUpdateMsg-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'upsert) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'message_query) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta_query) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'message) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoUpdateMsg-request>) istream)
  "Deserializes a message object of type '<MongoUpdateMsg-request>"
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
    (cl:setf (cl:slot-value msg 'upsert) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'message_query) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta_query) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'message) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoUpdateMsg-request>)))
  "Returns string type for a service object of type '<MongoUpdateMsg-request>"
  "mongodb_store_msgs/MongoUpdateMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoUpdateMsg-request)))
  "Returns string type for a service object of type 'MongoUpdateMsg-request"
  "mongodb_store_msgs/MongoUpdateMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoUpdateMsg-request>)))
  "Returns md5sum for a message object of type '<MongoUpdateMsg-request>"
  "c9a34b8e3509040b39c21bb4f3c2ca95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoUpdateMsg-request)))
  "Returns md5sum for a message object of type 'MongoUpdateMsg-request"
  "c9a34b8e3509040b39c21bb4f3c2ca95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoUpdateMsg-request>)))
  "Returns full string definition for message of type '<MongoUpdateMsg-request>"
  (cl:format cl:nil "# message used for updating matching ROS msgs from a MongoDB database~%~%string database~%string collection~%# insert if no matching message found~%bool upsert~%# key/values to be turned into a query doc on message content~%StringPairList message_query~%# key/values to be turned into a query doc on meta content~%StringPairList meta_query~%# the message to be inserted~%SerialisedMessage message~%# meta description to be added to message, if empty leave meta unchanged, if upsert true and empty, use meta_query~%StringPairList meta~%~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%================================================================================~%MSG: mongodb_store_msgs/SerialisedMessage~%# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoUpdateMsg-request)))
  "Returns full string definition for message of type 'MongoUpdateMsg-request"
  (cl:format cl:nil "# message used for updating matching ROS msgs from a MongoDB database~%~%string database~%string collection~%# insert if no matching message found~%bool upsert~%# key/values to be turned into a query doc on message content~%StringPairList message_query~%# key/values to be turned into a query doc on meta content~%StringPairList meta_query~%# the message to be inserted~%SerialisedMessage message~%# meta description to be added to message, if empty leave meta unchanged, if upsert true and empty, use meta_query~%StringPairList meta~%~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%================================================================================~%MSG: mongodb_store_msgs/SerialisedMessage~%# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoUpdateMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'database))
     4 (cl:length (cl:slot-value msg 'collection))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message_query))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta_query))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoUpdateMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoUpdateMsg-request
    (cl:cons ':database (database msg))
    (cl:cons ':collection (collection msg))
    (cl:cons ':upsert (upsert msg))
    (cl:cons ':message_query (message_query msg))
    (cl:cons ':meta_query (meta_query msg))
    (cl:cons ':message (message msg))
    (cl:cons ':meta (meta msg))
))
;//! \htmlinclude MongoUpdateMsg-response.msg.html

(cl:defclass <MongoUpdateMsg-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MongoUpdateMsg-response (<MongoUpdateMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoUpdateMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoUpdateMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-srv:<MongoUpdateMsg-response> is deprecated: use mongodb_store_msgs-srv:MongoUpdateMsg-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MongoUpdateMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:id-val is deprecated.  Use mongodb_store_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MongoUpdateMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:success-val is deprecated.  Use mongodb_store_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoUpdateMsg-response>) ostream)
  "Serializes a message object of type '<MongoUpdateMsg-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoUpdateMsg-response>) istream)
  "Deserializes a message object of type '<MongoUpdateMsg-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoUpdateMsg-response>)))
  "Returns string type for a service object of type '<MongoUpdateMsg-response>"
  "mongodb_store_msgs/MongoUpdateMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoUpdateMsg-response)))
  "Returns string type for a service object of type 'MongoUpdateMsg-response"
  "mongodb_store_msgs/MongoUpdateMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoUpdateMsg-response>)))
  "Returns md5sum for a message object of type '<MongoUpdateMsg-response>"
  "c9a34b8e3509040b39c21bb4f3c2ca95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoUpdateMsg-response)))
  "Returns md5sum for a message object of type 'MongoUpdateMsg-response"
  "c9a34b8e3509040b39c21bb4f3c2ca95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoUpdateMsg-response>)))
  "Returns full string definition for message of type '<MongoUpdateMsg-response>"
  (cl:format cl:nil "# id of the updated msg~%string id~%# true if the database was changed~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoUpdateMsg-response)))
  "Returns full string definition for message of type 'MongoUpdateMsg-response"
  (cl:format cl:nil "# id of the updated msg~%string id~%# true if the database was changed~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoUpdateMsg-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoUpdateMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoUpdateMsg-response
    (cl:cons ':id (id msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MongoUpdateMsg)))
  'MongoUpdateMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MongoUpdateMsg)))
  'MongoUpdateMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoUpdateMsg)))
  "Returns string type for a service object of type '<MongoUpdateMsg>"
  "mongodb_store_msgs/MongoUpdateMsg")