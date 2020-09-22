; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-msg)


;//! \htmlinclude SerialisedMessage.msg.html

(cl:defclass <SerialisedMessage> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SerialisedMessage (<SerialisedMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialisedMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialisedMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-msg:<SerialisedMessage> is deprecated: use mongodb_store_msgs-msg:SerialisedMessage instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SerialisedMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:type-val is deprecated.  Use mongodb_store_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SerialisedMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:msg-val is deprecated.  Use mongodb_store_msgs-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialisedMessage>) ostream)
  "Serializes a message object of type '<SerialisedMessage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialisedMessage>) istream)
  "Deserializes a message object of type '<SerialisedMessage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'msg) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'msg)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialisedMessage>)))
  "Returns string type for a message object of type '<SerialisedMessage>"
  "mongodb_store_msgs/SerialisedMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialisedMessage)))
  "Returns string type for a message object of type 'SerialisedMessage"
  "mongodb_store_msgs/SerialisedMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialisedMessage>)))
  "Returns md5sum for a message object of type '<SerialisedMessage>"
  "42f77e70b6ff70f99d1597d836874cfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialisedMessage)))
  "Returns md5sum for a message object of type 'SerialisedMessage"
  "42f77e70b6ff70f99d1597d836874cfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialisedMessage>)))
  "Returns full string definition for message of type '<SerialisedMessage>"
  (cl:format cl:nil "# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialisedMessage)))
  "Returns full string definition for message of type 'SerialisedMessage"
  (cl:format cl:nil "# type to of the serialised message~%string type~%# the serialised message~%uint8[] msg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialisedMessage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'msg) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialisedMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialisedMessage
    (cl:cons ':type (type msg))
    (cl:cons ':msg (msg msg))
))
