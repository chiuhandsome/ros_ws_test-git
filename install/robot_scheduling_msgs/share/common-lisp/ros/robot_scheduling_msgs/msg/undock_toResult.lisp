; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude undock_toResult.msg.html

(cl:defclass <undock_toResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass undock_toResult (<undock_toResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <undock_toResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'undock_toResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<undock_toResult> is deprecated: use robot_scheduling_msgs-msg:undock_toResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <undock_toResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:result-val is deprecated.  Use robot_scheduling_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<undock_toResult>)))
    "Constants for message type '<undock_toResult>"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4)
    (:NOT_PREUNDOCK_ID . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'undock_toResult)))
    "Constants for message type 'undock_toResult"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4)
    (:NOT_PREUNDOCK_ID . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <undock_toResult>) ostream)
  "Serializes a message object of type '<undock_toResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <undock_toResult>) istream)
  "Deserializes a message object of type '<undock_toResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<undock_toResult>)))
  "Returns string type for a message object of type '<undock_toResult>"
  "robot_scheduling_msgs/undock_toResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'undock_toResult)))
  "Returns string type for a message object of type 'undock_toResult"
  "robot_scheduling_msgs/undock_toResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<undock_toResult>)))
  "Returns md5sum for a message object of type '<undock_toResult>"
  "f511a7ebe251caa291ef80387165ed20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'undock_toResult)))
  "Returns md5sum for a message object of type 'undock_toResult"
  "f511a7ebe251caa291ef80387165ed20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<undock_toResult>)))
  "Returns full string definition for message of type '<undock_toResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 NOT_PREUNDOCK_ID=5~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'undock_toResult)))
  "Returns full string definition for message of type 'undock_toResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 NOT_PREUNDOCK_ID=5~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <undock_toResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <undock_toResult>))
  "Converts a ROS message object to a list"
  (cl:list 'undock_toResult
    (cl:cons ':result (result msg))
))