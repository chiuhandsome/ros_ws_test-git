; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude dock_toGoal.msg.html

(cl:defclass <dock_toGoal> (roslisp-msg-protocol:ros-message)
  ((dock_id
    :reader dock_id
    :initarg :dock_id
    :type cl:string
    :initform "")
   (pre_dock_id
    :reader pre_dock_id
    :initarg :pre_dock_id
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
   (dock_ac_name
    :reader dock_ac_name
    :initarg :dock_ac_name
    :type cl:string
    :initform "")
   (use_move_base
    :reader use_move_base
    :initarg :use_move_base
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass dock_toGoal (<dock_toGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dock_toGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dock_toGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<dock_toGoal> is deprecated: use robot_scheduling_msgs-msg:dock_toGoal instead.")))

(cl:ensure-generic-function 'dock_id-val :lambda-list '(m))
(cl:defmethod dock_id-val ((m <dock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:dock_id-val is deprecated.  Use robot_scheduling_msgs-msg:dock_id instead.")
  (dock_id m))

(cl:ensure-generic-function 'pre_dock_id-val :lambda-list '(m))
(cl:defmethod pre_dock_id-val ((m <dock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:pre_dock_id-val is deprecated.  Use robot_scheduling_msgs-msg:pre_dock_id instead.")
  (pre_dock_id m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <dock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:frame_id-val is deprecated.  Use robot_scheduling_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <dock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:command-val is deprecated.  Use robot_scheduling_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'dock_ac_name-val :lambda-list '(m))
(cl:defmethod dock_ac_name-val ((m <dock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:dock_ac_name-val is deprecated.  Use robot_scheduling_msgs-msg:dock_ac_name instead.")
  (dock_ac_name m))

(cl:ensure-generic-function 'use_move_base-val :lambda-list '(m))
(cl:defmethod use_move_base-val ((m <dock_toGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:use_move_base-val is deprecated.  Use robot_scheduling_msgs-msg:use_move_base instead.")
  (use_move_base m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dock_toGoal>) ostream)
  "Serializes a message object of type '<dock_toGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dock_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dock_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pre_dock_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pre_dock_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dock_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dock_ac_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_move_base) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dock_toGoal>) istream)
  "Deserializes a message object of type '<dock_toGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dock_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dock_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pre_dock_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pre_dock_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'dock_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dock_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'use_move_base) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dock_toGoal>)))
  "Returns string type for a message object of type '<dock_toGoal>"
  "robot_scheduling_msgs/dock_toGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dock_toGoal)))
  "Returns string type for a message object of type 'dock_toGoal"
  "robot_scheduling_msgs/dock_toGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dock_toGoal>)))
  "Returns md5sum for a message object of type '<dock_toGoal>"
  "ff77f62eae339c0f037082a1f5744baf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dock_toGoal)))
  "Returns md5sum for a message object of type 'dock_toGoal"
  "ff77f62eae339c0f037082a1f5744baf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dock_toGoal>)))
  "Returns full string definition for message of type '<dock_toGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string dock_id~%string pre_dock_id~%string frame_id~%uint8 command~%string dock_ac_name~%bool use_move_base~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dock_toGoal)))
  "Returns full string definition for message of type 'dock_toGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string dock_id~%string pre_dock_id~%string frame_id~%uint8 command~%string dock_ac_name~%bool use_move_base~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dock_toGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dock_id))
     4 (cl:length (cl:slot-value msg 'pre_dock_id))
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
     4 (cl:length (cl:slot-value msg 'dock_ac_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dock_toGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'dock_toGoal
    (cl:cons ':dock_id (dock_id msg))
    (cl:cons ':pre_dock_id (pre_dock_id msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':command (command msg))
    (cl:cons ':dock_ac_name (dock_ac_name msg))
    (cl:cons ':use_move_base (use_move_base msg))
))
