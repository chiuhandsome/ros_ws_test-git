; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-srv)


;//! \htmlinclude MongoDeleteMsg-request.msg.html

(cl:defclass <MongoDeleteMsg-request> (roslisp-msg-protocol:ros-message)
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
   (document_id
    :reader document_id
    :initarg :document_id
    :type cl:string
    :initform ""))
)

(cl:defclass MongoDeleteMsg-request (<MongoDeleteMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoDeleteMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoDeleteMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-srv:<MongoDeleteMsg-request> is deprecated: use mongodb_store_msgs-srv:MongoDeleteMsg-request instead.")))

(cl:ensure-generic-function 'database-val :lambda-list '(m))
(cl:defmethod database-val ((m <MongoDeleteMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:database-val is deprecated.  Use mongodb_store_msgs-srv:database instead.")
  (database m))

(cl:ensure-generic-function 'collection-val :lambda-list '(m))
(cl:defmethod collection-val ((m <MongoDeleteMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:collection-val is deprecated.  Use mongodb_store_msgs-srv:collection instead.")
  (collection m))

(cl:ensure-generic-function 'document_id-val :lambda-list '(m))
(cl:defmethod document_id-val ((m <MongoDeleteMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:document_id-val is deprecated.  Use mongodb_store_msgs-srv:document_id instead.")
  (document_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoDeleteMsg-request>) ostream)
  "Serializes a message object of type '<MongoDeleteMsg-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'document_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'document_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoDeleteMsg-request>) istream)
  "Deserializes a message object of type '<MongoDeleteMsg-request>"
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
      (cl:setf (cl:slot-value msg 'document_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'document_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoDeleteMsg-request>)))
  "Returns string type for a service object of type '<MongoDeleteMsg-request>"
  "mongodb_store_msgs/MongoDeleteMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoDeleteMsg-request)))
  "Returns string type for a service object of type 'MongoDeleteMsg-request"
  "mongodb_store_msgs/MongoDeleteMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoDeleteMsg-request>)))
  "Returns md5sum for a message object of type '<MongoDeleteMsg-request>"
  "539ecd40e2a1f10c047a4c404ebe139f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoDeleteMsg-request)))
  "Returns md5sum for a message object of type 'MongoDeleteMsg-request"
  "539ecd40e2a1f10c047a4c404ebe139f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoDeleteMsg-request>)))
  "Returns full string definition for message of type '<MongoDeleteMsg-request>"
  (cl:format cl:nil "string database~%string collection~%string document_id ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoDeleteMsg-request)))
  "Returns full string definition for message of type 'MongoDeleteMsg-request"
  (cl:format cl:nil "string database~%string collection~%string document_id ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoDeleteMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'database))
     4 (cl:length (cl:slot-value msg 'collection))
     4 (cl:length (cl:slot-value msg 'document_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoDeleteMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoDeleteMsg-request
    (cl:cons ':database (database msg))
    (cl:cons ':collection (collection msg))
    (cl:cons ':document_id (document_id msg))
))
;//! \htmlinclude MongoDeleteMsg-response.msg.html

(cl:defclass <MongoDeleteMsg-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MongoDeleteMsg-response (<MongoDeleteMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MongoDeleteMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MongoDeleteMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-srv:<MongoDeleteMsg-response> is deprecated: use mongodb_store_msgs-srv:MongoDeleteMsg-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MongoDeleteMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-srv:success-val is deprecated.  Use mongodb_store_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MongoDeleteMsg-response>) ostream)
  "Serializes a message object of type '<MongoDeleteMsg-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MongoDeleteMsg-response>) istream)
  "Deserializes a message object of type '<MongoDeleteMsg-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MongoDeleteMsg-response>)))
  "Returns string type for a service object of type '<MongoDeleteMsg-response>"
  "mongodb_store_msgs/MongoDeleteMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoDeleteMsg-response)))
  "Returns string type for a service object of type 'MongoDeleteMsg-response"
  "mongodb_store_msgs/MongoDeleteMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MongoDeleteMsg-response>)))
  "Returns md5sum for a message object of type '<MongoDeleteMsg-response>"
  "539ecd40e2a1f10c047a4c404ebe139f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MongoDeleteMsg-response)))
  "Returns md5sum for a message object of type 'MongoDeleteMsg-response"
  "539ecd40e2a1f10c047a4c404ebe139f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MongoDeleteMsg-response>)))
  "Returns full string definition for message of type '<MongoDeleteMsg-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MongoDeleteMsg-response)))
  "Returns full string definition for message of type 'MongoDeleteMsg-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MongoDeleteMsg-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MongoDeleteMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MongoDeleteMsg-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MongoDeleteMsg)))
  'MongoDeleteMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MongoDeleteMsg)))
  'MongoDeleteMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MongoDeleteMsg)))
  "Returns string type for a service object of type '<MongoDeleteMsg>"
  "mongodb_store_msgs/MongoDeleteMsg")