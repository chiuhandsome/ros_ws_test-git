; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude time_waitFeedback.msg.html

(cl:defclass <time_waitFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass time_waitFeedback (<time_waitFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <time_waitFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'time_waitFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<time_waitFeedback> is deprecated: use robot_scheduling_msgs-msg:time_waitFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <time_waitFeedback>) ostream)
  "Serializes a message object of type '<time_waitFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <time_waitFeedback>) istream)
  "Deserializes a message object of type '<time_waitFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<time_waitFeedback>)))
  "Returns string type for a message object of type '<time_waitFeedback>"
  "robot_scheduling_msgs/time_waitFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'time_waitFeedback)))
  "Returns string type for a message object of type 'time_waitFeedback"
  "robot_scheduling_msgs/time_waitFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<time_waitFeedback>)))
  "Returns md5sum for a message object of type '<time_waitFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'time_waitFeedback)))
  "Returns md5sum for a message object of type 'time_waitFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<time_waitFeedback>)))
  "Returns full string definition for message of type '<time_waitFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'time_waitFeedback)))
  "Returns full string definition for message of type 'time_waitFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <time_waitFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <time_waitFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'time_waitFeedback
))