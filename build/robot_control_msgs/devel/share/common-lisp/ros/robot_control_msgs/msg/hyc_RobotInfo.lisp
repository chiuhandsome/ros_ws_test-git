; Auto-generated. Do not edit!


(cl:in-package robot_control_msgs-msg)


;//! \htmlinclude hyc_RobotInfo.msg.html

(cl:defclass <hyc_RobotInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (current_route_segment
    :reader current_route_segment
    :initarg :current_route_segment
    :type cl:integer
    :initform 0)
   (shape
    :reader shape
    :initarg :shape
    :type cl:integer
    :initform 0)
   (shape_variables
    :reader shape_variables
    :initarg :shape_variables
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (handler_type
    :reader handler_type
    :initarg :handler_type
    :type cl:integer
    :initform 0)
   (battery_id
    :reader battery_id
    :initarg :battery_id
    :type cl:string
    :initform "")
   (battery_capacity
    :reader battery_capacity
    :initarg :battery_capacity
    :type cl:float
    :initform 0.0)
   (battery_chargetime
    :reader battery_chargetime
    :initarg :battery_chargetime
    :type cl:integer
    :initform 0)
   (battery_servicetime
    :reader battery_servicetime
    :initarg :battery_servicetime
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:string
    :initform "")
   (good_id
    :reader good_id
    :initarg :good_id
    :type cl:integer
    :initform 0)
   (order_id
    :reader order_id
    :initarg :order_id
    :type cl:integer
    :initform 0)
   (order_status
    :reader order_status
    :initarg :order_status
    :type cl:integer
    :initform 0))
)

