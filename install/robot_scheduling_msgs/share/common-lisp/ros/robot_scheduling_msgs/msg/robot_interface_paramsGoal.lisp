; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude robot_interface_paramsGoal.msg.html

(cl:defclass <robot_interface_paramsGoal> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (dtat_type
    :reader dtat_type
    :initarg :dtat_type
    :type cl:fixnum
    :initform 0)
   (set_data
    :reader set_data
    :initarg :set_data
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass robot_interface_paramsGoal (<robot_interface_paramsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_interface_paramsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_interface_paramsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<robot_interface_paramsGoal> is deprecated: use robot_scheduling_msgs-msg:robot_interface_paramsGoal instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <robot_interface_paramsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_type-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'dtat_type-val :lambda-list '(m))
(cl:defmethod dtat_type-val ((m <robot_interface_paramsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:dtat_type-val is deprecated.  Use robot_scheduling_msgs-msg:dtat_type instead.")
  (dtat_type m))

(cl:ensure-generic-function 'set_data-val :lambda-list '(m))
(cl:defmethod set_data-val ((m <robot_interface_paramsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:set_data-val is deprecated.  Use robot_scheduling_msgs-msg:set_data instead.")
  (set_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<robot_interface_paramsGoal>)))
    "Constants for message type '<robot_interface_paramsGoal>"
  '((:GET . 1)
    (:SET . 2)
    (:TARGET_POSE . 1)
    (:STATUS_CODE . 2)
    (:FUNCTION_ID . 3)
    (:PARAMETER . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'robot_interface_paramsGoal)))
    "Constants for message type 'robot_interface_paramsGoal"
  '((:GET . 1)
    (:SET . 2)
    (:TARGET_POSE . 1)
    (:STATUS_CODE . 2)
    (:FUNCTION_ID . 3)
    (:PARAMETER . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_interface_paramsGoal>) ostream)
  "Serializes a message object of type '<robot_interface_paramsGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dtat_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'set_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'set_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_interface_paramsGoal>) istream)
  "Deserializes a message object of type '<robot_interface_paramsGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dtat_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'set_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'set_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_interface_paramsGoal>)))
  "Returns string type for a message object of type '<robot_interface_paramsGoal>"
  "robot_scheduling_msgs/robot_interface_paramsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_interface_paramsGoal)))
  "Returns string type for a message object of type 'robot_interface_paramsGoal"
  "robot_scheduling_msgs/robot_interface_paramsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_interface_paramsGoal>)))
  "Returns md5sum for a message object of type '<robot_interface_paramsGoal>"
  "eeed664b49bae3b13358e0c01a468ef7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_interface_paramsGoal)))
  "Returns md5sum for a message object of type 'robot_interface_paramsGoal"
  "eeed664b49bae3b13358e0c01a468ef7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_interface_paramsGoal>)))
  "Returns full string definition for message of type '<robot_interface_paramsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET=1~%uint8 SET=2~%uint8 cmd_type~%uint8 TARGET_POSE=1~%uint8 STATUS_CODE=2~%uint8 FUNCTION_ID=3~%uint8 PARAMETER=4~%uint8 dtat_type~%string[] set_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_interface_paramsGoal)))
  "Returns full string definition for message of type 'robot_interface_paramsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 GET=1~%uint8 SET=2~%uint8 cmd_type~%uint8 TARGET_POSE=1~%uint8 STATUS_CODE=2~%uint8 FUNCTION_ID=3~%uint8 PARAMETER=4~%uint8 dtat_type~%string[] set_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_interface_paramsGoal>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'set_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_interface_paramsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_interface_paramsGoal
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':dtat_type (dtat_type msg))
    (cl:cons ':set_data (set_data msg))
))
