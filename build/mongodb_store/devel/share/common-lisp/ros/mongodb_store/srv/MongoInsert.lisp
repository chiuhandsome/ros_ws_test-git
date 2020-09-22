; Auto-generated. Do not edit!


(cl:in-package mongodb_store-srv)


;//! \htmlinclude MongoInsert-request.msg.html

(cl:defclass <MongoInsert-request> (roslisp-msg-protocol:ros-message)
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
   (document
    :reader document
    :initarg :document
    :type cl:string
    :initform ""))
)

(cl:defclass MongoInsert-request (<MongoInsert-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoInsert-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoInsert-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<MongoInsert-request> is deprecated: use mongodb_store-srv:MongoInsert-request instead.")))

(cl:ensure-generic-function 'db-val :lambda-list '(m))
(cl:defmethod db-val ((m <MongoInsert-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:db-val is deprecated.  Use mongodb_store-srv:db instead.")
  (db m))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <MongoInsert-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:collection-val is deprecated.  Use mongodb_store-srv:collection instead.")
  (collection m))

(cl:ensure-generic-function 'document-val :lambda-list '(m))
(cl:defmethod document-val ((m <MongoInsert-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:document-val is deprecated.  Use mongodb_store-srv:document instead.")
  (document m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoInsert-request>) ostream)
  "Serializes a message object of type '<MongoInsert-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'document))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'document))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoInsert-request>) istream)
  "Deserializes a message object of type '<MongoInsert-request>"
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
      (cl:setf (cl:slot-value msg 'document) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'document) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoInsert-request>)))
  "Returns string type for a service object of type '<MongoInsert-request>"
  "mongodb_store/MongoInsertRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoInsert-request)))
  "Returns string type for a service object of type 'MongoInsert-request"
  "mongodb_store/MongoInsertRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoInsert-request>)))
  "Returns md5sum for a message object of type '<MongoInsert-request>"
  "bd76635267dc21edfbf37677e5139543")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoInsert-request)))
  "Returns md5sum for a message object of type 'MongoInsert-request"
  "bd76635267dc21edfbf37677e5139543")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoInsert-request>)))
  "Returns full string definition for message of type '<MongoInsert-request>"
  (cl:format cl:nil "string db~%string collection~%string document ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoInsert-request)))
  "Returns full string definition for message of type 'MongoInsert-request"
  (cl:format cl:nil "string db~%string collection~%string document ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoInsert-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'db))
     4 (cl:length (cl:slot-value msg 'collection))
     4 (cl:length (cl:slot-value msg 'document))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoInsert-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoInsert-request
    (cl:cons ':db (db msg))
    (cl:cons ':collection (collection msg))
    (cl:cons ':document (document msg))
))
;//! \htmlinclude MongoInsert-response.msg.html

(cl:defclass <MongoInsert-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass MongoInsert-response (<MongoInsert-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoInsert-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoInsert-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store-srv:<MongoInsert-response> is deprecated: use mongodb_store-srv:MongoInsert-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MongoInsert-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store-srv:result-val is deprecated.  Use mongodb_store-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoInsert-response>) ostream)
  "Serializes a message object of type '<MongoInsert-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoInsert-response>) istream)
  "Deserializes a message object of type '<MongoInsert-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoInsert-response>)))
  "Returns string type for a service object of type '<MongoInsert-response>"
  "mongodb_store/MongoInsertResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoInsert-response)))
  "Returns string type for a service object of type 'MongoInsert-response"
  "mongodb_store/MongoInsertResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoInsert-response>)))
  "Returns md5sum for a message object of type '<MongoInsert-response>"
  "bd76635267dc21edfbf37677e5139543")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoInsert-response)))
  "Returns md5sum for a message object of type 'MongoInsert-response"
  "bd76635267dc21edfbf37677e5139543")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoInsert-response>)))
  "Returns full string definition for message of type '<MongoInsert-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoInsert-response)))
  "Returns full string definition for message of type 'MongoInsert-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoInsert-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoInsert-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoInsert-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MongoInsert)))
  'MongoInsert-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MongoInsert)))
  'MongoInsert-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoInsert)))
  "Returns string type for a service object of type '<MongoInsert>"
  "mongodb_store/MongoInsert")