; Auto-generated. Do not edit!


(cl:in-package tug_example_msgs-msg)


;//! \htmlinclude FetchBoxFeedback.msg.html

(cl:defclass <FetchBoxFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FetchBoxFeedback (<FetchBoxFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FetchBoxFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FetchBoxFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tug_example_msgs-msg:<FetchBoxFeedback> is deprecated: use tug_example_msgs-msg:FetchBoxFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FetchBoxFeedback>) ostream)
  "Serializes a message object of type '<FetchBoxFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FetchBoxFeedback>) istream)
  "Deserializes a message object of type '<FetchBoxFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FetchBoxFeedback>)))
  "Returns string type for a message object of type '<FetchBoxFeedback>"
  "tug_example_msgs/FetchBoxFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FetchBoxFeedback)))
  "Returns string type for a message object of type 'FetchBoxFeedback"
  "tug_example_msgs/FetchBoxFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FetchBoxFeedback>)))
  "Returns md5sum for a message object of type '<FetchBoxFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FetchBoxFeedback)))
  "Returns md5sum for a message object of type 'FetchBoxFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FetchBoxFeedback>)))
  "Returns full string definition for message of type '<FetchBoxFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FetchBoxFeedback)))
  "Returns full string definition for message of type 'FetchBoxFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FetchBoxFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FetchBoxFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'FetchBoxFeedback
))