(cl:defclass hyc_RobotInfo (<hyc_RobotInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hyc_RobotInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hyc_RobotInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control_msgs-msg:<hyc_RobotInfo> is deprecated: use robot_control_msgs-msg:hyc_RobotInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:header-val is deprecated.  Use robot_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:robot_name-val is deprecated.  Use robot_control_msgs-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:pose-val is deprecated.  Use robot_control_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'current_route_segment-val :lambda-list '(m))
(cl:defmethod current_route_segment-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:current_route_segment-val is deprecated.  Use robot_control_msgs-msg:current_route_segment instead.")
  (current_route_segment m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:shape-val is deprecated.  Use robot_control_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'shape_variables-val :lambda-list '(m))
(cl:defmethod shape_variables-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:shape_variables-val is deprecated.  Use robot_control_msgs-msg:shape_variables instead.")
  (shape_variables m))

(cl:ensure-generic-function 'handler_type-val :lambda-list '(m))
(cl:defmethod handler_type-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:handler_type-val is deprecated.  Use robot_control_msgs-msg:handler_type instead.")
  (handler_type m))

(cl:ensure-generic-function 'battery_id-val :lambda-list '(m))
(cl:defmethod battery_id-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:battery_id-val is deprecated.  Use robot_control_msgs-msg:battery_id instead.")
  (battery_id m))

(cl:ensure-generic-function 'battery_capacity-val :lambda-list '(m))
(cl:defmethod battery_capacity-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:battery_capacity-val is deprecated.  Use robot_control_msgs-msg:battery_capacity instead.")
  (battery_capacity m))

(cl:ensure-generic-function 'battery_chargetime-val :lambda-list '(m))
(cl:defmethod battery_chargetime-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:battery_chargetime-val is deprecated.  Use robot_control_msgs-msg:battery_chargetime instead.")
  (battery_chargetime m))

(cl:ensure-generic-function 'battery_servicetime-val :lambda-list '(m))
(cl:defmethod battery_servicetime-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:battery_servicetime-val is deprecated.  Use robot_control_msgs-msg:battery_servicetime instead.")
  (battery_servicetime m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:mode-val is deprecated.  Use robot_control_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:status-val is deprecated.  Use robot_control_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:error_code-val is deprecated.  Use robot_control_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'good_id-val :lambda-list '(m))
(cl:defmethod good_id-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:good_id-val is deprecated.  Use robot_control_msgs-msg:good_id instead.")
  (good_id m))

(cl:ensure-generic-function 'order_id-val :lambda-list '(m))
(cl:defmethod order_id-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:order_id-val is deprecated.  Use robot_control_msgs-msg:order_id instead.")
  (order_id m))

(cl:ensure-generic-function 'order_status-val :lambda-list '(m))
(cl:defmethod order_status-val ((m <hyc_RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:order_status-val is deprecated.  Use robot_control_msgs-msg:order_status instead.")
  (order_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<hyc_RobotInfo>)))
    "Constants for message type '<hyc_RobotInfo>"
  '((:SHAPE_CIRCLE . 0)
    (:HANDLERTYPE_NA . 0)
    (:HANDLERTYPE_ROLLER . 1)
    (:HANDLERTYPE_ARM . 2)
    (:HANDLERTYPE_PNP . 3)
    (:MODE_NA . 0)
    (:MODE_IDLE . 1)
    (:MODE_SEGMENT_FOLLOWING . 2)
    (:MODE_PICKUP . 3)
    (:STATUS_NONE . -1)
    (:STATUS_DRIVING . 0)
    (:STATUS_STOPPED . 1)
    (:STATUS_DONE . 2)
    (:STATUS_BROKEN . 3)
    (:GOOD_EMPTY . -1)
    (:GOOD_NA . -2)
    (:ORDER_NONE . 0)
    (:ORDER_APPROACH . 1)
    (:ORDER_PICKUP . 2)
    (:ORDER_TRANSPORT . 3)
    (:ORDER_DROP . 4)
    (:ORDER_FINSIH . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'hyc_RobotInfo)))
    "Constants for message type 'hyc_RobotInfo"
  '((:SHAPE_CIRCLE . 0)
    (:HANDLERTYPE_NA . 0)
    (:HANDLERTYPE_ROLLER . 1)
    (:HANDLERTYPE_ARM . 2)
    (:HANDLERTYPE_PNP . 3)
    (:MODE_NA . 0)
    (:MODE_IDLE . 1)
    (:MODE_SEGMENT_FOLLOWING . 2)
    (:MODE_PICKUP . 3)
    (:STATUS_NONE . -1)
    (:STATUS_DRIVING . 0)
    (:STATUS_STOPPED . 1)
    (:STATUS_DONE . 2)
    (:STATUS_BROKEN . 3)
    (:GOOD_EMPTY . -1)
    (:GOOD_NA . -2)
    (:ORDER_NONE . 0)
    (:ORDER_APPROACH . 1)
    (:ORDER_PICKUP . 2)
    (:ORDER_TRANSPORT . 3)
    (:ORDER_DROP . 4)
    (:ORDER_FINSIH . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hyc_RobotInfo>) ostream)
  "Serializes a message object of type '<hyc_RobotInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'current_route_segment)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'shape)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_variables))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shape_variables))
  (cl:let* ((signed (cl:slot-value msg 'handler_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'battery_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'battery_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_capacity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'battery_chargetime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'battery_servicetime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_code))
  (cl:let* ((signed (cl:slot-value msg 'good_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'order_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'order_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hyc_RobotInfo>) istream)
  "Deserializes a message object of type '<hyc_RobotInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_route_segment) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shape) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_variables) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_variables)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handler_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'battery_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_capacity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_chargetime) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_servicetime) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'good_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hyc_RobotInfo>)))
  "Returns string type for a message object of type '<hyc_RobotInfo>"
  "robot_control_msgs/hyc_RobotInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hyc_RobotInfo)))
  "Returns string type for a message object of type 'hyc_RobotInfo"
  "robot_control_msgs/hyc_RobotInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hyc_RobotInfo>)))
  "Returns md5sum for a message object of type '<hyc_RobotInfo>"
  "acf6224ebc0054473268910daf81c8c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hyc_RobotInfo)))
  "Returns md5sum for a message object of type 'hyc_RobotInfo"
  "acf6224ebc0054473268910daf81c8c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hyc_RobotInfo>)))
  "Returns full string definition for message of type '<hyc_RobotInfo>"
  (cl:format cl:nil "#################################################################~%## Presents dynamic parameters of a hyc'srobot~%#################################################################~%~%Header header                           # the creation time~%string robot_name                       # the name of the robot (used in preconditions and topics)~%geometry_msgs/PoseWithCovariance pose   # the robots current pose within the frame related to the msgs header~%#RoutePrecondition sync                  # the current position in the last received plan (-1 means none)~%int32 current_route_segment      	# the segment nr of the route executed by the given robot~%############### shape type of robot ###################################~%int32 shape                             # the shape of the robots (see enums)~%float32[] shape_variables               # shape variables to define width height, ...~%~%int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars~%############### type of robot ###################################~%int32   handler_type                    # the type of Handling module~%~%int32 HANDLERTYPE_NA = 0                # undefined Handling module~%int32 HANDLERTYPE_ROLLER = 1            # roller type of  Handling module~%int32 HANDLERTYPE_ARM = 2            	# robot_arm of  Handling module~%int32 HANDLERTYPE_PNP = 3            	# pick_place of  Handling module~%############### type of target align ############################~%#int32   align_type                      # the type of target align~%#string  align_id                        # the id of target align (position-align management db)~%~%#int32 ALIGNTYPE_NA = 0                  # undefined type of target align~%#int32 ALIGNTYPE_DOCKER = 1              # docker type of target align~%############### type of target align ############################~%string  battery_id 			# the id of battery (battery management db included maintenance)~%float32 battery_capacity		# unit: %~%int32 battery_chargetime      ~%int32 battery_servicetime   		# using time caculation (uint: minute)~%############### type of mode ####################################~%int32   mode                            # the mode of operation~%~%int32 MODE_NA = 0                   	# undefined mode~%int32 MODE_IDLE = 1                 	# robot is idle~%int32 MODE_SEGMENT_FOLLOWING = 2    	# robot is in mode segment following~%int32 MODE_PICKUP = 3               	# robot is picking up goods~%############### type of status ####################################~%int32   status                          # the status of the robot~%string  error_code 			# the error_code of robot (error_code management db included its history)~%~%int32 STATUS_NONE = -1            	# robot is not_ready (stm not ready ...)~%int32 STATUS_DRIVING = 0            	# robot is driving~%int32 STATUS_STOPPED = 1            	# robot has stopped~%int32 STATUS_DONE = 2               	# robot has finished its last job~%int32 STATUS_BROKEN = 3             	# robot is broken and not ready for any task~%~%############### order's information ################################~%int32   good_id                         # the good id attached to the robot~%~%int32 GOOD_EMPTY = -1               	# no goods attached~%int32 GOOD_NA = -2                  	# undefined good~%############### order's information ################################~%int32   order_id                        # the order id scheduled to this robot (-1: none)~%int32   order_status                    # the status of the assigned order~%~%int32 ORDER_NONE = 0                	# no order assigned~%int32 ORDER_APPROACH = 1            	# the robot approaches the first station of the order~%int32 ORDER_PICKUP = 2              	# the robot picks up a good at the station~%int32 ORDER_TRANSPORT = 3          	# the robot currently transports a good from one station to another~%int32 ORDER_DROP = 4                	# the robot drops a good at the last station of its order, finishing the order~%int32 ORDER_FINSIH = 5              	# the robot drops a good at the last station of its order, finishing the order~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hyc_RobotInfo)))
  "Returns full string definition for message of type 'hyc_RobotInfo"
  (cl:format cl:nil "#################################################################~%## Presents dynamic parameters of a hyc'srobot~%#################################################################~%~%Header header                           # the creation time~%string robot_name                       # the name of the robot (used in preconditions and topics)~%geometry_msgs/PoseWithCovariance pose   # the robots current pose within the frame related to the msgs header~%#RoutePrecondition sync                  # the current position in the last received plan (-1 means none)~%int32 current_route_segment      	# the segment nr of the route executed by the given robot~%############### shape type of robot ###################################~%int32 shape                             # the shape of the robots (see enums)~%float32[] shape_variables               # shape variables to define width height, ...~%~%int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars~%############### type of robot ###################################~%int32   handler_type                    # the type of Handling module~%~%int32 HANDLERTYPE_NA = 0                # undefined Handling module~%int32 HANDLERTYPE_ROLLER = 1            # roller type of  Handling module~%int32 HANDLERTYPE_ARM = 2            	# robot_arm of  Handling module~%int32 HANDLERTYPE_PNP = 3            	# pick_place of  Handling module~%############### type of target align ############################~%#int32   align_type                      # the type of target align~%#string  align_id                        # the id of target align (position-align management db)~%~%#int32 ALIGNTYPE_NA = 0                  # undefined type of target align~%#int32 ALIGNTYPE_DOCKER = 1              # docker type of target align~%############### type of target align ############################~%string  battery_id 			# the id of battery (battery management db included maintenance)~%float32 battery_capacity		# unit: %~%int32 battery_chargetime      ~%int32 battery_servicetime   		# using time caculation (uint: minute)~%############### type of mode ####################################~%int32   mode                            # the mode of operation~%~%int32 MODE_NA = 0                   	# undefined mode~%int32 MODE_IDLE = 1                 	# robot is idle~%int32 MODE_SEGMENT_FOLLOWING = 2    	# robot is in mode segment following~%int32 MODE_PICKUP = 3               	# robot is picking up goods~%############### type of status ####################################~%int32   status                          # the status of the robot~%string  error_code 			# the error_code of robot (error_code management db included its history)~%~%int32 STATUS_NONE = -1            	# robot is not_ready (stm not ready ...)~%int32 STATUS_DRIVING = 0            	# robot is driving~%int32 STATUS_STOPPED = 1            	# robot has stopped~%int32 STATUS_DONE = 2               	# robot has finished its last job~%int32 STATUS_BROKEN = 3             	# robot is broken and not ready for any task~%~%############### order's information ################################~%int32   good_id                         # the good id attached to the robot~%~%int32 GOOD_EMPTY = -1               	# no goods attached~%int32 GOOD_NA = -2                  	# undefined good~%############### order's information ################################~%int32   order_id                        # the order id scheduled to this robot (-1: none)~%int32   order_status                    # the status of the assigned order~%~%int32 ORDER_NONE = 0                	# no order assigned~%int32 ORDER_APPROACH = 1            	# the robot approaches the first station of the order~%int32 ORDER_PICKUP = 2              	# the robot picks up a good at the station~%int32 ORDER_TRANSPORT = 3          	# the robot currently transports a good from one station to another~%int32 ORDER_DROP = 4                	# the robot drops a good at the last station of its order, finishing the order~%int32 ORDER_FINSIH = 5              	# the robot drops a good at the last station of its order, finishing the order~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hyc_RobotInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_variables) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:length (cl:slot-value msg 'battery_id))
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'error_code))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hyc_RobotInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'hyc_RobotInfo
    (cl:cons ':header (header msg))
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':current_route_segment (current_route_segment msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':shape_variables (shape_variables msg))
    (cl:cons ':handler_type (handler_type msg))
    (cl:cons ':battery_id (battery_id msg))
    (cl:cons ':battery_capacity (battery_capacity msg))
    (cl:cons ':battery_chargetime (battery_chargetime msg))
    (cl:cons ':battery_servicetime (battery_servicetime msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':status (status msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':good_id (good_id msg))
    (cl:cons ':order_id (order_id msg))
    (cl:cons ':order_status (order_status msg))
))
