; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude pose_move_toFeedback.msg.html

(cl:defclass <pose_move_toFeedback> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type locomotor_msgs-msg:NavigationState
    :initform (cl:make-instance 'locomotor_msgs-msg:NavigationState))
   (percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0)
   (distance_traveled
    :reader distance_traveled
    :initarg :distance_traveled
    :type cl:float
    :initform 0.0)
   (estimated_distance_remaining
    :reader estimated_distance_remaining
    :initarg :estimated_distance_remaining
    :type cl:float
    :initform 0.0))
)

(cl:defclass pose_move_toFeedback (<pose_move_toFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_move_toFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_move_toFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<pose_move_toFeedback> is deprecated: use robot_scheduling_msgs-msg:pose_move_toFeedback instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <pose_move_toFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:state-val is deprecated.  Use robot_scheduling_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <pose_move_toFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:percent_complete-val is deprecated.  Use robot_scheduling_msgs-msg:percent_complete instead.")
  (percent_complete m))

(cl:ensure-generic-function 'distance_traveled-val :lambda-list '(m))
(cl:defmethod distance_traveled-val ((m <pose_move_toFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:distance_traveled-val is deprecated.  Use robot_scheduling_msgs-msg:distance_traveled instead.")
  (distance_traveled m))

(cl:ensure-generic-function 'estimated_distance_remaining-val :lambda-list '(m))
(cl:defmethod estimated_distance_remaining-val ((m <pose_move_toFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:estimated_distance_remaining-val is deprecated.  Use robot_scheduling_msgs-msg:estimated_distance_remaining instead.")
  (estimated_distance_remaining m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_move_toFeedback>) ostream)
  "Serializes a message object of type '<pose_move_toFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_traveled))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'estimated_distance_remaining))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_move_toFeedback>) istream)
  "Deserializes a message object of type '<pose_move_toFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_complete) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_traveled) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'estimated_distance_remaining) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_move_toFeedback>)))
  "Returns string type for a message object of type '<pose_move_toFeedback>"
  "robot_scheduling_msgs/pose_move_toFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_move_toFeedback)))
  "Returns string type for a message object of type 'pose_move_toFeedback"
  "robot_scheduling_msgs/pose_move_toFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_move_toFeedback>)))
  "Returns md5sum for a message object of type '<pose_move_toFeedback>"
  "731b38cf0756acb428661980c367590e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_move_toFeedback)))
  "Returns md5sum for a message object of type 'pose_move_toFeedback"
  "731b38cf0756acb428661980c367590e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_move_toFeedback>)))
  "Returns full string definition for message of type '<pose_move_toFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%locomotor_msgs/NavigationState state~%float32 percent_complete~%float32 distance_traveled~%float32 estimated_distance_remaining~%~%~%================================================================================~%MSG: locomotor_msgs/NavigationState~%nav_2d_msgs/Pose2DStamped global_pose~%nav_2d_msgs/Pose2DStamped local_pose~%nav_2d_msgs/Pose2DStamped goal~%nav_2d_msgs/Twist2DStamped current_velocity~%nav_2d_msgs/Twist2DStamped command_velocity~%nav_2d_msgs/Path2D global_plan~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2DStamped~%std_msgs/Header header~%Twist2D velocity~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_move_toFeedback)))
  "Returns full string definition for message of type 'pose_move_toFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%locomotor_msgs/NavigationState state~%float32 percent_complete~%float32 distance_traveled~%float32 estimated_distance_remaining~%~%~%================================================================================~%MSG: locomotor_msgs/NavigationState~%nav_2d_msgs/Pose2DStamped global_pose~%nav_2d_msgs/Pose2DStamped local_pose~%nav_2d_msgs/Pose2DStamped goal~%nav_2d_msgs/Twist2DStamped current_velocity~%nav_2d_msgs/Twist2DStamped command_velocity~%nav_2d_msgs/Path2D global_plan~%~%================================================================================~%MSG: nav_2d_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Twist2DStamped~%std_msgs/Header header~%Twist2D velocity~%~%================================================================================~%MSG: nav_2d_msgs/Twist2D~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: nav_2d_msgs/Path2D~%Header header~%geometry_msgs/Pose2D[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_move_toFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_move_toFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_move_toFeedback
    (cl:cons ':state (state msg))
    (cl:cons ':percent_complete (percent_complete msg))
    (cl:cons ':distance_traveled (distance_traveled msg))
    (cl:cons ':estimated_distance_remaining (estimated_distance_remaining msg))
))
