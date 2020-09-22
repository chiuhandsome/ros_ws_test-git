; Auto-generated. Do not edit!


(cl:in-package cellctrl_control_msgs-msg)


;//! \htmlinclude base_cell_controller.msg.html

(cl:defclass <base_cell_controller> (roslisp-msg-protocol:ros-message)
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
   (map_filename
    :reader map_filename
    :initarg :map_filename
    :type cl:string
    :initform "")
   (map_resolution
    :reader map_resolution
    :initarg :map_resolution
    :type cl:float
    :initform 0.0)
   (map_width
    :reader map_width
    :initarg :map_width
    :type cl:integer
    :initform 0)
   (map_height
    :reader map_height
    :initarg :map_height
    :type cl:integer
    :initform 0)
   (map_origin
    :reader map_origin
    :initarg :map_origin
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass base_cell_controller (<base_cell_controller>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <base_cell_controller>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'base_cell_controller)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-msg:<base_cell_controller> is deprecated: use cellctrl_control_msgs-msg:base_cell_controller instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:primary_id-val is deprecated.  Use cellctrl_control_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:unique_code-val is deprecated.  Use cellctrl_control_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'base_name-val :lambda-list '(m))
(cl:defmethod base_name-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:base_name-val is deprecated.  Use cellctrl_control_msgs-msg:base_name instead.")
  (base_name m))

(cl:ensure-generic-function 'base_desc_TC-val :lambda-list '(m))
(cl:defmethod base_desc_TC-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:base_desc_TC-val is deprecated.  Use cellctrl_control_msgs-msg:base_desc_TC instead.")
  (base_desc_TC m))

(cl:ensure-generic-function 'base_desc_SC-val :lambda-list '(m))
(cl:defmethod base_desc_SC-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:base_desc_SC-val is deprecated.  Use cellctrl_control_msgs-msg:base_desc_SC instead.")
  (base_desc_SC m))

(cl:ensure-generic-function 'base_desc_E-val :lambda-list '(m))
(cl:defmethod base_desc_E-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:base_desc_E-val is deprecated.  Use cellctrl_control_msgs-msg:base_desc_E instead.")
  (base_desc_E m))

(cl:ensure-generic-function 'map_filename-val :lambda-list '(m))
(cl:defmethod map_filename-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:map_filename-val is deprecated.  Use cellctrl_control_msgs-msg:map_filename instead.")
  (map_filename m))

(cl:ensure-generic-function 'map_resolution-val :lambda-list '(m))
(cl:defmethod map_resolution-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:map_resolution-val is deprecated.  Use cellctrl_control_msgs-msg:map_resolution instead.")
  (map_resolution m))

(cl:ensure-generic-function 'map_width-val :lambda-list '(m))
(cl:defmethod map_width-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:map_width-val is deprecated.  Use cellctrl_control_msgs-msg:map_width instead.")
  (map_width m))

(cl:ensure-generic-function 'map_height-val :lambda-list '(m))
(cl:defmethod map_height-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:map_height-val is deprecated.  Use cellctrl_control_msgs-msg:map_height instead.")
  (map_height m))

(cl:ensure-generic-function 'map_origin-val :lambda-list '(m))
(cl:defmethod map_origin-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:map_origin-val is deprecated.  Use cellctrl_control_msgs-msg:map_origin instead.")
  (map_origin m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <base_cell_controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:update_time-val is deprecated.  Use cellctrl_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <base_cell_controller>) ostream)
  "Serializes a message object of type '<base_cell_controller>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_filename))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_height)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_origin) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <base_cell_controller>) istream)
  "Deserializes a message object of type '<base_cell_controller>"
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
      (cl:setf (cl:slot-value msg 'map_filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'map_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_height)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_origin) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<base_cell_controller>)))
  "Returns string type for a message object of type '<base_cell_controller>"
  "cellctrl_control_msgs/base_cell_controller")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'base_cell_controller)))
  "Returns string type for a message object of type 'base_cell_controller"
  "cellctrl_control_msgs/base_cell_controller")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<base_cell_controller>)))
  "Returns md5sum for a message object of type '<base_cell_controller>"
  "c1c018323d24ed001e8bac4437bffe2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'base_cell_controller)))
  "Returns md5sum for a message object of type 'base_cell_controller"
  "c1c018323d24ed001e8bac4437bffe2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<base_cell_controller>)))
  "Returns full string definition for message of type '<base_cell_controller>"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX	~%string base_name		   ~%string base_desc_TC 		 ~%string base_desc_SC 		 ~%string base_desc_E ~%string map_filename ~%float32 map_resolution	~%uint32 map_width~%uint32 map_height~%geometry_msgs/Pose map_origin	 ~%string update_time			# must-have 	  		 ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'base_cell_controller)))
  "Returns full string definition for message of type 'base_cell_controller"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX	~%string base_name		   ~%string base_desc_TC 		 ~%string base_desc_SC 		 ~%string base_desc_E ~%string map_filename ~%float32 map_resolution	~%uint32 map_width~%uint32 map_height~%geometry_msgs/Pose map_origin	 ~%string update_time			# must-have 	  		 ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <base_cell_controller>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'base_name))
     4 (cl:length (cl:slot-value msg 'base_desc_TC))
     4 (cl:length (cl:slot-value msg 'base_desc_SC))
     4 (cl:length (cl:slot-value msg 'base_desc_E))
     4 (cl:length (cl:slot-value msg 'map_filename))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_origin))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <base_cell_controller>))
  "Converts a ROS message object to a list"
  (cl:list 'base_cell_controller
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':base_name (base_name msg))
    (cl:cons ':base_desc_TC (base_desc_TC msg))
    (cl:cons ':base_desc_SC (base_desc_SC msg))
    (cl:cons ':base_desc_E (base_desc_E msg))
    (cl:cons ':map_filename (map_filename msg))
    (cl:cons ':map_resolution (map_resolution msg))
    (cl:cons ':map_width (map_width msg))
    (cl:cons ':map_height (map_height msg))
    (cl:cons ':map_origin (map_origin msg))
    (cl:cons ':update_time (update_time msg))
))
