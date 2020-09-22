; Auto-generated. Do not edit!


(cl:in-package samsungcmd_msgs-msg)


;//! \htmlinclude samsung_cntparamsdata.msg.html

(cl:defclass <samsung_cntparamsdata> (roslisp-msg-protocol:ros-message)
  ((Mag_center_analog
    :reader Mag_center_analog
    :initarg :Mag_center_analog
    :type cl:float
    :initform 0.0)
   (Mag_center_digital
    :reader Mag_center_digital
    :initarg :Mag_center_digital
    :type cl:integer
    :initform 0)
   (car_roller_status
    :reader car_roller_status
    :initarg :car_roller_status
    :type cl:fixnum
    :initform 0)
   (car_velrpm_left
    :reader car_velrpm_left
    :initarg :car_velrpm_left
    :type cl:float
    :initform 0.0)
   (car_velrpm_right
    :reader car_velrpm_right
    :initarg :car_velrpm_right
    :type cl:float
    :initform 0.0)
   (car_control_code
    :reader car_control_code
    :initarg :car_control_code
    :type cl:fixnum
    :initform 0)
   (car_Status_code
    :reader car_Status_code
    :initarg :car_Status_code
    :type cl:fixnum
    :initform 0)
   (car_Command_code
    :reader car_Command_code
    :initarg :car_Command_code
    :type cl:fixnum
    :initform 0)
   (car_Error_code
    :reader car_Error_code
    :initarg :car_Error_code
    :type cl:fixnum
    :initform 0)
   (car_SetCommand
    :reader car_SetCommand
    :initarg :car_SetCommand
    :type cl:integer
    :initform 0)
   (roller_SetCommand
    :reader roller_SetCommand
    :initarg :roller_SetCommand
    :type cl:integer
    :initform 0))
)

