; Auto-generated. Do not edit!


(cl:in-package car_db_manager_msgs-msg)


;//! \htmlinclude car_db_process_recoveryGoal.msg.html

(cl:defclass <car_db_process_recoveryGoal> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass car_db_process_recoveryGoal (<car_db_process_recoveryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <car_db_process_recoveryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'car_db_process_recoveryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_db_manager_msgs-msg:<car_db_process_recoveryGoal> is deprecated: use car_db_manager_msgs-msg:car_db_process_recoveryGoal instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <car_db_process_recoveryGoal>) ostream)
  "Serializes a message object of type '<car_db_process_recoveryGoal>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <car_db_process_recoveryGoal>) istream)
  "Deserializes a message object of type '<car_db_process_recoveryGoal>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<car_db_process_recoveryGoal>)))
  "Returns string type for a message object of type '<car_db_process_recoveryGoal>"
  "car_db_manager_msgs/car_db_process_recoveryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'car_db_process_recoveryGoal)))
  "Returns string type for a message object of type 'car_db_process_recoveryGoal"
  "car_db_manager_msgs/car_db_process_recoveryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<car_db_process_recoveryGoal>)))
  "Returns md5sum for a message object of type '<car_db_process_recoveryGoal>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'car_db_process_recoveryGoal)))
  "Returns md5sum for a message object of type 'car_db_process_recoveryGoal"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<car_db_process_recoveryGoal>)))
  "Returns full string definition for message of type '<car_db_process_recoveryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'car_db_process_recoveryGoal)))
  "Returns full string definition for message of type 'car_db_process_recoveryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <car_db_process_recoveryGoal>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <car_db_process_recoveryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'car_db_process_recoveryGoal
))