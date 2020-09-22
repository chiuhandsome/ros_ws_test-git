; Auto-generated. Do not edit!


(cl:in-package mongodb_store-srv)


;//! \htmlinclude MongoFind-request.msg.html

(cl:defclass <MongoFind-request> (roslisp-msg-protocol:ros-message)
  ((db
    :reader db
    :initarg :db
    :type cl:string
    :initform "")
   (collection
    :reader collection
    :initarg :collection
    :type cl:string
    :initform "")
   (query
    :reader query
    :initarg :query
    :type cl:string
    :initform ""))
)

(cl:defclass MongoFind-request (<MongoFind-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoFind-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoFind-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<MongoFind-request> is deprecated: use mongodb_store-srv:MongoFind-request instead.")))

(cl:ensure-generic-function 'db-val :lambda-list '(m))
(cl:defmethod db-val ((m <MongoFind-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:db-val is deprecated.  Use mongodb_store-srv:db instead.")
  (db m))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <MongoFind-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:collection-val is deprecated.  Use mongodb_store-srv:collection instead.")
  (collection m))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <MongoFind-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:query-val is deprecated.  Use mongodb_store-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoFind-request>) ostream)
  "Serializes a message object of type '<MongoFind-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'db))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'db))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collection))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoFind-request>) istream)
  "Deserializes a message object of type '<MongoFind-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'db) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'db) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'query) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoFind-request>)))
  "Returns string type for a service object of type '<MongoFind-request>"
  "mongodb_store/MongoFindRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoFind-request)))
  "Returns string type for a service object of type 'MongoFind-request"
  "mongodb_store/MongoFindRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoFind-request>)))
  "Returns md5sum for a message object of type '<MongoFind-request>"
  "af526ebd8fc8f237d912cdce0c13e918")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoFind-request)))
  "Returns md5sum for a message object of type 'MongoFind-request"
  "af526ebd8fc8f237d912cdce0c13e918")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoFind-request>)))
  "Returns full string definition for message of type '<MongoFind-request>"
  (cl:format cl:nil "string db~%string collection~%string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoFind-request)))
  "Returns full string definition for message of type 'MongoFind-request"
  (cl:format cl:nil "string db~%string collection~%string query~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoFind-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'db))
     4 (cl:length (cl:slot-value msg 'collection))
     4 (cl:length (cl:slot-value msg 'query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoFind-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoFind-request
    (cl:cons ':db (db msg))
    (cl:cons ':collection (collection msg))
    (cl:cons ':query (query msg))
))
;//! \htmlinclude MongoFind-response.msg.html

(cl:defclass <MongoFind-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass MongoFind-response (<MongoFind-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoFind-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoFind-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<MongoFind-response> is deprecated: use mongodb_store-srv:MongoFind-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MongoFind-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:result-val is deprecated.  Use mongodb_store-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoFind-response>) ostream)
  "Serializes a message object of type '<MongoFind-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoFind-response>) istream)
  "Deserializes a message object of type '<MongoFind-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoFind-response>)))
  "Returns string type for a service object of type '<MongoFind-response>"
  "mongodb_store/MongoFindResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoFind-response)))
  "Returns string type for a service object of type 'MongoFind-response"
  "mongodb_store/MongoFindResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoFind-response>)))
  "Returns md5sum for a message object of type '<MongoFind-response>"
  "af526ebd8fc8f237d912cdce0c13e918")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoFind-response)))
  "Returns md5sum for a message object of type 'MongoFind-response"
  "af526ebd8fc8f237d912cdce0c13e918")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoFind-response>)))
  "Returns full string definition for message of type '<MongoFind-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoFind-response)))
  "Returns full string definition for message of type 'MongoFind-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoFind-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoFind-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoFind-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MongoFind)))
  'MongoFind-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MongoFind)))
  'MongoFind-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoFind)))
  "Returns string type for a service object of type '<MongoFind>"
  "mongodb_store/MongoFind")