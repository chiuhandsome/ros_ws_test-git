; Auto-generated. Do not edit!


(cl:in-package samsungcmd_msgs-msg)


;//! \htmlinclude samsung_station_id.msg.html

(cl:defclass <samsung_station_id> (roslisp-msg-protocol:ros-message)
  ((key_id
    :reader key_id
    :initarg :key_id
    :type cl:string
    :initform "")
   (station_id
    :reader station_id
    :initarg :station_id
    :type cl:fixnum
    :initform 0)
   (station_type
    :reader station_type
    :initarg :station_type
    :type cl:fixnum
    :initform 0)
   (delay_time
    :reader delay_time
    :initarg :delay_time
    :type cl:fixnum
    :initform 0)
   (timeout_value
    :reader timeout_value
    :initarg :timeout_value
    :type cl:fixnum
    :initform 0)
   (start_turn_right
    :reader start_turn_right
    :initarg :start_turn_right
    :type cl:fixnum
    :initform 0)
   (end_turn_right
    :reader end_turn_right
    :initarg :end_turn_right
    :type cl:fixnum
    :initform 0)
   (start_straight
    :reader start_straight
    :initarg :start_straight
    :type cl:fixnum
    :initform 0)
   (end_straight
    :reader end_straight
    :initarg :end_straight
    :type cl:fixnum
    :initform 0)
   (start_turn_left
    :reader start_turn_left
    :initarg :start_turn_left
    :type cl:fixnum
    :initform 0)
   (end_turn_left
    :reader end_turn_left
    :initarg :end_turn_left
    :type cl:fixnum
    :initform 0)
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass samsung_station_id (<samsung_station_id>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <samsung_station_id>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'samsung_station_id)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name samsungcmd_msgs-msg:<samsung_station_id> is deprecated: use samsungcmd_msgs-msg:samsung_station_id instead.")))

(cl:ensure-generic-function 'key_id-val :lambda-list '(m))
(cl:defmethod key_id-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:key_id-val is deprecated.  Use samsungcmd_msgs-msg:key_id instead.")
  (key_id m))

(cl:ensure-generic-function 'station_id-val :lambda-list '(m))
(cl:defmethod station_id-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:station_id-val is deprecated.  Use samsungcmd_msgs-msg:station_id instead.")
  (station_id m))

(cl:ensure-generic-function 'station_type-val :lambda-list '(m))
(cl:defmethod station_type-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:station_type-val is deprecated.  Use samsungcmd_msgs-msg:station_type instead.")
  (station_type m))

(cl:ensure-generic-function 'delay_time-val :lambda-list '(m))
(cl:defmethod delay_time-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:delay_time-val is deprecated.  Use samsungcmd_msgs-msg:delay_time instead.")
  (delay_time m))

(cl:ensure-generic-function 'timeout_value-val :lambda-list '(m))
(cl:defmethod timeout_value-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:timeout_value-val is deprecated.  Use samsungcmd_msgs-msg:timeout_value instead.")
  (timeout_value m))

(cl:ensure-generic-function 'start_turn_right-val :lambda-list '(m))
(cl:defmethod start_turn_right-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:start_turn_right-val is deprecated.  Use samsungcmd_msgs-msg:start_turn_right instead.")
  (start_turn_right m))

(cl:ensure-generic-function 'end_turn_right-val :lambda-list '(m))
(cl:defmethod end_turn_right-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:end_turn_right-val is deprecated.  Use samsungcmd_msgs-msg:end_turn_right instead.")
  (end_turn_right m))

(cl:ensure-generic-function 'start_straight-val :lambda-list '(m))
(cl:defmethod start_straight-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:start_straight-val is deprecated.  Use samsungcmd_msgs-msg:start_straight instead.")
  (start_straight m))

(cl:ensure-generic-function 'end_straight-val :lambda-list '(m))
(cl:defmethod end_straight-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:end_straight-val is deprecated.  Use samsungcmd_msgs-msg:end_straight instead.")
  (end_straight m))

(cl:ensure-generic-function 'start_turn_left-val :lambda-list '(m))
(cl:defmethod start_turn_left-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:start_turn_left-val is deprecated.  Use samsungcmd_msgs-msg:start_turn_left instead.")
  (start_turn_left m))

(cl:ensure-generic-function 'end_turn_left-val :lambda-list '(m))
(cl:defmethod end_turn_left-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:end_turn_left-val is deprecated.  Use samsungcmd_msgs-msg:end_turn_left instead.")
  (end_turn_left m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <samsung_station_id>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader samsungcmd_msgs-msg:update_time-val is deprecated.  Use samsungcmd_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <samsung_station_id>) ostream)
  "Serializes a message object of type '<samsung_station_id>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delay_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'delay_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeout_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeout_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_turn_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_turn_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_turn_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_turn_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_straight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_straight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_straight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_straight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_turn_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_turn_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_turn_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_turn_left)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <samsung_station_id>) istream)
  "Deserializes a message object of type '<samsung_station_id>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delay_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'delay_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeout_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeout_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_turn_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_turn_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_turn_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_turn_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_straight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_straight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_straight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_straight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_turn_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_turn_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_turn_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_turn_left)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<samsung_station_id>)))
  "Returns string type for a message object of type '<samsung_station_id>"
  "samsungcmd_msgs/samsung_station_id")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'samsung_station_id)))
  "Returns string type for a message object of type 'samsung_station_id"
  "samsungcmd_msgs/samsung_station_id")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<samsung_station_id>)))
  "Returns md5sum for a message object of type '<samsung_station_id>"
  "f001fc825a44832e3c37deefba7596b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'samsung_station_id)))
  "Returns md5sum for a message object of type 'samsung_station_id"
  "f001fc825a44832e3c37deefba7596b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<samsung_station_id>)))
  "Returns full string definition for message of type '<samsung_station_id>"
  (cl:format cl:nil "string 	key_id~%uint16  station_id~%uint8 	station_type		# 0: sAnti-collision/1:direction-id~%uint16 	delay_time		    # 0: - /1:keep time for straight-run~%uint16 	timeout_value  		# 0: no respone for sAnti-collision/ 1:check out codition of turn	~%uint16 	start_turn_right 	# 0: - /1:range start for turn-right	~%uint16 	end_turn_right 		# 0: - /1:range end for turn-right~%uint16 	start_straight 		# 0: - /1:range start for straight	~%uint16 	end_straight 		# 0: - /1:range end for straight~%uint16 	start_turn_left 	# 0: - /1:range start for turn-left	~%uint16 	end_turn_left 		# 0: - /1:range end for turn-left~%string 	update_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'samsung_station_id)))
  "Returns full string definition for message of type 'samsung_station_id"
  (cl:format cl:nil "string 	key_id~%uint16  station_id~%uint8 	station_type		# 0: sAnti-collision/1:direction-id~%uint16 	delay_time		    # 0: - /1:keep time for straight-run~%uint16 	timeout_value  		# 0: no respone for sAnti-collision/ 1:check out codition of turn	~%uint16 	start_turn_right 	# 0: - /1:range start for turn-right	~%uint16 	end_turn_right 		# 0: - /1:range end for turn-right~%uint16 	start_straight 		# 0: - /1:range start for straight	~%uint16 	end_straight 		# 0: - /1:range end for straight~%uint16 	start_turn_left 	# 0: - /1:range start for turn-left	~%uint16 	end_turn_left 		# 0: - /1:range end for turn-left~%string 	update_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <samsung_station_id>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key_id))
     2
     1
     2
     2
     2
     2
     2
     2
     2
     2
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <samsung_station_id>))
  "Converts a ROS message object to a list"
  (cl:list 'samsung_station_id
    (cl:cons ':key_id (key_id msg))
    (cl:cons ':station_id (station_id msg))
    (cl:cons ':station_type (station_type msg))
    (cl:cons ':delay_time (delay_time msg))
    (cl:cons ':timeout_value (timeout_value msg))
    (cl:cons ':start_turn_right (start_turn_right msg))
    (cl:cons ':end_turn_right (end_turn_right msg))
    (cl:cons ':start_straight (start_straight msg))
    (cl:cons ':end_straight (end_straight msg))
    (cl:cons ':start_turn_left (start_turn_left msg))
    (cl:cons ':end_turn_left (end_turn_left msg))
    (cl:cons ':update_time (update_time msg))
))
