; Auto-generated. Do not edit!


(cl:in-package actionlib_modules_msgs-msg)


;//! \htmlinclude actionlib_pre_dockGoal.msg.html

(cl:defclass <actionlib_pre_dockGoal> (roslisp-msg-protocol:ros-message)
  ((call_aclib_name
    :reader call_aclib_name
    :initarg :call_aclib_name
    :type cl:string
    :initform "")
   (dock_pose
    :reader dock_pose
    :initarg :dock_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (dock_id
    :reader dock_id
    :initarg :dock_id
    :type cl:string
    :initform "")
   (use_move_base
    :reader use_move_base
    :initarg :use_move_base
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass actionlib_pre_dockGoal (<actionlib_pre_dockGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actionlib_pre_dockGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actionlib_pre_dockGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_modules_msgs-msg:<actionlib_pre_dockGoal> is deprecated: use actionlib_modules_msgs-msg:actionlib_pre_dockGoal instead.")))

(cl:ensure-generic-function 'call_aclib_name-val :lambda-list '(m))
(cl:defmethod call_aclib_name-val ((m <actionlib_pre_dockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:call_aclib_name-val is deprecated.  Use actionlib_modules_msgs-msg:call_aclib_name instead.")
  (call_aclib_name m))

(cl:ensure-generic-function 'dock_pose-val :lambda-list '(m))
(cl:defmethod dock_pose-val ((m <actionlib_pre_dockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:dock_pose-val is deprecated.  Use actionlib_modules_msgs-msg:dock_pose instead.")
  (dock_pose m))

(cl:ensure-generic-function 'dock_id-val :lambda-list '(m))
(cl:defmethod dock_id-val ((m <actionlib_pre_dockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:dock_id-val is deprecated.  Use actionlib_modules_msgs-msg:dock_id instead.")
  (dock_id m))

(cl:ensure-generic-function 'use_move_base-val :lambda-list '(m))
(cl:defmethod use_move_base-val ((m <actionlib_pre_dockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:use_move_base-val is deprecated.  Use actionlib_modules_msgs-msg:use_move_base instead.")
  (use_move_base m))

(cl:ensure-generic-function 'post_time-val :lambda-list '(m))
(cl:defmethod post_time-val ((m <actionlib_pre_dockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:post_time-val is deprecated.  Use actionlib_modules_msgs-msg:post_time instead.")
  (post_time m))

(cl:ensure-generic-function 'use_timeout-val :lambda-list '(m))
(cl:defmethod use_timeout-val ((m <actionlib_pre_dockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:use_timeout-val is deprecated.  Use actionlib_modules_msgs-msg:use_timeout instead.")
  (use_timeout m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <actionlib_pre_dockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:timeout-val is deprecated.  Use actionlib_modules_msgs-msg:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actionlib_pre_dockGoal>) ostream)
  "Serializes a message object of type '<actionlib_pre_dockGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'call_aclib_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'call_aclib_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dock_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dock_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dock_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_move_base) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actionlib_pre_dockGoal>) istream)
  "Deserializes a message object of type '<actionlib_pre_dockGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'call_aclib_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'call_aclib_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dock_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dock_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dock_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'use_move_base) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actionlib_pre_dockGoal>)))
  "Returns string type for a message object of type '<actionlib_pre_dockGoal>"
  "actionlib_modules_msgs/actionlib_pre_dockGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actionlib_pre_dockGoal)))
  "Returns string type for a message object of type 'actionlib_pre_dockGoal"
  "actionlib_modules_msgs/actionlib_pre_dockGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actionlib_pre_dockGoal>)))
  "Returns md5sum for a message object of type '<actionlib_pre_dockGoal>"
  "9c7a95ee383b31fc48324995326aa2f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actionlib_pre_dockGoal)))
  "Returns md5sum for a message object of type 'actionlib_pre_dockGoal"
  "9c7a95ee383b31fc48324995326aa2f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actionlib_pre_dockGoal>)))
  "Returns full string definition for message of type '<actionlib_pre_dockGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string call_aclib_name~%geometry_msgs/PoseStamped dock_pose~%string dock_id~%bool use_move_base~%float32 post_time~%bool use_timeout~%float32 timeout~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actionlib_pre_dockGoal)))
  "Returns full string definition for message of type 'actionlib_pre_dockGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string call_aclib_name~%geometry_msgs/PoseStamped dock_pose~%string dock_id~%bool use_move_base~%float32 post_time~%bool use_timeout~%float32 timeout~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actionlib_pre_dockGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'call_aclib_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dock_pose))
     4 (cl:length (cl:slot-value msg 'dock_id))
     1
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actionlib_pre_dockGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'actionlib_pre_dockGoal
    (cl:cons ':call_aclib_name (call_aclib_name msg))
    (cl:cons ':dock_pose (dock_pose msg))
    (cl:cons ':dock_id (dock_id msg))
    (cl:cons ':use_move_base (use_move_base msg))
    (cl:cons ':post_time (post_time msg))
    (cl:cons ':use_timeout (use_timeout msg))
    (cl:cons ':timeout (timeout msg))
))
