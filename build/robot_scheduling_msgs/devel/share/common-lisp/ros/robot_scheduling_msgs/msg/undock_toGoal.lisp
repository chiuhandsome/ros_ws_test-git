; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude undock_toGoal.msg.html

(cl:defclass <undock_toGoal> (roslisp-msg-protocol:ros-message)
  ((undock_id
    :reader undock_id
    :initarg :undock_id
    :type cl:string
    :initform "")
   (pre_undock_id
    :reader pre_undock_id
    :initarg :pre_undock_id
    :type cl:string
    :initform "")
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (undock_ac_name
    :reader undock_ac_name
    :initarg :undock_ac_name
    :type cl:string
    :initform ""))
)

(cl:defclass undock_toGoal (<undock_toGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <undock_toGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'undock_toGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<undock_toGoal> is deprecated: use robot_scheduling_msgs-msg:undock_toGoal instead.")))

(cl:ensure-generic-function 'undock_id-val :lambda-list '(m))
(cl:defmethod undock_id-val ((m <undock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:undock_id-val is deprecated.  Use robot_scheduling_msgs-msg:undock_id instead.")
  (undock_id m))

(cl:ensure-generic-function 'pre_undock_id-val :lambda-list '(m))
(cl:defmethod pre_undock_id-val ((m <undock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:pre_undock_id-val is deprecated.  Use robot_scheduling_msgs-msg:pre_undock_id instead.")
  (pre_undock_id m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <undock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:frame_id-val is deprecated.  Use robot_scheduling_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <undock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:command-val is deprecated.  Use robot_scheduling_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'undock_ac_name-val :lambda-list '(m))
(cl:defmethod undock_ac_name-val ((m <undock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:undock_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:undock_ac_name instead.")
  (undock_ac_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <undock_toGoal>) ostream)
  "Serializes a message object of type '<undock_toGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'undock_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'undock_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pre_undock_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pre_undock_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'undock_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'undock_ac_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <undock_toGoal>) istream)
  "Deserializes a message object of type '<undock_toGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'undock_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'undock_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pre_undock_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pre_undock_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'undock_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'undock_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<undock_toGoal>)))
  "Returns string type for a message object of type '<undock_toGoal>"
  "robot_scheduling_msgs/undock_toGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'undock_toGoal)))
  "Returns string type for a message object of type 'undock_toGoal"
  "robot_scheduling_msgs/undock_toGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<undock_toGoal>)))
  "Returns md5sum for a message object of type '<undock_toGoal>"
  "c066db22f7f814530a97fb0d46111a5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'undock_toGoal)))
  "Returns md5sum for a message object of type 'undock_toGoal"
  "c066db22f7f814530a97fb0d46111a5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<undock_toGoal>)))
  "Returns full string definition for message of type '<undock_toGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string undock_id~%string pre_undock_id~%string frame_id~%uint8 command~%string undock_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'undock_toGoal)))
  "Returns full string definition for message of type 'undock_toGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string undock_id~%string pre_undock_id~%string frame_id~%uint8 command~%string undock_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <undock_toGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'undock_id))
     4 (cl:length (cl:slot-value msg 'pre_undock_id))
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
     4 (cl:length (cl:slot-value msg 'undock_ac_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <undock_toGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'undock_toGoal
    (cl:cons ':undock_id (undock_id msg))
    (cl:cons ':pre_undock_id (pre_undock_id msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':command (command msg))
    (cl:cons ':undock_ac_name (undock_ac_name msg))
))
