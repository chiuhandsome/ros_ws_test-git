; Auto-generated. Do not edit!


(cl:in-package tug_example_msgs-msg)


;//! \htmlinclude RecoverTimedOutFeedback.msg.html

(cl:defclass <RecoverTimedOutFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RecoverTimedOutFeedback (<RecoverTimedOutFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecoverTimedOutFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecoverTimedOutFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tug_example_msgs-msg:<RecoverTimedOutFeedback> is deprecated: use tug_example_msgs-msg:RecoverTimedOutFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecoverTimedOutFeedback>) ostream)
  "Serializes a message object of type '<RecoverTimedOutFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecoverTimedOutFeedback>) istream)
  "Deserializes a message object of type '<RecoverTimedOutFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecoverTimedOutFeedback>)))
  "Returns string type for a message object of type '<RecoverTimedOutFeedback>"
  "tug_example_msgs/RecoverTimedOutFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecoverTimedOutFeedback)))
  "Returns string type for a message object of type 'RecoverTimedOutFeedback"
  "tug_example_msgs/RecoverTimedOutFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecoverTimedOutFeedback>)))
  "Returns md5sum for a message object of type '<RecoverTimedOutFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecoverTimedOutFeedback)))
  "Returns md5sum for a message object of type 'RecoverTimedOutFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecoverTimedOutFeedback>)))
  "Returns full string definition for message of type '<RecoverTimedOutFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecoverTimedOutFeedback)))
  "Returns full string definition for message of type 'RecoverTimedOutFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecoverTimedOutFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecoverTimedOutFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'RecoverTimedOutFeedback
))