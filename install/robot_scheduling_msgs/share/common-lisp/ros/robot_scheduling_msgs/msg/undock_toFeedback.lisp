; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude undock_toFeedback.msg.html

(cl:defclass <undock_toFeedback> (roslisp-msg-protocol:ros-message)
  ((undocked
    :reader undocked
    :initarg :undocked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass undock_toFeedback (<undock_toFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <undock_toFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'undock_toFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<undock_toFeedback> is deprecated: use robot_scheduling_msgs-msg:undock_toFeedback instead.")))

(cl:ensure-generic-function 'undocked-val :lambda-list '(m))
(cl:defmethod undocked-val ((m <undock_toFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:undocked-val is deprecated.  Use robot_scheduling_msgs-msg:undocked instead.")
  (undocked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <undock_toFeedback>) ostream)
  "Serializes a message object of type '<undock_toFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'undocked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <undock_toFeedback>) istream)
  "Deserializes a message object of type '<undock_toFeedback>"
    (cl:setf (cl:slot-value msg 'undocked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<undock_toFeedback>)))
  "Returns string type for a message object of type '<undock_toFeedback>"
  "robot_scheduling_msgs/undock_toFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'undock_toFeedback)))
  "Returns string type for a message object of type 'undock_toFeedback"
  "robot_scheduling_msgs/undock_toFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<undock_toFeedback>)))
  "Returns md5sum for a message object of type '<undock_toFeedback>"
  "26f25fb4c0c6a6805fac81b37bb7b9c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'undock_toFeedback)))
  "Returns md5sum for a message object of type 'undock_toFeedback"
  "26f25fb4c0c6a6805fac81b37bb7b9c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<undock_toFeedback>)))
  "Returns full string definition for message of type '<undock_toFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%bool undocked~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'undock_toFeedback)))
  "Returns full string definition for message of type 'undock_toFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%bool undocked~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <undock_toFeedback>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <undock_toFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'undock_toFeedback
    (cl:cons ':undocked (undocked msg))
))
