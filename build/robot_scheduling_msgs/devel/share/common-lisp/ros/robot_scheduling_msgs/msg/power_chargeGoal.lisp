; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude power_chargeGoal.msg.html

(cl:defclass <power_chargeGoal> (roslisp-msg-protocol:ros-message)
  ((charge_type
    :reader charge_type
    :initarg :charge_type
    :type cl:fixnum
    :initform 0)
   (charge_id
    :reader charge_id
    :initarg :charge_id
    :type cl:string
    :initform ""))
)

(cl:defclass power_chargeGoal (<power_chargeGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <power_chargeGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'power_chargeGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<power_chargeGoal> is deprecated: use robot_scheduling_msgs-msg:power_chargeGoal instead.")))

(cl:ensure-generic-function 'charge_type-val :lambda-list '(m))
(cl:defmethod charge_type-val ((m <power_chargeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:charge_type-val is deprecated.  Use robot_scheduling_msgs-msg:charge_type instead.")
  (charge_type m))

(cl:ensure-generic-function 'charge_id-val :lambda-list '(m))
(cl:defmethod charge_id-val ((m <power_chargeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:charge_id-val is deprecated.  Use robot_scheduling_msgs-msg:charge_id instead.")
  (charge_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<power_chargeGoal>)))
    "Constants for message type '<power_chargeGoal>"
  '((:CHARGE_IO . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'power_chargeGoal)))
    "Constants for message type 'power_chargeGoal"
  '((:CHARGE_IO . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <power_chargeGoal>) ostream)
  "Serializes a message object of type '<power_chargeGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'charge_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'charge_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <power_chargeGoal>) istream)
  "Deserializes a message object of type '<power_chargeGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'charge_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<power_chargeGoal>)))
  "Returns string type for a message object of type '<power_chargeGoal>"
  "robot_scheduling_msgs/power_chargeGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'power_chargeGoal)))
  "Returns string type for a message object of type 'power_chargeGoal"
  "robot_scheduling_msgs/power_chargeGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<power_chargeGoal>)))
  "Returns md5sum for a message object of type '<power_chargeGoal>"
  "7604456ed04cceb2245c8a19dc8c3af7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'power_chargeGoal)))
  "Returns md5sum for a message object of type 'power_chargeGoal"
  "7604456ed04cceb2245c8a19dc8c3af7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<power_chargeGoal>)))
  "Returns full string definition for message of type '<power_chargeGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 CHARGE_IO=1~%uint8 charge_type~%string charge_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'power_chargeGoal)))
  "Returns full string definition for message of type 'power_chargeGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 CHARGE_IO=1~%uint8 charge_type~%string charge_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <power_chargeGoal>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'charge_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <power_chargeGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'power_chargeGoal
    (cl:cons ':charge_type (charge_type msg))
    (cl:cons ':charge_id (charge_id msg))
))
