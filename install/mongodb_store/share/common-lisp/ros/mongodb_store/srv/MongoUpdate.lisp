; Auto-generated. Do not edit!


(cl:in-package mongodb_store-srv)


;//! \htmlinclude MongoUpdate-request.msg.html

(cl:defclass <MongoUpdate-request> (roslisp-msg-protocol:ros-message)
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
    :initform "")
   (update
    :reader update
    :initarg :update
    :type cl:string
    :initform ""))
)

(cl:defclass MongoUpdate-request (<MongoUpdate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoUpdate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoUpdate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<MongoUpdate-request> is deprecated: use mongodb_store-srv:MongoUpdate-request instead.")))

(cl:ensure-generic-function 'db-val :lambda-list '(m))
(cl:defmethod db-val ((m <MongoUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:db-val is deprecated.  Use mongodb_store-srv:db instead.")
  (db m))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <MongoUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:collection-val is deprecated.  Use mongodb_store-srv:collection instead.")
  (collection m))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <MongoUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:query-val is deprecated.  Use mongodb_store-srv:query instead.")
  (query m))

(cl:ensure-generic-function 'update-val :lambda-list '(m))
(cl:defmethod update-val ((m <MongoUpdate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:update-val is deprecated.  Use mongodb_store-srv:update instead.")
  (update m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoUpdate-request>) ostream)
  "Serializes a message object of type '<MongoUpdate-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoUpdate-request>) istream)
  "Deserializes a message object of type '<MongoUpdate-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'update) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'update) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoUpdate-request>)))
  "Returns string type for a service object of type '<MongoUpdate-request>"
  "mongodb_store/MongoUpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoUpdate-request)))
  "Returns string type for a service object of type 'MongoUpdate-request"
  "mongodb_store/MongoUpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoUpdate-request>)))
  "Returns md5sum for a message object of type '<MongoUpdate-request>"
  "2806c067c40cdb2b9e11634221c51298")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoUpdate-request)))
  "Returns md5sum for a message object of type 'MongoUpdate-request"
  "2806c067c40cdb2b9e11634221c51298")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoUpdate-request>)))
  "Returns full string definition for message of type '<MongoUpdate-request>"
  (cl:format cl:nil "string db~%string collection~%string query~%string update~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoUpdate-request)))
  "Returns full string definition for message of type 'MongoUpdate-request"
  (cl:format cl:nil "string db~%string collection~%string query~%string update~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoUpdate-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'db))
     4 (cl:length (cl:slot-value msg 'collection))
     4 (cl:length (cl:slot-value msg 'query))
     4 (cl:length (cl:slot-value msg 'update))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoUpdate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoUpdate-request
    (cl:cons ':db (db msg))
    (cl:cons ':collection (collection msg))
    (cl:cons ':query (query msg))
    (cl:cons ':update (update msg))
))
;//! \htmlinclude MongoUpdate-response.msg.html

(cl:defclass <MongoUpdate-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass MongoUpdate-response (<MongoUpdate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoUpdate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoUpdate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<MongoUpdate-response> is deprecated: use mongodb_store-srv:MongoUpdate-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MongoUpdate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:result-val is deprecated.  Use mongodb_store-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoUpdate-response>) ostream)
  "Serializes a message object of type '<MongoUpdate-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoUpdate-response>) istream)
  "Deserializes a message object of type '<MongoUpdate-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoUpdate-response>)))
  "Returns string type for a service object of type '<MongoUpdate-response>"
  "mongodb_store/MongoUpdateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoUpdate-response)))
  "Returns string type for a service object of type 'MongoUpdate-response"
  "mongodb_store/MongoUpdateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoUpdate-response>)))
  "Returns md5sum for a message object of type '<MongoUpdate-response>"
  "2806c067c40cdb2b9e11634221c51298")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoUpdate-response)))
  "Returns md5sum for a message object of type 'MongoUpdate-response"
  "2806c067c40cdb2b9e11634221c51298")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoUpdate-response>)))
  "Returns full string definition for message of type '<MongoUpdate-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoUpdate-response)))
  "Returns full string definition for message of type 'MongoUpdate-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoUpdate-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoUpdate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoUpdate-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MongoUpdate)))
  'MongoUpdate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MongoUpdate)))
  'MongoUpdate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoUpdate)))
  "Returns string type for a service object of type '<MongoUpdate>"
  "mongodb_store/MongoUpdate")