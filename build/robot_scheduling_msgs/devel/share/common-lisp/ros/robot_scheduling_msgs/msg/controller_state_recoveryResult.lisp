; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude controller_state_recoveryResult.msg.html

(cl:defclass <controller_state_recoveryResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass controller_state_recoveryResult (<controller_state_recoveryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controller_state_recoveryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controller_state_recoveryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<controller_state_recoveryResult> is deprecated: use robot_scheduling_msgs-msg:controller_state_recoveryResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <controller_state_recoveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:result-val is deprecated.  Use robot_scheduling_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<controller_state_recoveryResult>)))
    "Constants for message type '<controller_state_recoveryResult>"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'controller_state_recoveryResult)))
    "Constants for message type 'controller_state_recoveryResult"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controller_state_recoveryResult>) ostream)
  "Serializes a message object of type '<controller_state_recoveryResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controller_state_recoveryResult>) istream)
  "Deserializes a message object of type '<controller_state_recoveryResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controller_state_recoveryResult>)))
  "Returns string type for a message object of type '<controller_state_recoveryResult>"
  "robot_scheduling_msgs/controller_state_recoveryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controller_state_recoveryResult)))
  "Returns string type for a message object of type 'controller_state_recoveryResult"
  "robot_scheduling_msgs/controller_state_recoveryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controller_state_recoveryResult>)))
  "Returns md5sum for a message object of type '<controller_state_recoveryResult>"
  "661439f3e162764048db23b87480599a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controller_state_recoveryResult)))
  "Returns md5sum for a message object of type 'controller_state_recoveryResult"
  "661439f3e162764048db23b87480599a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controller_state_recoveryResult>)))
  "Returns full string definition for message of type '<controller_state_recoveryResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controller_state_recoveryResult)))
  "Returns full string definition for message of type 'controller_state_recoveryResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controller_state_recoveryResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controller_state_recoveryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'controller_state_recoveryResult
    (cl:cons ':result (result msg))
))