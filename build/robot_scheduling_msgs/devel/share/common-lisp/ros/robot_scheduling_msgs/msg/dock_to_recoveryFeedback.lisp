; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude dock_to_recoveryFeedback.msg.html

(cl:defclass <dock_to_recoveryFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass dock_to_recoveryFeedback (<dock_to_recoveryFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dock_to_recoveryFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dock_to_recoveryFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<dock_to_recoveryFeedback> is deprecated: use robot_scheduling_msgs-msg:dock_to_recoveryFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dock_to_recoveryFeedback>) ostream)
  "Serializes a message object of type '<dock_to_recoveryFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dock_to_recoveryFeedback>) istream)
  "Deserializes a message object of type '<dock_to_recoveryFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dock_to_recoveryFeedback>)))
  "Returns string type for a message object of type '<dock_to_recoveryFeedback>"
  "robot_scheduling_msgs/dock_to_recoveryFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dock_to_recoveryFeedback)))
  "Returns string type for a message object of type 'dock_to_recoveryFeedback"
  "robot_scheduling_msgs/dock_to_recoveryFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dock_to_recoveryFeedback>)))
  "Returns md5sum for a message object of type '<dock_to_recoveryFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dock_to_recoveryFeedback)))
  "Returns md5sum for a message object of type 'dock_to_recoveryFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dock_to_recoveryFeedback>)))
  "Returns full string definition for message of type '<dock_to_recoveryFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dock_to_recoveryFeedback)))
  "Returns full string definition for message of type 'dock_to_recoveryFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dock_to_recoveryFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dock_to_recoveryFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'dock_to_recoveryFeedback
))