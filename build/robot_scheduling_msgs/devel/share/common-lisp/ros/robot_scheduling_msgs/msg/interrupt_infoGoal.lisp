; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude interrupt_infoGoal.msg.html

(cl:defclass <interrupt_infoGoal> (roslisp-msg-protocol:ros-message)
  ((interrupt_info
    :reader interrupt_info
    :initarg :interrupt_info
    :type cl:string
    :initform ""))
)

(cl:defclass interrupt_infoGoal (<interrupt_infoGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <interrupt_infoGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'interrupt_infoGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<interrupt_infoGoal> is deprecated: use robot_scheduling_msgs-msg:interrupt_infoGoal instead.")))

(cl:ensure-generic-function 'interrupt_info-val :lambda-list '(m))
(cl:defmethod interrupt_info-val ((m <interrupt_infoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:interrupt_info-val is deprecated.  Use robot_scheduling_msgs-msg:interrupt_info instead.")
  (interrupt_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <interrupt_infoGoal>) ostream)
  "Serializes a message object of type '<interrupt_infoGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'interrupt_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'interrupt_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <interrupt_infoGoal>) istream)
  "Deserializes a message object of type '<interrupt_infoGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interrupt_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'interrupt_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<interrupt_infoGoal>)))
  "Returns string type for a message object of type '<interrupt_infoGoal>"
  "robot_scheduling_msgs/interrupt_infoGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'interrupt_infoGoal)))
  "Returns string type for a message object of type 'interrupt_infoGoal"
  "robot_scheduling_msgs/interrupt_infoGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<interrupt_infoGoal>)))
  "Returns md5sum for a message object of type '<interrupt_infoGoal>"
  "3bcf35c99b3a04976b9f99020c3728ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'interrupt_infoGoal)))
  "Returns md5sum for a message object of type 'interrupt_infoGoal"
  "3bcf35c99b3a04976b9f99020c3728ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<interrupt_infoGoal>)))
  "Returns full string definition for message of type '<interrupt_infoGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string interrupt_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'interrupt_infoGoal)))
  "Returns full string definition for message of type 'interrupt_infoGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string interrupt_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <interrupt_infoGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'interrupt_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <interrupt_infoGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'interrupt_infoGoal
    (cl:cons ':interrupt_info (interrupt_info msg))
))
