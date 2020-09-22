; Auto-generated. Do not edit!


(cl:in-package actionlib_modules_msgs-msg)


;//! \htmlinclude actionlib_agv_movetoGoal.msg.html

(cl:defclass <actionlib_agv_movetoGoal> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type nav_2d_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'nav_2d_msgs-msg:Pose2DStamped))
   (call_aclib_name
    :reader call_aclib_name
    :initarg :call_aclib_name
    :type cl:string
    :initform "")
   (post_time
    :reader post_time
    :initarg :post_time
    :type cl:float
    :initform 0.0)
   (use_timeout
    :reader use_timeout
    :initarg :use_timeout
    :type cl:boolean
    :initform cl:nil)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0))
)

(cl:defclass actionlib_agv_movetoGoal (<actionlib_agv_movetoGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actionlib_agv_movetoGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actionlib_agv_movetoGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_modules_msgs-msg:<actionlib_agv_movetoGoal> is deprecated: use actionlib_modules_msgs-msg:actionlib_agv_movetoGoal instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <actionlib_agv_movetoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:goal-val is deprecated.  Use actionlib_modules_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'call_aclib_name-val :lambda-list '(m))
(cl:defmethod call_aclib_name-val ((m <actionlib_agv_movetoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:call_aclib_name-val is deprecated.  Use actionlib_modules_msgs-msg:call_aclib_name instead.")
  (call_aclib_name m))

(cl:ensure-generic-function 'post_time-val :lambda-list '(m))
(cl:defmethod post_time-val ((m <actionlib_agv_movetoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:post_time-val is deprecated.  Use actionlib_modules_msgs-msg:post_time instead.")
  (post_time m))

(cl:ensure-generic-function 'use_timeout-val :lambda-list '(m))
(cl:defmethod use_timeout-val ((m <actionlib_agv_movetoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:use_timeout-val is deprecated.  Use actionlib_modules_msgs-msg:use_timeout instead.")
  (use_timeout m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <actionlib_agv_movetoGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:timeout-val is deprecated.  Use actionlib_modules_msgs-msg:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actionlib_agv_movetoGoal>) ostream)
  "Serializes a message object of type '<actionlib_agv_movetoGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'call_aclib_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'call_aclib_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'post_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_timeout) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actionlib_agv_movetoGoal>) istream)
  "Deserializes a message object of type '<actionlib_agv_movetoGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'call_aclib_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'call_aclib_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'post_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'use_timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actionlib_agv_movetoGoal>)))
  "Returns string type for a message object of type '<actionlib_agv_movetoGoal>"
  "actionlib_modules_msgs/actionlib_agv_movetoGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actionlib_agv_movetoGoal)))
  "Returns string type for a message object of type 'actionlib_agv_movetoGoal"
  "actionlib_modules_msgs/actionlib_agv_movetoGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actionlib_agv_movetoGoal>)))
  "Returns md5sum for a message object of type '<actionlib_agv_movetoGoal>"
  "e9d19824422fe0b06f378baad449004a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actionlib_agv_movetoGoal)))
  "Returns md5sum for a message object of type 'actionlib_agv_movetoGoal"
  "e9d19824422fe0b06f378baad449004a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actionlib_agv_movetoGoal>)))
  "Returns full string definition for message of type '<actionlib_agv_movetoGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%nav_2d_msgs/Pose2DStamped goal~%string call_aclib_name~%float32 post_time~%bool use_timeout~%float32 timeout~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actionlib_agv_movetoGoal)))
  "Returns full string definition for message of type 'actionlib_agv_movetoGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%nav_2d_msgs/Pose2DStamped goal~%string call_aclib_name~%float32 post_time~%bool use_timeout~%float32 timeout~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actionlib_agv_movetoGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4 (cl:length (cl:slot-value msg 'call_aclib_name))
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actionlib_agv_movetoGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'actionlib_agv_movetoGoal
    (cl:cons ':goal (goal msg))
    (cl:cons ':call_aclib_name (call_aclib_name msg))
    (cl:cons ':post_time (post_time msg))
    (cl:cons ':use_timeout (use_timeout msg))
    (cl:cons ':timeout (timeout msg))
))
