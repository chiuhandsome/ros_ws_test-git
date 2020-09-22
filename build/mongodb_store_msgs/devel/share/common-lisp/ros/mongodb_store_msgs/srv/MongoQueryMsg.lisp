; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-srv)


;//! \htmlinclude MongoQueryMsg-request.msg.html

(cl:defclass <MongoQueryMsg-request> (roslisp-msg-protocol:ros-message)
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
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (single
    :reader single
    :initarg :single
    :type cl:boolean
    :initform cl:nil)
   (limit
    :reader limit
    :initarg :limit
    :type cl:fixnum
    :initform 0)
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
   (sort_query
    :reader sort_query
    :initarg :sort_query
    :type mongodb_store_msgs-msg:StringPairList
    :initform (cl:make-instance 'mongodb_store_msgs-msg:StringPairList))
   (projection_query
    :reader projection_query
    :initarg :projection_query
    :type mongodb_store_msgs-msg:StringPairList
    :initform (cl:make-instance 'mongodb_store_msgs-msg:StringPairList)))
)

(cl:defclass MongoQueryMsg-request (<MongoQueryMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoQueryMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoQueryMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-srv:<MongoQueryMsg-request> is deprecated: use mongodb_store_msgs-srv:MongoQueryMsg-request instead.")))

(cl:ensure-generic-function 'database-val :lambda-list '(m))
(cl:defmethod database-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:database-val is deprecated.  Use mongodb_store_msgs-srv:database instead.")
  (database m))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:collection-val is deprecated.  Use mongodb_store_msgs-srv:collection instead.")
  (collection m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:type-val is deprecated.  Use mongodb_store_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'single-val :lambda-list '(m))
(cl:defmethod single-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:single-val is deprecated.  Use mongodb_store_msgs-srv:single instead.")
  (single m))

(cl:ensure-generic-function 'limit-val :lambda-list '(m))
(cl:defmethod limit-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:limit-val is deprecated.  Use mongodb_store_msgs-srv:limit instead.")
  (limit m))

(cl:ensure-generic-function 'message_query-val :lambda-list '(m))
(cl:defmethod message_query-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:message_query-val is deprecated.  Use mongodb_store_msgs-srv:message_query instead.")
  (message_query m))

(cl:ensure-generic-function 'meta_query-val :lambda-list '(m))
(cl:defmethod meta_query-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:meta_query-val is deprecated.  Use mongodb_store_msgs-srv:meta_query instead.")
  (meta_query m))

(cl:ensure-generic-function 'sort_query-val :lambda-list '(m))
(cl:defmethod sort_query-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:sort_query-val is deprecated.  Use mongodb_store_msgs-srv:sort_query instead.")
  (sort_query m))

(cl:ensure-generic-function 'projection_query-val :lambda-list '(m))
(cl:defmethod projection_query-val ((m <MongoQueryMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:projection_query-val is deprecated.  Use mongodb_store_msgs-srv:projection_query instead.")
  (projection_query m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MongoQueryMsg-request>)))
    "Constants for message type '<MongoQueryMsg-request>"
  '((:JSON_QUERY . "jnsdfskajd_fmgs.dlf"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MongoQueryMsg-request)))
    "Constants for message type 'MongoQueryMsg-request"
  '((:JSON_QUERY . "jnsdfskajd_fmgs.dlf"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoQueryMsg-request>) ostream)
  "Serializes a message object of type '<MongoQueryMsg-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'single) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'limit)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'message_query) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta_query) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sort_query) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'projection_query) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoQueryMsg-request>) istream)
  "Deserializes a message object of type '<MongoQueryMsg-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'single) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'limit)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'message_query) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta_query) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sort_query) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'projection_query) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoQueryMsg-request>)))
  "Returns string type for a service object of type '<MongoQueryMsg-request>"
  "mongodb_store_msgs/MongoQueryMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoQueryMsg-request)))
  "Returns string type for a service object of type 'MongoQueryMsg-request"
  "mongodb_store_msgs/MongoQueryMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoQueryMsg-request>)))
  "Returns md5sum for a message object of type '<MongoQueryMsg-request>"
  "45d9c9b353113ab0888f363d63903883")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoQueryMsg-request)))
  "Returns md5sum for a message object of type 'MongoQueryMsg-request"
  "45d9c9b353113ab0888f363d63903883")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoQueryMsg-request>)))
  "Returns full string definition for message of type '<MongoQueryMsg-request>"
  (cl:format cl:nil "# message used for querying for ids of matching ROS msgs from a MongoDB database~%~%# constant passed as key in query to indicate the value should be treated as a query string (assuming that is possible...)~%string JSON_QUERY=\"jnsdfskajd_fmgs.dlf\"~%~%string database~%string collection~%# type to deserialise into~%string type~%# whether you're only looking for a single ~%bool single~%# how much messages you want. limit=0 is equivalent to setting no limit.~%uint16 limit~%# key/values to be turned into a query doc on message content~%StringPairList message_query~%# key/values to be turned into a query doc on meta content~%StringPairList meta_query~%# key/values to be turned into a sort query~%StringPairList sort_query~%# key/values to be turned into a projection query~%StringPairList projection_query~%~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoQueryMsg-request)))
  "Returns full string definition for message of type 'MongoQueryMsg-request"
  (cl:format cl:nil "# message used for querying for ids of matching ROS msgs from a MongoDB database~%~%# constant passed as key in query to indicate the value should be treated as a query string (assuming that is possible...)~%string JSON_QUERY=\"jnsdfskajd_fmgs.dlf\"~%~%string database~%string collection~%# type to deserialise into~%string type~%# whether you're only looking for a single ~%bool single~%# how much messages you want. limit=0 is equivalent to setting no limit.~%uint16 limit~%# key/values to be turned into a query doc on message content~%StringPairList message_query~%# key/values to be turned into a query doc on meta content~%StringPairList meta_query~%# key/values to be turned into a sort query~%StringPairList sort_query~%# key/values to be turned into a projection query~%StringPairList projection_query~%~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoQueryMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'database))
     4 (cl:length (cl:slot-value msg 'collection))
     4 (cl:length (cl:slot-value msg 'type))
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message_query))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta_query))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sort_query))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'projection_query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoQueryMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoQueryMsg-request
    (cl:cons ':database (database msg))
    (cl:cons ':collection (collection msg))
    (cl:cons ':type (type msg))
    (cl:cons ':single (single msg))
    (cl:cons ':limit (limit msg))
    (cl:cons ':message_query (message_query msg))
    (cl:cons ':meta_query (meta_query msg))
    (cl:cons ':sort_query (sort_query msg))
    (cl:cons ':projection_query (projection_query msg))
))
;//! \htmlinclude MongoQueryMsg-response.msg.html

(cl:defclass <MongoQueryMsg-response> (roslisp-msg-protocol:ros-message)
  ((messages
    :reader messages
    :initarg :messages
    :type (cl:vector mongodb_store_msgs-msg:SerialisedMessage)
   :initform (cl:make-array 0 :element-type 'mongodb_store_msgs-msg:SerialisedMessage :initial-element (cl:make-instance 'mongodb_store_msgs-msg:SerialisedMessage)))
   (metas
    :reader metas
    :initarg :metas
    :type (cl:vector mongodb_store_msgs-msg:StringPairList)
   :initform (cl:make-array 0 :element-type 'mongodb_store_msgs-msg:StringPairList :initial-element (cl:make-instance 'mongodb_store_msgs-msg:StringPairList))))
)

(cl:defclass MongoQueryMsg-response (<MongoQueryMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoQueryMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoQueryMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-srv:<MongoQueryMsg-response> is deprecated: use mongodb_store_msgs-srv:MongoQueryMsg-response instead.")))

(cl:ensure-generic-function 'messages-val :lambda-list '(m))
(cl:defmethod messages-val ((m <MongoQueryMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:messages-val is deprecated.  Use mongodb_store_msgs-srv:messages instead.")
  (messages m))

(cl:ensure-generic-function 'metas-val :lambda-list '(m))
(cl:defmethod metas-val ((m <MongoQueryMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:metas-val is deprecated.  Use mongodb_store_msgs-srv:metas instead.")
  (metas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoQueryMsg-response>) ostream)
  "Serializes a message object of type '<MongoQueryMsg-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'messages))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'messages))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'metas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'metas))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoQueryMsg-response>) istream)
  "Deserializes a message object of type '<MongoQueryMsg-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'messages) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'messages)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mongodb_store_msgs-msg:SerialisedMessage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'metas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'metas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mongodb_store_msgs-msg:StringPairList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoQueryMsg-response>)))
  "Returns string type for a service object of type '<MongoQueryMsg-response>"
  "mongodb_store_msgs/MongoQueryMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoQueryMsg-response)))
  "Returns string type for a service object of type 'MongoQueryMsg-response"
  "mongodb_store_msgs/MongoQueryMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoQueryMsg-response>)))
  "Returns md5sum for a message object of type '<MongoQueryMsg-response>"
  "45d9c9b353113ab0888f363d63903883")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoQueryMsg-response)))
  "Returns md5sum for a message object of type 'MongoQueryMsg-response"
  "45d9c9b353113ab0888f363d63903883")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoQueryMsg-response>)))
  "Returns full string definition for message of type '<MongoQueryMsg-response>"
  (cl:format cl:nil "# messages which match the query~%SerialisedMessage[] messages~%StringPairList[] metas~%~%~%================================================================================~%MSG: mongodb_store_msgs/SerialisedMessage~%# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoQueryMsg-response)))
  "Returns full string definition for message of type 'MongoQueryMsg-response"
  (cl:format cl:nil "# messages which match the query~%SerialisedMessage[] messages~%StringPairList[] metas~%~%~%================================================================================~%MSG: mongodb_store_msgs/SerialisedMessage~%# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoQueryMsg-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'messages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'metas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoQueryMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoQueryMsg-response
    (cl:cons ':messages (messages msg))
    (cl:cons ':metas (metas msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MongoQueryMsg)))
  'MongoQueryMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MongoQueryMsg)))
  'MongoQueryMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoQueryMsg)))
  "Returns string type for a service object of type '<MongoQueryMsg>"
  "mongodb_store_msgs/MongoQueryMsg")