; Auto-generated. Do not edit!


(cl:in-package actionlib_modules_msgs-msg)


;//! \htmlinclude ctrl_system_stateFeedback.msg.html

(cl:defclass <ctrl_system_stateFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ctrl_system_stateFeedback (<ctrl_system_stateFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ctrl_system_stateFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ctrl_system_stateFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_modules_msgs-msg:<ctrl_system_stateFeedback> is deprecated: use actionlib_modules_msgs-msg:ctrl_system_stateFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ctrl_system_stateFeedback>) ostream)
  "Serializes a message object of type '<ctrl_system_stateFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ctrl_system_stateFeedback>) istream)
  "Deserializes a message object of type '<ctrl_system_stateFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ctrl_system_stateFeedback>)))
  "Returns string type for a message object of type '<ctrl_system_stateFeedback>"
  "actionlib_modules_msgs/ctrl_system_stateFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ctrl_system_stateFeedback)))
  "Returns string type for a message object of type 'ctrl_system_stateFeedback"
  "actionlib_modules_msgs/ctrl_system_stateFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ctrl_system_stateFeedback>)))
  "Returns md5sum for a message object of type '<ctrl_system_stateFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ctrl_system_stateFeedback)))
  "Returns md5sum for a message object of type 'ctrl_system_stateFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ctrl_system_stateFeedback>)))
  "Returns full string definition for message of type '<ctrl_system_stateFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ctrl_system_stateFeedback)))
  "Returns full string definition for message of type 'ctrl_system_stateFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ctrl_system_stateFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ctrl_system_stateFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ctrl_system_stateFeedback
))