(cl:defclass samsung_cntparamsdata (<samsung_cntparamsdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <samsung_cntparamsdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'samsung_cntparamsdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name samsungcmd_msgs-msg:<samsung_cntparamsdata> is deprecated: use samsungcmd_msgs-msg:samsung_cntparamsdata instead.")))

(cl:ensure-generic-function 'Mag_center_analog-val :lambda-list '(m))
(cl:defmethod Mag_center_analog-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:Mag_center_analog-val is deprecated.  Use samsungcmd_msgs-msg:Mag_center_analog instead.")
  (Mag_center_analog m))

(cl:ensure-generic-function 'Mag_center_digital-val :lambda-list '(m))
(cl:defmethod Mag_center_digital-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:Mag_center_digital-val is deprecated.  Use samsungcmd_msgs-msg:Mag_center_digital instead.")
  (Mag_center_digital m))

(cl:ensure-generic-function 'car_roller_status-val :lambda-list '(m))
(cl:defmethod car_roller_status-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:car_roller_status-val is deprecated.  Use samsungcmd_msgs-msg:car_roller_status instead.")
  (car_roller_status m))

(cl:ensure-generic-function 'car_velrpm_left-val :lambda-list '(m))
(cl:defmethod car_velrpm_left-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:car_velrpm_left-val is deprecated.  Use samsungcmd_msgs-msg:car_velrpm_left instead.")
  (car_velrpm_left m))

(cl:ensure-generic-function 'car_velrpm_right-val :lambda-list '(m))
(cl:defmethod car_velrpm_right-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:car_velrpm_right-val is deprecated.  Use samsungcmd_msgs-msg:car_velrpm_right instead.")
  (car_velrpm_right m))

(cl:ensure-generic-function 'car_control_code-val :lambda-list '(m))
(cl:defmethod car_control_code-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:car_control_code-val is deprecated.  Use samsungcmd_msgs-msg:car_control_code instead.")
  (car_control_code m))

(cl:ensure-generic-function 'car_Status_code-val :lambda-list '(m))
(cl:defmethod car_Status_code-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:car_Status_code-val is deprecated.  Use samsungcmd_msgs-msg:car_Status_code instead.")
  (car_Status_code m))

(cl:ensure-generic-function 'car_Command_code-val :lambda-list '(m))
(cl:defmethod car_Command_code-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:car_Command_code-val is deprecated.  Use samsungcmd_msgs-msg:car_Command_code instead.")
  (car_Command_code m))

(cl:ensure-generic-function 'car_Error_code-val :lambda-list '(m))
(cl:defmethod car_Error_code-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:car_Error_code-val is deprecated.  Use samsungcmd_msgs-msg:car_Error_code instead.")
  (car_Error_code m))

(cl:ensure-generic-function 'car_SetCommand-val :lambda-list '(m))
(cl:defmethod car_SetCommand-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:car_SetCommand-val is deprecated.  Use samsungcmd_msgs-msg:car_SetCommand instead.")
  (car_SetCommand m))

(cl:ensure-generic-function 'roller_SetCommand-val :lambda-list '(m))
(cl:defmethod roller_SetCommand-val ((m <samsung_cntparamsdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:roller_SetCommand-val is deprecated.  Use samsungcmd_msgs-msg:roller_SetCommand instead.")
  (roller_SetCommand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <samsung_cntparamsdata>) ostream)
  "Serializes a message object of type '<samsung_cntparamsdata>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Mag_center_analog))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Mag_center_digital)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_roller_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'car_velrpm_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'car_velrpm_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'car_control_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_Status_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_Command_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_Error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_SetCommand)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roller_SetCommand)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <samsung_cntparamsdata>) istream)
  "Deserializes a message object of type '<samsung_cntparamsdata>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Mag_center_analog) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Mag_center_digital) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_roller_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'car_velrpm_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'car_velrpm_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_control_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_Status_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_Command_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_Error_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_SetCommand) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roller_SetCommand) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<samsung_cntparamsdata>)))
  "Returns string type for a message object of type '<samsung_cntparamsdata>"
  "samsungcmd_msgs/samsung_cntparamsdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'samsung_cntparamsdata)))
  "Returns string type for a message object of type 'samsung_cntparamsdata"
  "samsungcmd_msgs/samsung_cntparamsdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<samsung_cntparamsdata>)))
  "Returns md5sum for a message object of type '<samsung_cntparamsdata>"
  "028fc3da18d39088df04b2e5220a67fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'samsung_cntparamsdata)))
  "Returns md5sum for a message object of type 'samsung_cntparamsdata"
  "028fc3da18d39088df04b2e5220a67fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<samsung_cntparamsdata>)))
  "Returns full string definition for message of type '<samsung_cntparamsdata>"
  (cl:format cl:nil "float32 Mag_center_analog~%int32 	Mag_center_digital~%int8 	car_roller_status ~%float32 car_velrpm_left~%float32 car_velrpm_right~%int8 	car_control_code ~%int8 	car_Status_code ~%int8 	car_Command_code~%int16 	car_Error_code ~%int32 	car_SetCommand ~%int32 	roller_SetCommand~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'samsung_cntparamsdata)))
  "Returns full string definition for message of type 'samsung_cntparamsdata"
  (cl:format cl:nil "float32 Mag_center_analog~%int32 	Mag_center_digital~%int8 	car_roller_status ~%float32 car_velrpm_left~%float32 car_velrpm_right~%int8 	car_control_code ~%int8 	car_Status_code ~%int8 	car_Command_code~%int16 	car_Error_code ~%int32 	car_SetCommand ~%int32 	roller_SetCommand~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <samsung_cntparamsdata>))
  (cl:+ 0
     4
     4
     1
     4
     4
     1
     1
     1
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <samsung_cntparamsdata>))
  "Converts a ROS message object to a list"
  (cl:list 'samsung_cntparamsdata
    (cl:cons ':Mag_center_analog (Mag_center_analog msg))
    (cl:cons ':Mag_center_digital (Mag_center_digital msg))
    (cl:cons ':car_roller_status (car_roller_status msg))
    (cl:cons ':car_velrpm_left (car_velrpm_left msg))
    (cl:cons ':car_velrpm_right (car_velrpm_right msg))
    (cl:cons ':car_control_code (car_control_code msg))
    (cl:cons ':car_Status_code (car_Status_code msg))
    (cl:cons ':car_Command_code (car_Command_code msg))
    (cl:cons ':car_Error_code (car_Error_code msg))
    (cl:cons ':car_SetCommand (car_SetCommand msg))
    (cl:cons ':roller_SetCommand (roller_SetCommand msg))
))
