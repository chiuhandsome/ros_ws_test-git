; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-msg)


;//! \htmlinclude bot_mqtt_rawdata.msg.html

(cl:defclass <bot_mqtt_rawdata> (roslisp-msg-protocol:ros-message)
  ((bImport_sensor
    :reader bImport_sensor
    :initarg :bImport_sensor
    :type cl:boolean
    :initform cl:nil)
   (bexport_sensor
    :reader bexport_sensor
    :initarg :bexport_sensor
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bot_mqtt_rawdata (<bot_mqtt_rawdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_mqtt_rawdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_mqtt_rawdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-msg:<bot_mqtt_rawdata> is deprecated: use botcmd_msgs-msg:bot_mqtt_rawdata instead.")))

(cl:ensure-generic-function 'bImport_sensor-val :lambda-list '(m))
(cl:defmethod bImport_sensor-val ((m <bot_mqtt_rawdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:bImport_sensor-val is deprecated.  Use botcmd_msgs-msg:bImport_sensor instead.")
  (bImport_sensor m))

(cl:ensure-generic-function 'bexport_sensor-val :lambda-list '(m))
(cl:defmethod bexport_sensor-val ((m <bot_mqtt_rawdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:bexport_sensor-val is deprecated.  Use botcmd_msgs-msg:bexport_sensor instead.")
  (bexport_sensor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_mqtt_rawdata>) ostream)
  "Serializes a message object of type '<bot_mqtt_rawdata>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bImport_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bexport_sensor) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_mqtt_rawdata>) istream)
  "Deserializes a message object of type '<bot_mqtt_rawdata>"
    (cl:setf (cl:slot-value msg 'bImport_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bexport_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_mqtt_rawdata>)))
  "Returns string type for a message object of type '<bot_mqtt_rawdata>"
  "botcmd_msgs/bot_mqtt_rawdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_mqtt_rawdata)))
  "Returns string type for a message object of type 'bot_mqtt_rawdata"
  "botcmd_msgs/bot_mqtt_rawdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_mqtt_rawdata>)))
  "Returns md5sum for a message object of type '<bot_mqtt_rawdata>"
  "3eaab3f40118d8034a925c7b353f23c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_mqtt_rawdata)))
  "Returns md5sum for a message object of type 'bot_mqtt_rawdata"
  "3eaab3f40118d8034a925c7b353f23c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_mqtt_rawdata>)))
  "Returns full string definition for message of type '<bot_mqtt_rawdata>"
  (cl:format cl:nil "bool   bImport_sensor~%bool   bexport_sensor	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_mqtt_rawdata)))
  "Returns full string definition for message of type 'bot_mqtt_rawdata"
  (cl:format cl:nil "bool   bImport_sensor~%bool   bexport_sensor	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_mqtt_rawdata>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_mqtt_rawdata>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_mqtt_rawdata
    (cl:cons ':bImport_sensor (bImport_sensor msg))
    (cl:cons ':bexport_sensor (bexport_sensor msg))
))
