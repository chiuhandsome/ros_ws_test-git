; Auto-generated. Do not edit!


(cl:in-package cellctrl_control_msgs-msg)


;//! \htmlinclude cell_maintainhistory.msg.html

(cl:defclass <cell_maintainhistory> (roslisp-msg-protocol:ros-message)
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
   (unique_code
    :reader unique_code
    :initarg :unique_code
    :type cl:string
    :initform "")
   (maintain_name
    :reader maintain_name
    :initarg :maintain_name
    :type cl:string
    :initform "")
   (maintain_type
    :reader maintain_type
    :initarg :maintain_type
    :type cl:fixnum
    :initform 0)
   (maintain_code
    :reader maintain_code
    :initarg :maintain_code
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass cell_maintainhistory (<cell_maintainhistory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cell_maintainhistory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cell_maintainhistory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-msg:<cell_maintainhistory> is deprecated: use cellctrl_control_msgs-msg:cell_maintainhistory instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <cell_maintainhistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:primary_id-val is deprecated.  Use cellctrl_control_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'foreign_key-val :lambda-list '(m))
(cl:defmethod foreign_key-val ((m <cell_maintainhistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:foreign_key-val is deprecated.  Use cellctrl_control_msgs-msg:foreign_key instead.")
  (foreign_key m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <cell_maintainhistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:unique_code-val is deprecated.  Use cellctrl_control_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'maintain_name-val :lambda-list '(m))
(cl:defmethod maintain_name-val ((m <cell_maintainhistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:maintain_name-val is deprecated.  Use cellctrl_control_msgs-msg:maintain_name instead.")
  (maintain_name m))

(cl:ensure-generic-function 'maintain_type-val :lambda-list '(m))
(cl:defmethod maintain_type-val ((m <cell_maintainhistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:maintain_type-val is deprecated.  Use cellctrl_control_msgs-msg:maintain_type instead.")
  (maintain_type m))

(cl:ensure-generic-function 'maintain_code-val :lambda-list '(m))
(cl:defmethod maintain_code-val ((m <cell_maintainhistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:maintain_code-val is deprecated.  Use cellctrl_control_msgs-msg:maintain_code instead.")
  (maintain_code m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <cell_maintainhistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:update_time-val is deprecated.  Use cellctrl_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cell_maintainhistory>) ostream)
  "Serializes a message object of type '<cell_maintainhistory>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unique_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unique_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'maintain_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'maintain_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maintain_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'maintain_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'maintain_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cell_maintainhistory>) istream)
  "Deserializes a message object of type '<cell_maintainhistory>"
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
      (cl:setf (cl:slot-value msg 'unique_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unique_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'maintain_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'maintain_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maintain_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'maintain_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'maintain_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cell_maintainhistory>)))
  "Returns string type for a message object of type '<cell_maintainhistory>"
  "cellctrl_control_msgs/cell_maintainhistory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_maintainhistory)))
  "Returns string type for a message object of type 'cell_maintainhistory"
  "cellctrl_control_msgs/cell_maintainhistory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cell_maintainhistory>)))
  "Returns md5sum for a message object of type '<cell_maintainhistory>"
  "8bea5986a227efb1d37ca40187bb9a02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cell_maintainhistory)))
  "Returns md5sum for a message object of type 'cell_maintainhistory"
  "8bea5986a227efb1d37ca40187bb9a02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cell_maintainhistory>)))
  "Returns full string definition for message of type '<cell_maintainhistory>"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string foreign_key~%string unique_code 		        # must-have,UNIQUE INDEX	~%string maintain_name		   ~%uint8 maintain_type 		 ~%string maintain_code 	~%string update_time			# must-have 		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cell_maintainhistory)))
  "Returns full string definition for message of type 'cell_maintainhistory"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string foreign_key~%string unique_code 		        # must-have,UNIQUE INDEX	~%string maintain_name		   ~%uint8 maintain_type 		 ~%string maintain_code 	~%string update_time			# must-have 		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cell_maintainhistory>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'foreign_key))
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'maintain_name))
     1
     4 (cl:length (cl:slot-value msg 'maintain_code))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cell_maintainhistory>))
  "Converts a ROS message object to a list"
  (cl:list 'cell_maintainhistory
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':foreign_key (foreign_key msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':maintain_name (maintain_name msg))
    (cl:cons ':maintain_type (maintain_type msg))
    (cl:cons ':maintain_code (maintain_code msg))
    (cl:cons ':update_time (update_time msg))
))
