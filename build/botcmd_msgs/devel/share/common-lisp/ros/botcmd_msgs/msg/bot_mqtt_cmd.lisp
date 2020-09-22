; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-msg)


;//! \htmlinclude bot_mqtt_cmd.msg.html

(cl:defclass <bot_mqtt_cmd> (roslisp-msg-protocol:ros-message)
  ((robot_ID
    :reader robot_ID
    :initarg :robot_ID
    :type cl:string
    :initform "")
   (bState
    :reader bState
    :initarg :bState
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bot_mqtt_cmd (<bot_mqtt_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_mqtt_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_mqtt_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-msg:<bot_mqtt_cmd> is deprecated: use botcmd_msgs-msg:bot_mqtt_cmd instead.")))

(cl:ensure-generic-function 'robot_ID-val :lambda-list '(m))
(cl:defmethod robot_ID-val ((m <bot_mqtt_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:robot_ID-val is deprecated.  Use botcmd_msgs-msg:robot_ID instead.")
  (robot_ID m))

(cl:ensure-generic-function 'bState-val :lambda-list '(m))
(cl:defmethod bState-val ((m <bot_mqtt_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:bState-val is deprecated.  Use botcmd_msgs-msg:bState instead.")
  (bState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_mqtt_cmd>) ostream)
  "Serializes a message object of type '<bot_mqtt_cmd>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_ID))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bState) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_mqtt_cmd>) istream)
  "Deserializes a message object of type '<bot_mqtt_cmd>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_ID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_ID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'bState) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_mqtt_cmd>)))
  "Returns string type for a message object of type '<bot_mqtt_cmd>"
  "botcmd_msgs/bot_mqtt_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_mqtt_cmd)))
  "Returns string type for a message object of type 'bot_mqtt_cmd"
  "botcmd_msgs/bot_mqtt_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_mqtt_cmd>)))
  "Returns md5sum for a message object of type '<bot_mqtt_cmd>"
  "ea01a6f206d81ac77784145d2af0f688")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_mqtt_cmd)))
  "Returns md5sum for a message object of type 'bot_mqtt_cmd"
  "ea01a6f206d81ac77784145d2af0f688")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_mqtt_cmd>)))
  "Returns full string definition for message of type '<bot_mqtt_cmd>"
  (cl:format cl:nil "string robot_ID~%bool   bState	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_mqtt_cmd)))
  "Returns full string definition for message of type 'bot_mqtt_cmd"
  (cl:format cl:nil "string robot_ID~%bool   bState	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_mqtt_cmd>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_ID))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_mqtt_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_mqtt_cmd
    (cl:cons ':robot_ID (robot_ID msg))
    (cl:cons ':bState (bState msg))
))
