; Auto-generated. Do not edit!


(cl:in-package robot_control_msgs-msg)


;//! \htmlinclude robot_ctrl_roslog.msg.html

(cl:defclass <robot_ctrl_roslog> (roslisp-msg-protocol:ros-message)
  ((system_id
    :reader system_id
    :initarg :system_id
    :type cl:string
    :initform "")
   (roslog_level
    :reader roslog_level
    :initarg :roslog_level
    :type cl:string
    :initform "")
   (roslog_node
    :reader roslog_node
    :initarg :roslog_node
    :type cl:string
    :initform "")
   (roslog_content
    :reader roslog_content
    :initarg :roslog_content
    :type cl:string
    :initform "")
   (occure_time
    :reader occure_time
    :initarg :occure_time
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass robot_ctrl_roslog (<robot_ctrl_roslog>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_ctrl_roslog>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_ctrl_roslog)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control_msgs-msg:<robot_ctrl_roslog> is deprecated: use robot_control_msgs-msg:robot_ctrl_roslog instead.")))

(cl:ensure-generic-function 'system_id-val :lambda-list '(m))
(cl:defmethod system_id-val ((m <robot_ctrl_roslog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:system_id-val is deprecated.  Use robot_control_msgs-msg:system_id instead.")
  (system_id m))

(cl:ensure-generic-function 'roslog_level-val :lambda-list '(m))
(cl:defmethod roslog_level-val ((m <robot_ctrl_roslog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:roslog_level-val is deprecated.  Use robot_control_msgs-msg:roslog_level instead.")
  (roslog_level m))

(cl:ensure-generic-function 'roslog_node-val :lambda-list '(m))
(cl:defmethod roslog_node-val ((m <robot_ctrl_roslog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:roslog_node-val is deprecated.  Use robot_control_msgs-msg:roslog_node instead.")
  (roslog_node m))

(cl:ensure-generic-function 'roslog_content-val :lambda-list '(m))
(cl:defmethod roslog_content-val ((m <robot_ctrl_roslog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:roslog_content-val is deprecated.  Use robot_control_msgs-msg:roslog_content instead.")
  (roslog_content m))

(cl:ensure-generic-function 'occure_time-val :lambda-list '(m))
(cl:defmethod occure_time-val ((m <robot_ctrl_roslog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:occure_time-val is deprecated.  Use robot_control_msgs-msg:occure_time instead.")
  (occure_time m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <robot_ctrl_roslog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:update_time-val is deprecated.  Use robot_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_ctrl_roslog>) ostream)
  "Serializes a message object of type '<robot_ctrl_roslog>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'system_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'system_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'roslog_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'roslog_level))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'roslog_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'roslog_node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'roslog_content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'roslog_content))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'occure_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'occure_time))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_ctrl_roslog>) istream)
  "Deserializes a message object of type '<robot_ctrl_roslog>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'system_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roslog_level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'roslog_level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roslog_node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'roslog_node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roslog_content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'roslog_content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'occure_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'occure_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'update_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'update_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_ctrl_roslog>)))
  "Returns string type for a message object of type '<robot_ctrl_roslog>"
  "robot_control_msgs/robot_ctrl_roslog")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_ctrl_roslog)))
  "Returns string type for a message object of type 'robot_ctrl_roslog"
  "robot_control_msgs/robot_ctrl_roslog")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_ctrl_roslog>)))
  "Returns md5sum for a message object of type '<robot_ctrl_roslog>"
  "8fbe8c01a89f28f5cb406e90c253e0af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_ctrl_roslog)))
  "Returns md5sum for a message object of type 'robot_ctrl_roslog"
  "8fbe8c01a89f28f5cb406e90c253e0af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_ctrl_roslog>)))
  "Returns full string definition for message of type '<robot_ctrl_roslog>"
  (cl:format cl:nil "string system_id ~%string roslog_level 			 ~%string roslog_node 			 ~%string roslog_content 			 ~%string occure_time 	 ~%string update_time ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_ctrl_roslog)))
  "Returns full string definition for message of type 'robot_ctrl_roslog"
  (cl:format cl:nil "string system_id ~%string roslog_level 			 ~%string roslog_node 			 ~%string roslog_content 			 ~%string occure_time 	 ~%string update_time ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_ctrl_roslog>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'system_id))
     4 (cl:length (cl:slot-value msg 'roslog_level))
     4 (cl:length (cl:slot-value msg 'roslog_node))
     4 (cl:length (cl:slot-value msg 'roslog_content))
     4 (cl:length (cl:slot-value msg 'occure_time))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_ctrl_roslog>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_ctrl_roslog
    (cl:cons ':system_id (system_id msg))
    (cl:cons ':roslog_level (roslog_level msg))
    (cl:cons ':roslog_node (roslog_node msg))
    (cl:cons ':roslog_content (roslog_content msg))
    (cl:cons ':occure_time (occure_time msg))
    (cl:cons ':update_time (update_time msg))
))
