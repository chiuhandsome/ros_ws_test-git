; Auto-generated. Do not edit!


(cl:in-package cellctrl_control_msgs-msg)


;//! \htmlinclude cell_agv_main.msg.html

(cl:defclass <cell_agv_main> (roslisp-msg-protocol:ros-message)
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
   (agv_standtype
    :reader agv_standtype
    :initarg :agv_standtype
    :type cl:string
    :initform "")
   (agv_model_no
    :reader agv_model_no
    :initarg :agv_model_no
    :type cl:string
    :initform "")
   (agv_name
    :reader agv_name
    :initarg :agv_name
    :type cl:string
    :initform "")
   (agv_shape
    :reader agv_shape
    :initarg :agv_shape
    :type cl:fixnum
    :initform 0)
   (agv_shape_para0
    :reader agv_shape_para0
    :initarg :agv_shape_para0
    :type cl:float
    :initform 0.0)
   (agv_shape_para1
    :reader agv_shape_para1
    :initarg :agv_shape_para1
    :type cl:float
    :initform 0.0)
   (agv_shape_para2
    :reader agv_shape_para2
    :initarg :agv_shape_para2
    :type cl:float
    :initform 0.0)
   (agv_candidate
    :reader agv_candidate
    :initarg :agv_candidate
    :type cl:fixnum
    :initform 0)
   (agv_transfer_type
    :reader agv_transfer_type
    :initarg :agv_transfer_type
    :type cl:fixnum
    :initform 0)
   (put_in_service_date
    :reader put_in_service_date
    :initarg :put_in_service_date
    :type cl:string
    :initform "")
   (work_comulative_time
    :reader work_comulative_time
    :initarg :work_comulative_time
    :type cl:float
    :initform 0.0)
   (current_status
    :reader current_status
    :initarg :current_status
    :type cl:fixnum
    :initform 0)
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass cell_agv_main (<cell_agv_main>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cell_agv_main>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cell_agv_main)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-msg:<cell_agv_main> is deprecated: use cellctrl_control_msgs-msg:cell_agv_main instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:primary_id-val is deprecated.  Use cellctrl_control_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:unique_code-val is deprecated.  Use cellctrl_control_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'agv_standtype-val :lambda-list '(m))
(cl:defmethod agv_standtype-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_standtype-val is deprecated.  Use cellctrl_control_msgs-msg:agv_standtype instead.")
  (agv_standtype m))

(cl:ensure-generic-function 'agv_model_no-val :lambda-list '(m))
(cl:defmethod agv_model_no-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_model_no-val is deprecated.  Use cellctrl_control_msgs-msg:agv_model_no instead.")
  (agv_model_no m))

(cl:ensure-generic-function 'agv_name-val :lambda-list '(m))
(cl:defmethod agv_name-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_name-val is deprecated.  Use cellctrl_control_msgs-msg:agv_name instead.")
  (agv_name m))

(cl:ensure-generic-function 'agv_shape-val :lambda-list '(m))
(cl:defmethod agv_shape-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_shape-val is deprecated.  Use cellctrl_control_msgs-msg:agv_shape instead.")
  (agv_shape m))

(cl:ensure-generic-function 'agv_shape_para0-val :lambda-list '(m))
(cl:defmethod agv_shape_para0-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_shape_para0-val is deprecated.  Use cellctrl_control_msgs-msg:agv_shape_para0 instead.")
  (agv_shape_para0 m))

(cl:ensure-generic-function 'agv_shape_para1-val :lambda-list '(m))
(cl:defmethod agv_shape_para1-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_shape_para1-val is deprecated.  Use cellctrl_control_msgs-msg:agv_shape_para1 instead.")
  (agv_shape_para1 m))

(cl:ensure-generic-function 'agv_shape_para2-val :lambda-list '(m))
(cl:defmethod agv_shape_para2-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_shape_para2-val is deprecated.  Use cellctrl_control_msgs-msg:agv_shape_para2 instead.")
  (agv_shape_para2 m))

(cl:ensure-generic-function 'agv_candidate-val :lambda-list '(m))
(cl:defmethod agv_candidate-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_candidate-val is deprecated.  Use cellctrl_control_msgs-msg:agv_candidate instead.")
  (agv_candidate m))

(cl:ensure-generic-function 'agv_transfer_type-val :lambda-list '(m))
(cl:defmethod agv_transfer_type-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:agv_transfer_type-val is deprecated.  Use cellctrl_control_msgs-msg:agv_transfer_type instead.")
  (agv_transfer_type m))

