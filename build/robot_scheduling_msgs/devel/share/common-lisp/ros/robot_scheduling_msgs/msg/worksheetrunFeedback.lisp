; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude worksheetrunFeedback.msg.html

(cl:defclass <worksheetrunFeedback> (roslisp-msg-protocol:ros-message)
  ((current_index
    :reader current_index
    :initarg :current_index
    :type cl:fixnum
    :initform 0)
   (current_function
    :reader current_function
    :initarg :current_function
    :type cl:fixnum
    :initform 0))
)

(cl:defclass worksheetrunFeedback (<worksheetrunFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <worksheetrunFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'worksheetrunFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<worksheetrunFeedback> is deprecated: use robot_scheduling_msgs-msg:worksheetrunFeedback instead.")))

(cl:ensure-generic-function 'current_index-val :lambda-list '(m))
(cl:defmethod current_index-val ((m <worksheetrunFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:current_index-val is deprecated.  Use robot_scheduling_msgs-msg:current_index instead.")
  (current_index m))

(cl:ensure-generic-function 'current_function-val :lambda-list '(m))
(cl:defmethod current_function-val ((m <worksheetrunFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:current_function-val is deprecated.  Use robot_scheduling_msgs-msg:current_function instead.")
  (current_function m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <worksheetrunFeedback>) ostream)
  "Serializes a message object of type '<worksheetrunFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_function)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <worksheetrunFeedback>) istream)
  "Deserializes a message object of type '<worksheetrunFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_function)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<worksheetrunFeedback>)))
  "Returns string type for a message object of type '<worksheetrunFeedback>"
  "robot_scheduling_msgs/worksheetrunFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'worksheetrunFeedback)))
  "Returns string type for a message object of type 'worksheetrunFeedback"
  "robot_scheduling_msgs/worksheetrunFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<worksheetrunFeedback>)))
  "Returns md5sum for a message object of type '<worksheetrunFeedback>"
  "1c061f430842d65f8354d802c6aced9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'worksheetrunFeedback)))
  "Returns md5sum for a message object of type 'worksheetrunFeedback"
  "1c061f430842d65f8354d802c6aced9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<worksheetrunFeedback>)))
  "Returns full string definition for message of type '<worksheetrunFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%uint8 current_index~%uint8 current_function~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'worksheetrunFeedback)))
  "Returns full string definition for message of type 'worksheetrunFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%uint8 current_index~%uint8 current_function~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <worksheetrunFeedback>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <worksheetrunFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'worksheetrunFeedback
    (cl:cons ':current_index (current_index msg))
    (cl:cons ':current_function (current_function msg))
))
