; Auto-generated. Do not edit!


(cl:in-package rp_action_msgs-msg)


;//! \htmlinclude TurnResult.msg.html

(cl:defclass <TurnResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass TurnResult (<TurnResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rp_action_msgs-msg:<TurnResult> is deprecated: use rp_action_msgs-msg:TurnResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TurnResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rp_action_msgs-msg:result-val is deprecated.  Use rp_action_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnResult>) ostream)
  "Serializes a message object of type '<TurnResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnResult>) istream)
  "Deserializes a message object of type '<TurnResult>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnResult>)))
  "Returns string type for a message object of type '<TurnResult>"
  "rp_action_msgs/TurnResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnResult)))
  "Returns string type for a message object of type 'TurnResult"
  "rp_action_msgs/TurnResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnResult>)))
  "Returns md5sum for a message object of type '<TurnResult>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnResult)))
  "Returns md5sum for a message object of type 'TurnResult"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnResult>)))
  "Returns full string definition for message of type '<TurnResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnResult)))
  "Returns full string definition for message of type 'TurnResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnResult
    (cl:cons ':result (result msg))
))