(cl:ensure-generic-function 'put_in_service_date-val :lambda-list '(m))
(cl:defmethod put_in_service_date-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:put_in_service_date-val is deprecated.  Use cellctrl_control_msgs-msg:put_in_service_date instead.")
  (put_in_service_date m))

(cl:ensure-generic-function 'work_comulative_time-val :lambda-list '(m))
(cl:defmethod work_comulative_time-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:work_comulative_time-val is deprecated.  Use cellctrl_control_msgs-msg:work_comulative_time instead.")
  (work_comulative_time m))

(cl:ensure-generic-function 'current_status-val :lambda-list '(m))
(cl:defmethod current_status-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:current_status-val is deprecated.  Use cellctrl_control_msgs-msg:current_status instead.")
  (current_status m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <cell_agv_main>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:update_time-val is deprecated.  Use cellctrl_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cell_agv_main>) ostream)
  "Serializes a message object of type '<cell_agv_main>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agv_standtype))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agv_standtype))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agv_model_no))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agv_model_no))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agv_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agv_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agv_shape)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agv_shape_para0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agv_shape_para1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'agv_shape_para2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agv_candidate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agv_transfer_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'put_in_service_date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'put_in_service_date))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'work_comulative_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cell_agv_main>) istream)
  "Deserializes a message object of type '<cell_agv_main>"
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
      (cl:setf (cl:slot-value msg 'agv_standtype) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agv_standtype) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agv_model_no) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agv_model_no) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agv_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agv_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agv_shape)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agv_shape_para0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agv_shape_para1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'agv_shape_para2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agv_candidate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agv_transfer_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'put_in_service_date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'put_in_service_date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'work_comulative_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_status)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cell_agv_main>)))
  "Returns string type for a message object of type '<cell_agv_main>"
  "cellctrl_control_msgs/cell_agv_main")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_agv_main)))
  "Returns string type for a message object of type 'cell_agv_main"
  "cellctrl_control_msgs/cell_agv_main")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cell_agv_main>)))
  "Returns md5sum for a message object of type '<cell_agv_main>"
  "feec446d0776ec569e61a0ea7c5875f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cell_agv_main)))
  "Returns md5sum for a message object of type 'cell_agv_main"
  "feec446d0776ec569e61a0ea7c5875f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cell_agv_main>)))
  "Returns full string definition for message of type '<cell_agv_main>"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)~%string unique_code 		        # must-have,UNIQUE INDEX	~%string agv_standtype		   ~%string agv_model_no 		 ~%string agv_name 		 ~%uint8  agv_shape 	~%float32 agv_shape_para0 ~%float32 agv_shape_para1 ~%float32 agv_shape_para2 	~%uint8  agv_candidate ~%uint8  agv_transfer_type~%string put_in_service_date~%float32 work_comulative_time~%uint8 current_status~%string update_time			# must-have 	 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cell_agv_main)))
  "Returns full string definition for message of type 'cell_agv_main"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)~%string unique_code 		        # must-have,UNIQUE INDEX	~%string agv_standtype		   ~%string agv_model_no 		 ~%string agv_name 		 ~%uint8  agv_shape 	~%float32 agv_shape_para0 ~%float32 agv_shape_para1 ~%float32 agv_shape_para2 	~%uint8  agv_candidate ~%uint8  agv_transfer_type~%string put_in_service_date~%float32 work_comulative_time~%uint8 current_status~%string update_time			# must-have 	 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cell_agv_main>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'agv_standtype))
     4 (cl:length (cl:slot-value msg 'agv_model_no))
     4 (cl:length (cl:slot-value msg 'agv_name))
     1
     4
     4
     4
     1
     1
     4 (cl:length (cl:slot-value msg 'put_in_service_date))
     4
     1
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cell_agv_main>))
  "Converts a ROS message object to a list"
  (cl:list 'cell_agv_main
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':agv_standtype (agv_standtype msg))
    (cl:cons ':agv_model_no (agv_model_no msg))
    (cl:cons ':agv_name (agv_name msg))
    (cl:cons ':agv_shape (agv_shape msg))
    (cl:cons ':agv_shape_para0 (agv_shape_para0 msg))
    (cl:cons ':agv_shape_para1 (agv_shape_para1 msg))
    (cl:cons ':agv_shape_para2 (agv_shape_para2 msg))
    (cl:cons ':agv_candidate (agv_candidate msg))
    (cl:cons ':agv_transfer_type (agv_transfer_type msg))
    (cl:cons ':put_in_service_date (put_in_service_date msg))
    (cl:cons ':work_comulative_time (work_comulative_time msg))
    (cl:cons ':current_status (current_status msg))
    (cl:cons ':update_time (update_time msg))
))
