; Auto-generated. Do not edit!


(cl:in-package actionlib_modules_msgs-msg)


;//! \htmlinclude actionlib_power_undockGoal.msg.html

(cl:defclass <actionlib_power_undockGoal> (roslisp-msg-protocol:ros-message)
  ((call_aclib_name
    :reader call_aclib_name
    :initarg :call_aclib_name
    :type cl:string
    :initform "")
   (rotate_in_place
    :reader rotate_in_place
    :initarg :rotate_in_place
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

(cl:defclass actionlib_power_undockGoal (<actionlib_power_undockGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actionlib_power_undockGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actionlib_power_undockGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_modules_msgs-msg:<actionlib_power_undockGoal> is deprecated: use actionlib_modules_msgs-msg:actionlib_power_undockGoal instead.")))

(cl:ensure-generic-function 'call_aclib_name-val :lambda-list '(m))
(cl:defmethod call_aclib_name-val ((m <actionlib_power_undockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:call_aclib_name-val is deprecated.  Use actionlib_modules_msgs-msg:call_aclib_name instead.")
  (call_aclib_name m))

(cl:ensure-generic-function 'rotate_in_place-val :lambda-list '(m))
(cl:defmethod rotate_in_place-val ((m <actionlib_power_undockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:rotate_in_place-val is deprecated.  Use actionlib_modules_msgs-msg:rotate_in_place instead.")
  (rotate_in_place m))

(cl:ensure-generic-function 'post_time-val :lambda-list '(m))
(cl:defmethod post_time-val ((m <actionlib_power_undockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:post_time-val is deprecated.  Use actionlib_modules_msgs-msg:post_time instead.")
  (post_time m))

(cl:ensure-generic-function 'use_timeout-val :lambda-list '(m))
(cl:defmethod use_timeout-val ((m <actionlib_power_undockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:use_timeout-val is deprecated.  Use actionlib_modules_msgs-msg:use_timeout instead.")
  (use_timeout m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <actionlib_power_undockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_modules_msgs-msg:timeout-val is deprecated.  Use actionlib_modules_msgs-msg:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actionlib_power_undockGoal>) ostream)
  "Serializes a message object of type '<actionlib_power_undockGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'call_aclib_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'call_aclib_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotate_in_place) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actionlib_power_undockGoal>) istream)
  "Deserializes a message object of type '<actionlib_power_undockGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'call_aclib_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'call_aclib_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'rotate_in_place) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actionlib_power_undockGoal>)))
  "Returns string type for a message object of type '<actionlib_power_undockGoal>"
  "actionlib_modules_msgs/actionlib_power_undockGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actionlib_power_undockGoal)))
  "Returns string type for a message object of type 'actionlib_power_undockGoal"
  "actionlib_modules_msgs/actionlib_power_undockGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actionlib_power_undockGoal>)))
  "Returns md5sum for a message object of type '<actionlib_power_undockGoal>"
  "54d2a2b26ab29aac0e8d1af381d1bd0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actionlib_power_undockGoal)))
  "Returns md5sum for a message object of type 'actionlib_power_undockGoal"
  "54d2a2b26ab29aac0e8d1af381d1bd0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actionlib_power_undockGoal>)))
  "Returns full string definition for message of type '<actionlib_power_undockGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%# This action will always pull backwards off the dock Optionally, we can also turn around 180 degrees~%string call_aclib_name~%bool rotate_in_place~%float32 post_time~%bool use_timeout~%float32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actionlib_power_undockGoal)))
  "Returns full string definition for message of type 'actionlib_power_undockGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%# This action will always pull backwards off the dock Optionally, we can also turn around 180 degrees~%string call_aclib_name~%bool rotate_in_place~%float32 post_time~%bool use_timeout~%float32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actionlib_power_undockGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'call_aclib_name))
     1
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actionlib_power_undockGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'actionlib_power_undockGoal
    (cl:cons ':call_aclib_name (call_aclib_name msg))
    (cl:cons ':rotate_in_place (rotate_in_place msg))
    (cl:cons ':post_time (post_time msg))
    (cl:cons ':use_timeout (use_timeout msg))
    (cl:cons ':timeout (timeout msg))
))
