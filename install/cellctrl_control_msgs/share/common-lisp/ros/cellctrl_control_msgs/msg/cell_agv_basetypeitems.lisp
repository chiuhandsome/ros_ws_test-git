; Auto-generated. Do not edit!


(cl:in-package cellctrl_control_msgs-msg)


;//! \htmlinclude cell_agv_basetypeitems.msg.html

(cl:defclass <cell_agv_basetypeitems> (roslisp-msg-protocol:ros-message)
  ((primary_id
    :reader primary_id
    :initarg :primary_id
    :type cl:string
    :initform "")
   (foreign_key
    :reader foreign_key
    :initarg :foreign_key
    :type cl:string
    :initform "")
   (device_code
    :reader device_code
    :initarg :device_code
    :type cl:string
    :initform "")
   (device_serno
    :reader device_serno
    :initarg :device_serno
    :type cl:fixnum
    :initform 0)
   (unique_code
    :reader unique_code
    :initarg :unique_code
    :type cl:string
    :initform "")
   (device_tagname
    :reader device_tagname
    :initarg :device_tagname
    :type cl:string
    :initform "")
   (device_tagdesc_TC
    :reader device_tagdesc_TC
    :initarg :device_tagdesc_TC
    :type cl:string
    :initform "")
   (device_tagdesc_SC
    :reader device_tagdesc_SC
    :initarg :device_tagdesc_SC
    :type cl:string
    :initform "")
   (device_tagdesc_E
    :reader device_tagdesc_E
    :initarg :device_tagdesc_E
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass cell_agv_basetypeitems (<cell_agv_basetypeitems>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cell_agv_basetypeitems>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cell_agv_basetypeitems)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-msg:<cell_agv_basetypeitems> is deprecated: use cellctrl_control_msgs-msg:cell_agv_basetypeitems instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:primary_id-val is deprecated.  Use cellctrl_control_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'foreign_key-val :lambda-list '(m))
(cl:defmethod foreign_key-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:foreign_key-val is deprecated.  Use cellctrl_control_msgs-msg:foreign_key instead.")
  (foreign_key m))

(cl:ensure-generic-function 'device_code-val :lambda-list '(m))
(cl:defmethod device_code-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:device_code-val is deprecated.  Use cellctrl_control_msgs-msg:device_code instead.")
  (device_code m))

(cl:ensure-generic-function 'device_serno-val :lambda-list '(m))
(cl:defmethod device_serno-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:device_serno-val is deprecated.  Use cellctrl_control_msgs-msg:device_serno instead.")
  (device_serno m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:unique_code-val is deprecated.  Use cellctrl_control_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'device_tagname-val :lambda-list '(m))
(cl:defmethod device_tagname-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:device_tagname-val is deprecated.  Use cellctrl_control_msgs-msg:device_tagname instead.")
  (device_tagname m))

(cl:ensure-generic-function 'device_tagdesc_TC-val :lambda-list '(m))
(cl:defmethod device_tagdesc_TC-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:device_tagdesc_TC-val is deprecated.  Use cellctrl_control_msgs-msg:device_tagdesc_TC instead.")
  (device_tagdesc_TC m))

(cl:ensure-generic-function 'device_tagdesc_SC-val :lambda-list '(m))
(cl:defmethod device_tagdesc_SC-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:device_tagdesc_SC-val is deprecated.  Use cellctrl_control_msgs-msg:device_tagdesc_SC instead.")
  (device_tagdesc_SC m))

(cl:ensure-generic-function 'device_tagdesc_E-val :lambda-list '(m))
(cl:defmethod device_tagdesc_E-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:device_tagdesc_E-val is deprecated.  Use cellctrl_control_msgs-msg:device_tagdesc_E instead.")
  (device_tagdesc_E m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <cell_agv_basetypeitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:update_time-val is deprecated.  Use cellctrl_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cell_agv_basetypeitems>) ostream)
  "Serializes a message object of type '<cell_agv_basetypeitems>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'primary_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'primary_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'foreign_key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'foreign_key))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_code))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'device_serno)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unique_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unique_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_tagname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_tagname))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_tagdesc_TC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_tagdesc_TC))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_tagdesc_SC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_tagdesc_SC))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_tagdesc_E))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_tagdesc_E))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cell_agv_basetypeitems>) istream)
  "Deserializes a message object of type '<cell_agv_basetypeitems>"
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
      (cl:setf (cl:slot-value msg 'foreign_key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'foreign_key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'device_serno)) (cl:read-byte istream))
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
      (cl:setf (cl:slot-value msg 'device_tagname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_tagname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_tagdesc_TC) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_tagdesc_TC) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_tagdesc_SC) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_tagdesc_SC) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_tagdesc_E) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_tagdesc_E) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cell_agv_basetypeitems>)))
  "Returns string type for a message object of type '<cell_agv_basetypeitems>"
  "cellctrl_control_msgs/cell_agv_basetypeitems")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_agv_basetypeitems)))
  "Returns string type for a message object of type 'cell_agv_basetypeitems"
  "cellctrl_control_msgs/cell_agv_basetypeitems")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cell_agv_basetypeitems>)))
  "Returns md5sum for a message object of type '<cell_agv_basetypeitems>"
  "2b98f1617feb9698e8478fb3dda2fb17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cell_agv_basetypeitems)))
  "Returns md5sum for a message object of type 'cell_agv_basetypeitems"
  "2b98f1617feb9698e8478fb3dda2fb17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cell_agv_basetypeitems>)))
  "Returns full string definition for message of type '<cell_agv_basetypeitems>"
  (cl:format cl:nil "string primary_id 			# must-have,UUID : primary_key(system_id)			~%string foreign_key 		       	# foreign-key	~%string device_code		   ~%uint8  device_serno ~%string unique_code			# must-have,UNIQUE INDEX		 ~%string device_tagname 		 ~%string device_tagdesc_TC 	~%string device_tagdesc_SC ~%string device_tagdesc_E 	 ~%string update_time 			# must-have		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cell_agv_basetypeitems)))
  "Returns full string definition for message of type 'cell_agv_basetypeitems"
  (cl:format cl:nil "string primary_id 			# must-have,UUID : primary_key(system_id)			~%string foreign_key 		       	# foreign-key	~%string device_code		   ~%uint8  device_serno ~%string unique_code			# must-have,UNIQUE INDEX		 ~%string device_tagname 		 ~%string device_tagdesc_TC 	~%string device_tagdesc_SC ~%string device_tagdesc_E 	 ~%string update_time 			# must-have		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cell_agv_basetypeitems>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'foreign_key))
     4 (cl:length (cl:slot-value msg 'device_code))
     1
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'device_tagname))
     4 (cl:length (cl:slot-value msg 'device_tagdesc_TC))
     4 (cl:length (cl:slot-value msg 'device_tagdesc_SC))
     4 (cl:length (cl:slot-value msg 'device_tagdesc_E))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cell_agv_basetypeitems>))
  "Converts a ROS message object to a list"
  (cl:list 'cell_agv_basetypeitems
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':foreign_key (foreign_key msg))
    (cl:cons ':device_code (device_code msg))
    (cl:cons ':device_serno (device_serno msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':device_tagname (device_tagname msg))
    (cl:cons ':device_tagdesc_TC (device_tagdesc_TC msg))
    (cl:cons ':device_tagdesc_SC (device_tagdesc_SC msg))
    (cl:cons ':device_tagdesc_E (device_tagdesc_E msg))
    (cl:cons ':update_time (update_time msg))
))
