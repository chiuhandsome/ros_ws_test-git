; Auto-generated. Do not edit!


(cl:in-package cellctrl_control_msgs-msg)


;//! \htmlinclude cell_operatehistory.msg.html

(cl:defclass <cell_operatehistory> (roslisp-msg-protocol:ros-message)
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
   (operate_name
    :reader operate_name
    :initarg :operate_name
    :type cl:string
    :initform "")
   (operate_type
    :reader operate_type
    :initarg :operate_type
    :type cl:fixnum
    :initform 0)
   (operate_code
    :reader operate_code
    :initarg :operate_code
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass cell_operatehistory (<cell_operatehistory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cell_operatehistory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cell_operatehistory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-msg:<cell_operatehistory> is deprecated: use cellctrl_control_msgs-msg:cell_operatehistory instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <cell_operatehistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:primary_id-val is deprecated.  Use cellctrl_control_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'foreign_key-val :lambda-list '(m))
(cl:defmethod foreign_key-val ((m <cell_operatehistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:foreign_key-val is deprecated.  Use cellctrl_control_msgs-msg:foreign_key instead.")
  (foreign_key m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <cell_operatehistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:unique_code-val is deprecated.  Use cellctrl_control_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'operate_name-val :lambda-list '(m))
(cl:defmethod operate_name-val ((m <cell_operatehistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:operate_name-val is deprecated.  Use cellctrl_control_msgs-msg:operate_name instead.")
  (operate_name m))

(cl:ensure-generic-function 'operate_type-val :lambda-list '(m))
(cl:defmethod operate_type-val ((m <cell_operatehistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:operate_type-val is deprecated.  Use cellctrl_control_msgs-msg:operate_type instead.")
  (operate_type m))

(cl:ensure-generic-function 'operate_code-val :lambda-list '(m))
(cl:defmethod operate_code-val ((m <cell_operatehistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:operate_code-val is deprecated.  Use cellctrl_control_msgs-msg:operate_code instead.")
  (operate_code m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <cell_operatehistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:update_time-val is deprecated.  Use cellctrl_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cell_operatehistory>) ostream)
  "Serializes a message object of type '<cell_operatehistory>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operate_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operate_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operate_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operate_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operate_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cell_operatehistory>) istream)
  "Deserializes a message object of type '<cell_operatehistory>"
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
      (cl:setf (cl:slot-value msg 'operate_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operate_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operate_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operate_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operate_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cell_operatehistory>)))
  "Returns string type for a message object of type '<cell_operatehistory>"
  "cellctrl_control_msgs/cell_operatehistory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_operatehistory)))
  "Returns string type for a message object of type 'cell_operatehistory"
  "cellctrl_control_msgs/cell_operatehistory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cell_operatehistory>)))
  "Returns md5sum for a message object of type '<cell_operatehistory>"
  "1975cdd97c6f9c940606465108aaaf21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cell_operatehistory)))
  "Returns md5sum for a message object of type 'cell_operatehistory"
  "1975cdd97c6f9c940606465108aaaf21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cell_operatehistory>)))
  "Returns full string definition for message of type '<cell_operatehistory>"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string foreign_key~%string unique_code 		        # must-have,UNIQUE INDEX	~%string operate_name		   ~%uint8 operate_type 		 ~%string operate_code 	~%string update_time			# must-have 		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cell_operatehistory)))
  "Returns full string definition for message of type 'cell_operatehistory"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string foreign_key~%string unique_code 		        # must-have,UNIQUE INDEX	~%string operate_name		   ~%uint8 operate_type 		 ~%string operate_code 	~%string update_time			# must-have 		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cell_operatehistory>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'foreign_key))
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'operate_name))
     1
     4 (cl:length (cl:slot-value msg 'operate_code))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cell_operatehistory>))
  "Converts a ROS message object to a list"
  (cl:list 'cell_operatehistory
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':foreign_key (foreign_key msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':operate_name (operate_name msg))
    (cl:cons ':operate_type (operate_type msg))
    (cl:cons ':operate_code (operate_code msg))
    (cl:cons ':update_time (update_time msg))
))
