; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude pose_move_to_recoveryResult.msg.html

(cl:defclass <pose_move_to_recoveryResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass pose_move_to_recoveryResult (<pose_move_to_recoveryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_move_to_recoveryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_move_to_recoveryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<pose_move_to_recoveryResult> is deprecated: use robot_scheduling_msgs-msg:pose_move_to_recoveryResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <pose_move_to_recoveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:result-val is deprecated.  Use robot_scheduling_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<pose_move_to_recoveryResult>)))
    "Constants for message type '<pose_move_to_recoveryResult>"
  '((:OK . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'pose_move_to_recoveryResult)))
    "Constants for message type 'pose_move_to_recoveryResult"
  '((:OK . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_move_to_recoveryResult>) ostream)
  "Serializes a message object of type '<pose_move_to_recoveryResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_move_to_recoveryResult>) istream)
  "Deserializes a message object of type '<pose_move_to_recoveryResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_move_to_recoveryResult>)))
  "Returns string type for a message object of type '<pose_move_to_recoveryResult>"
  "robot_scheduling_msgs/pose_move_to_recoveryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_move_to_recoveryResult)))
  "Returns string type for a message object of type 'pose_move_to_recoveryResult"
  "robot_scheduling_msgs/pose_move_to_recoveryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_move_to_recoveryResult>)))
  "Returns md5sum for a message object of type '<pose_move_to_recoveryResult>"
  "80ace2ee7a7a5f70a61ef08433d7d2ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_move_to_recoveryResult)))
  "Returns md5sum for a message object of type 'pose_move_to_recoveryResult"
  "80ace2ee7a7a5f70a61ef08433d7d2ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_move_to_recoveryResult>)))
  "Returns full string definition for message of type '<pose_move_to_recoveryResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_move_to_recoveryResult)))
  "Returns full string definition for message of type 'pose_move_to_recoveryResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_move_to_recoveryResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_move_to_recoveryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_move_to_recoveryResult
    (cl:cons ':result (result msg))
))
