; Auto-generated. Do not edit!


(cl:in-package tug_example_msgs-msg)


;//! \htmlinclude TransportBoxGoal.msg.html

(cl:defclass <TransportBoxGoal> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TransportBoxGoal (<TransportBoxGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransportBoxGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransportBoxGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tug_example_msgs-msg:<TransportBoxGoal> is deprecated: use tug_example_msgs-msg:TransportBoxGoal instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransportBoxGoal>) ostream)
  "Serializes a message object of type '<TransportBoxGoal>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransportBoxGoal>) istream)
  "Deserializes a message object of type '<TransportBoxGoal>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransportBoxGoal>)))
  "Returns string type for a message object of type '<TransportBoxGoal>"
  "tug_example_msgs/TransportBoxGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransportBoxGoal)))
  "Returns string type for a message object of type 'TransportBoxGoal"
  "tug_example_msgs/TransportBoxGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransportBoxGoal>)))
  "Returns md5sum for a message object of type '<TransportBoxGoal>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransportBoxGoal)))
  "Returns md5sum for a message object of type 'TransportBoxGoal"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransportBoxGoal>)))
  "Returns full string definition for message of type '<TransportBoxGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransportBoxGoal)))
  "Returns full string definition for message of type 'TransportBoxGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransportBoxGoal>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransportBoxGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TransportBoxGoal
))
