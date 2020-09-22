; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-srv)


;//! \htmlinclude bot_device_cmd-request.msg.html

(cl:defclass <bot_device_cmd-request> (roslisp-msg-protocol:ros-message)
  ((dev_num
    :reader dev_num
    :initarg :dev_num
    :type cl:fixnum
    :initform 0)
   (devic_ID
    :reader devic_ID
    :initarg :devic_ID
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (bActive
    :reader bActive
    :initarg :bActive
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass bot_device_cmd-request (<bot_device_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_device_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_device_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_device_cmd-request> is deprecated: use botcmd_msgs-srv:bot_device_cmd-request instead.")))

(cl:ensure-generic-function 'dev_num-val :lambda-list '(m))
(cl:defmethod dev_num-val ((m <bot_device_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:dev_num-val is deprecated.  Use botcmd_msgs-srv:dev_num instead.")
  (dev_num m))

(cl:ensure-generic-function 'devic_ID-val :lambda-list '(m))
(cl:defmethod devic_ID-val ((m <bot_device_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:devic_ID-val is deprecated.  Use botcmd_msgs-srv:devic_ID instead.")
  (devic_ID m))

(cl:ensure-generic-function 'bActive-val :lambda-list '(m))
(cl:defmethod bActive-val ((m <bot_device_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:bActive-val is deprecated.  Use botcmd_msgs-srv:bActive instead.")
  (bActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_device_cmd-request>) ostream)
  "Serializes a message object of type '<bot_device_cmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'dev_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'devic_ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'devic_ID))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bActive))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'bActive))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_device_cmd-request>) istream)
  "Deserializes a message object of type '<bot_device_cmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dev_num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'devic_ID) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'devic_ID)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bActive) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bActive)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_device_cmd-request>)))
  "Returns string type for a service object of type '<bot_device_cmd-request>"
  "botcmd_msgs/bot_device_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_device_cmd-request)))
  "Returns string type for a service object of type 'bot_device_cmd-request"
  "botcmd_msgs/bot_device_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_device_cmd-request>)))
  "Returns md5sum for a message object of type '<bot_device_cmd-request>"
  "17e1a131c7d1450e63bc762f11e32314")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_device_cmd-request)))
  "Returns md5sum for a message object of type 'bot_device_cmd-request"
  "17e1a131c7d1450e63bc762f11e32314")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_device_cmd-request>)))
  "Returns full string definition for message of type '<bot_device_cmd-request>"
  (cl:format cl:nil "int8   dev_num~%int8[] devic_ID~%bool[] bActive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_device_cmd-request)))
  "Returns full string definition for message of type 'bot_device_cmd-request"
  (cl:format cl:nil "int8   dev_num~%int8[] devic_ID~%bool[] bActive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_device_cmd-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'devic_ID) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bActive) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_device_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_device_cmd-request
    (cl:cons ':dev_num (dev_num msg))
    (cl:cons ':devic_ID (devic_ID msg))
    (cl:cons ':bActive (bActive msg))
))
;//! \htmlinclude bot_device_cmd-response.msg.html

(cl:defclass <bot_device_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bot_device_cmd-response (<bot_device_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_device_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_device_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-srv:<bot_device_cmd-response> is deprecated: use botcmd_msgs-srv:bot_device_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_device_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-srv:result-val is deprecated.  Use botcmd_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_device_cmd-response>) ostream)
  "Serializes a message object of type '<bot_device_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_device_cmd-response>) istream)
  "Deserializes a message object of type '<bot_device_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_device_cmd-response>)))
  "Returns string type for a service object of type '<bot_device_cmd-response>"
  "botcmd_msgs/bot_device_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_device_cmd-response)))
  "Returns string type for a service object of type 'bot_device_cmd-response"
  "botcmd_msgs/bot_device_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_device_cmd-response>)))
  "Returns md5sum for a message object of type '<bot_device_cmd-response>"
  "17e1a131c7d1450e63bc762f11e32314")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_device_cmd-response)))
  "Returns md5sum for a message object of type 'bot_device_cmd-response"
  "17e1a131c7d1450e63bc762f11e32314")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_device_cmd-response>)))
  "Returns full string definition for message of type '<bot_device_cmd-response>"
  (cl:format cl:nil "bool result~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_device_cmd-response)))
  "Returns full string definition for message of type 'bot_device_cmd-response"
  (cl:format cl:nil "bool result~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_device_cmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_device_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_device_cmd-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'bot_device_cmd)))
  'bot_device_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'bot_device_cmd)))
  'bot_device_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_device_cmd)))
  "Returns string type for a service object of type '<bot_device_cmd>"
  "botcmd_msgs/bot_device_cmd")