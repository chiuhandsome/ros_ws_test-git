; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude undock_to_recoveryGoal.msg.html

(cl:defclass <undock_to_recoveryGoal> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass undock_to_recoveryGoal (<undock_to_recoveryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <undock_to_recoveryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'undock_to_recoveryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<undock_to_recoveryGoal> is deprecated: use robot_scheduling_msgs-msg:undock_to_recoveryGoal instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <undock_to_recoveryGoal>) ostream)
  "Serializes a message object of type '<undock_to_recoveryGoal>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <undock_to_recoveryGoal>) istream)
  "Deserializes a message object of type '<undock_to_recoveryGoal>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<undock_to_recoveryGoal>)))
  "Returns string type for a message object of type '<undock_to_recoveryGoal>"
  "robot_scheduling_msgs/undock_to_recoveryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'undock_to_recoveryGoal)))
  "Returns string type for a message object of type 'undock_to_recoveryGoal"
  "robot_scheduling_msgs/undock_to_recoveryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<undock_to_recoveryGoal>)))
  "Returns md5sum for a message object of type '<undock_to_recoveryGoal>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'undock_to_recoveryGoal)))
  "Returns md5sum for a message object of type 'undock_to_recoveryGoal"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<undock_to_recoveryGoal>)))
  "Returns full string definition for message of type '<undock_to_recoveryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'undock_to_recoveryGoal)))
  "Returns full string definition for message of type 'undock_to_recoveryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <undock_to_recoveryGoal>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <undock_to_recoveryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'undock_to_recoveryGoal
))