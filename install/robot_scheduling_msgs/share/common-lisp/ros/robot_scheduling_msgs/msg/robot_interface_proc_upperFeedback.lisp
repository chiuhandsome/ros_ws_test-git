; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude robot_interface_proc_upperFeedback.msg.html

(cl:defclass <robot_interface_proc_upperFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass robot_interface_proc_upperFeedback (<robot_interface_proc_upperFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_interface_proc_upperFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_interface_proc_upperFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<robot_interface_proc_upperFeedback> is deprecated: use robot_scheduling_msgs-msg:robot_interface_proc_upperFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_interface_proc_upperFeedback>) ostream)
  "Serializes a message object of type '<robot_interface_proc_upperFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_interface_proc_upperFeedback>) istream)
  "Deserializes a message object of type '<robot_interface_proc_upperFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_interface_proc_upperFeedback>)))
  "Returns string type for a message object of type '<robot_interface_proc_upperFeedback>"
  "robot_scheduling_msgs/robot_interface_proc_upperFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_interface_proc_upperFeedback)))
  "Returns string type for a message object of type 'robot_interface_proc_upperFeedback"
  "robot_scheduling_msgs/robot_interface_proc_upperFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_interface_proc_upperFeedback>)))
  "Returns md5sum for a message object of type '<robot_interface_proc_upperFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_interface_proc_upperFeedback)))
  "Returns md5sum for a message object of type 'robot_interface_proc_upperFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_interface_proc_upperFeedback>)))
  "Returns full string definition for message of type '<robot_interface_proc_upperFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_interface_proc_upperFeedback)))
  "Returns full string definition for message of type 'robot_interface_proc_upperFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_interface_proc_upperFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_interface_proc_upperFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_interface_proc_upperFeedback
))
