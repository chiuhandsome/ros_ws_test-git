; Auto-generated. Do not edit!


(cl:in-package tug_example_msgs-msg)


;//! \htmlinclude TransportBoxFeedback.msg.html

(cl:defclass <TransportBoxFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TransportBoxFeedback (<TransportBoxFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransportBoxFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransportBoxFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tug_example_msgs-msg:<TransportBoxFeedback> is deprecated: use tug_example_msgs-msg:TransportBoxFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransportBoxFeedback>) ostream)
  "Serializes a message object of type '<TransportBoxFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransportBoxFeedback>) istream)
  "Deserializes a message object of type '<TransportBoxFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransportBoxFeedback>)))
  "Returns string type for a message object of type '<TransportBoxFeedback>"
  "tug_example_msgs/TransportBoxFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransportBoxFeedback)))
  "Returns string type for a message object of type 'TransportBoxFeedback"
  "tug_example_msgs/TransportBoxFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransportBoxFeedback>)))
  "Returns md5sum for a message object of type '<TransportBoxFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransportBoxFeedback)))
  "Returns md5sum for a message object of type 'TransportBoxFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransportBoxFeedback>)))
  "Returns full string definition for message of type '<TransportBoxFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransportBoxFeedback)))
  "Returns full string definition for message of type 'TransportBoxFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransportBoxFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransportBoxFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TransportBoxFeedback
))
