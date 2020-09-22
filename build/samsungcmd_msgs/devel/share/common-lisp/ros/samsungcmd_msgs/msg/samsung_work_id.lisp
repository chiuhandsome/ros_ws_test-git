; Auto-generated. Do not edit!


(cl:in-package samsungcmd_msgs-msg)


;//! \htmlinclude samsung_work_id.msg.html

(cl:defclass <samsung_work_id> (roslisp-msg-protocol:ros-message)
  ((key_id
    :reader key_id
    :initarg :key_id
    :type cl:string
    :initform "")
   (work_id
    :reader work_id
    :initarg :work_id
    :type cl:fixnum
    :initform 0)
   (target_station_id
    :reader target_station_id
    :initarg :target_station_id
    :type cl:fixnum
    :initform 0)
   (work_type_id
    :reader work_type_id
    :initarg :work_type_id
    :type cl:fixnum
    :initform 0)
   (next_station_id
    :reader next_station_id
    :initarg :next_station_id
    :type cl:fixnum
    :initform 0)
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass samsung_work_id (<samsung_work_id>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <samsung_work_id>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'samsung_work_id)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name samsungcmd_msgs-msg:<samsung_work_id> is deprecated: use samsungcmd_msgs-msg:samsung_work_id instead.")))

(cl:ensure-generic-function 'key_id-val :lambda-list '(m))
(cl:defmethod key_id-val ((m <samsung_work_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:key_id-val is deprecated.  Use samsungcmd_msgs-msg:key_id instead.")
  (key_id m))

(cl:ensure-generic-function 'work_id-val :lambda-list '(m))
(cl:defmethod work_id-val ((m <samsung_work_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:work_id-val is deprecated.  Use samsungcmd_msgs-msg:work_id instead.")
  (work_id m))

(cl:ensure-generic-function 'target_station_id-val :lambda-list '(m))
(cl:defmethod target_station_id-val ((m <samsung_work_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:target_station_id-val is deprecated.  Use samsungcmd_msgs-msg:target_station_id instead.")
  (target_station_id m))

(cl:ensure-generic-function 'work_type_id-val :lambda-list '(m))
(cl:defmethod work_type_id-val ((m <samsung_work_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:work_type_id-val is deprecated.  Use samsungcmd_msgs-msg:work_type_id instead.")
  (work_type_id m))

(cl:ensure-generic-function 'next_station_id-val :lambda-list '(m))
(cl:defmethod next_station_id-val ((m <samsung_work_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:next_station_id-val is deprecated.  Use samsungcmd_msgs-msg:next_station_id instead.")
  (next_station_id m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <samsung_work_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:update_time-val is deprecated.  Use samsungcmd_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <samsung_work_id>) ostream)
  "Serializes a message object of type '<samsung_work_id>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'work_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'work_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'work_type_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'next_station_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <samsung_work_id>) istream)
  "Deserializes a message object of type '<samsung_work_id>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'work_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'work_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'work_type_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'next_station_id)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<samsung_work_id>)))
  "Returns string type for a message object of type '<samsung_work_id>"
  "samsungcmd_msgs/samsung_work_id")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'samsung_work_id)))
  "Returns string type for a message object of type 'samsung_work_id"
  "samsungcmd_msgs/samsung_work_id")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<samsung_work_id>)))
  "Returns md5sum for a message object of type '<samsung_work_id>"
  "56eb78950956dc0347226dcaeda29115")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'samsung_work_id)))
  "Returns md5sum for a message object of type 'samsung_work_id"
  "56eb78950956dc0347226dcaeda29115")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<samsung_work_id>)))
  "Returns full string definition for message of type '<samsung_work_id>"
  (cl:format cl:nil "string key_id~%uint16 work_id~%uint16 target_station_id	 ~%uint8  work_type_id		# 0:loader-loading 1:loader-unloading 2:unloader-loading 3:unloader-unloading~%uint16 next_station_id~%string 	update_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'samsung_work_id)))
  "Returns full string definition for message of type 'samsung_work_id"
  (cl:format cl:nil "string key_id~%uint16 work_id~%uint16 target_station_id	 ~%uint8  work_type_id		# 0:loader-loading 1:loader-unloading 2:unloader-loading 3:unloader-unloading~%uint16 next_station_id~%string 	update_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <samsung_work_id>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key_id))
     2
     2
     1
     2
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <samsung_work_id>))
  "Converts a ROS message object to a list"
  (cl:list 'samsung_work_id
    (cl:cons ':key_id (key_id msg))
    (cl:cons ':work_id (work_id msg))
    (cl:cons ':target_station_id (target_station_id msg))
    (cl:cons ':work_type_id (work_type_id msg))
    (cl:cons ':next_station_id (next_station_id msg))
    (cl:cons ':update_time (update_time msg))
))
