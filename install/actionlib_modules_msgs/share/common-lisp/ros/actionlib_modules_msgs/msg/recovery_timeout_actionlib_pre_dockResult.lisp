; Auto-generated. Do not edit!


(cl:in-package actionlib_modules_msgs-msg)


;//! \htmlinclude recovery_timeout_actionlib_pre_dockResult.msg.html

(cl:defclass <recovery_timeout_actionlib_pre_dockResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass recovery_timeout_actionlib_pre_dockResult (<recovery_timeout_actionlib_pre_dockResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <recovery_timeout_actionlib_pre_dockResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'recovery_timeout_actionlib_pre_dockResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_modules_msgs-msg:<recovery_timeout_actionlib_pre_dockResult> is deprecated: use actionlib_modules_msgs-msg:recovery_timeout_actionlib_pre_dockResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <recovery_timeout_actionlib_pre_dockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:result-val is deprecated.  Use actionlib_modules_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<recovery_timeout_actionlib_pre_dockResult>)))
    "Constants for message type '<recovery_timeout_actionlib_pre_dockResult>"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'recovery_timeout_actionlib_pre_dockResult)))
    "Constants for message type 'recovery_timeout_actionlib_pre_dockResult"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <recovery_timeout_actionlib_pre_dockResult>) ostream)
  "Serializes a message object of type '<recovery_timeout_actionlib_pre_dockResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <recovery_timeout_actionlib_pre_dockResult>) istream)
  "Deserializes a message object of type '<recovery_timeout_actionlib_pre_dockResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<recovery_timeout_actionlib_pre_dockResult>)))
  "Returns string type for a message object of type '<recovery_timeout_actionlib_pre_dockResult>"
  "actionlib_modules_msgs/recovery_timeout_actionlib_pre_dockResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'recovery_timeout_actionlib_pre_dockResult)))
  "Returns string type for a message object of type 'recovery_timeout_actionlib_pre_dockResult"
  "actionlib_modules_msgs/recovery_timeout_actionlib_pre_dockResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<recovery_timeout_actionlib_pre_dockResult>)))
  "Returns md5sum for a message object of type '<recovery_timeout_actionlib_pre_dockResult>"
  "48ef0064dea033d8c1bd353364c055a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'recovery_timeout_actionlib_pre_dockResult)))
  "Returns md5sum for a message object of type 'recovery_timeout_actionlib_pre_dockResult"
  "48ef0064dea033d8c1bd353364c055a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<recovery_timeout_actionlib_pre_dockResult>)))
  "Returns full string definition for message of type '<recovery_timeout_actionlib_pre_dockResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'recovery_timeout_actionlib_pre_dockResult)))
  "Returns full string definition for message of type 'recovery_timeout_actionlib_pre_dockResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <recovery_timeout_actionlib_pre_dockResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <recovery_timeout_actionlib_pre_dockResult>))
  "Converts a ROS message object to a list"
  (cl:list 'recovery_timeout_actionlib_pre_dockResult
    (cl:cons ':result (result msg))
))
