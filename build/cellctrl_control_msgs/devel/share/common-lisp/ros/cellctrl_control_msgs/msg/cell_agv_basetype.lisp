; Auto-generated. Do not edit!


(cl:in-package cellctrl_control_msgs-msg)


;//! \htmlinclude cell_agv_basetype.msg.html

(cl:defclass <cell_agv_basetype> (roslisp-msg-protocol:ros-message)
  ((primary_id
    :reader primary_id
    :initarg :primary_id
    :type cl:string
    :initform "")
   (unique_code
    :reader unique_code
    :initarg :unique_code
    :type cl:string
    :initform "")
   (base_name
    :reader base_name
    :initarg :base_name
    :type cl:string
    :initform "")
   (base_desc_TC
    :reader base_desc_TC
    :initarg :base_desc_TC
    :type cl:string
    :initform "")
   (base_desc_SC
    :reader base_desc_SC
    :initarg :base_desc_SC
    :type cl:string
    :initform "")
   (base_desc_E
    :reader base_desc_E
    :initarg :base_desc_E
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass cell_agv_basetype (<cell_agv_basetype>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cell_agv_basetype>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cell_agv_basetype)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-msg:<cell_agv_basetype> is deprecated: use cellctrl_control_msgs-msg:cell_agv_basetype instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <cell_agv_basetype>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:primary_id-val is deprecated.  Use cellctrl_control_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <cell_agv_basetype>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:unique_code-val is deprecated.  Use cellctrl_control_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'base_name-val :lambda-list '(m))
(cl:defmethod base_name-val ((m <cell_agv_basetype>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:base_name-val is deprecated.  Use cellctrl_control_msgs-msg:base_name instead.")
  (base_name m))

(cl:ensure-generic-function 'base_desc_TC-val :lambda-list '(m))
(cl:defmethod base_desc_TC-val ((m <cell_agv_basetype>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:base_desc_TC-val is deprecated.  Use cellctrl_control_msgs-msg:base_desc_TC instead.")
  (base_desc_TC m))

(cl:ensure-generic-function 'base_desc_SC-val :lambda-list '(m))
(cl:defmethod base_desc_SC-val ((m <cell_agv_basetype>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:base_desc_SC-val is deprecated.  Use cellctrl_control_msgs-msg:base_desc_SC instead.")
  (base_desc_SC m))

(cl:ensure-generic-function 'base_desc_E-val :lambda-list '(m))
(cl:defmethod base_desc_E-val ((m <cell_agv_basetype>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:base_desc_E-val is deprecated.  Use cellctrl_control_msgs-msg:base_desc_E instead.")
  (base_desc_E m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <cell_agv_basetype>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:update_time-val is deprecated.  Use cellctrl_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cell_agv_basetype>) ostream)
  "Serializes a message object of type '<cell_agv_basetype>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'primary_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'primary_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unique_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unique_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_desc_TC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_desc_TC))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_desc_SC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_desc_SC))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_desc_E))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_desc_E))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cell_agv_basetype>) istream)
  "Deserializes a message object of type '<cell_agv_basetype>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'primary_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'primary_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unique_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unique_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_desc_TC) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_desc_TC) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_desc_SC) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_desc_SC) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_desc_E) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_desc_E) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cell_agv_basetype>)))
  "Returns string type for a message object of type '<cell_agv_basetype>"
  "cellctrl_control_msgs/cell_agv_basetype")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_agv_basetype)))
  "Returns string type for a message object of type 'cell_agv_basetype"
  "cellctrl_control_msgs/cell_agv_basetype")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cell_agv_basetype>)))
  "Returns md5sum for a message object of type '<cell_agv_basetype>"
  "7cae712ba514c2339344eb5e99f552cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cell_agv_basetype)))
  "Returns md5sum for a message object of type 'cell_agv_basetype"
  "7cae712ba514c2339344eb5e99f552cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cell_agv_basetype>)))
  "Returns full string definition for message of type '<cell_agv_basetype>"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX	~%string base_name		   ~%string base_desc_TC 		 ~%string base_desc_SC 		 ~%string base_desc_E 		 ~%string update_time			# must-have 		~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cell_agv_basetype)))
  "Returns full string definition for message of type 'cell_agv_basetype"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX	~%string base_name		   ~%string base_desc_TC 		 ~%string base_desc_SC 		 ~%string base_desc_E 		 ~%string update_time			# must-have 		~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cell_agv_basetype>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'base_name))
     4 (cl:length (cl:slot-value msg 'base_desc_TC))
     4 (cl:length (cl:slot-value msg 'base_desc_SC))
     4 (cl:length (cl:slot-value msg 'base_desc_E))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cell_agv_basetype>))
  "Converts a ROS message object to a list"
  (cl:list 'cell_agv_basetype
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':base_name (base_name msg))
    (cl:cons ':base_desc_TC (base_desc_TC msg))
    (cl:cons ':base_desc_SC (base_desc_SC msg))
    (cl:cons ':base_desc_E (base_desc_E msg))
    (cl:cons ':update_time (update_time msg))
))