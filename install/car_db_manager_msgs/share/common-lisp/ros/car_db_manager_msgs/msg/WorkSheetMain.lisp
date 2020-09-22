; Auto-generated. Do not edit!


(cl:in-package car_db_manager_msgs-msg)


;//! \htmlinclude WorkSheetMain.msg.html

(cl:defclass <WorkSheetMain> (roslisp-msg-protocol:ros-message)
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
   (occur_time
    :reader occur_time
    :initarg :occur_time
    :type cl:string
    :initform "")
   (workitems_num
    :reader workitems_num
    :initarg :workitems_num
    :type cl:fixnum
    :initform 0)
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass WorkSheetMain (<WorkSheetMain>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkSheetMain>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkSheetMain)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_db_manager_msgs-msg:<WorkSheetMain> is deprecated: use car_db_manager_msgs-msg:WorkSheetMain instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <WorkSheetMain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:primary_id-val is deprecated.  Use car_db_manager_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <WorkSheetMain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:unique_code-val is deprecated.  Use car_db_manager_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'base_name-val :lambda-list '(m))
(cl:defmethod base_name-val ((m <WorkSheetMain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:base_name-val is deprecated.  Use car_db_manager_msgs-msg:base_name instead.")
  (base_name m))

(cl:ensure-generic-function 'occur_time-val :lambda-list '(m))
(cl:defmethod occur_time-val ((m <WorkSheetMain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:occur_time-val is deprecated.  Use car_db_manager_msgs-msg:occur_time instead.")
  (occur_time m))

(cl:ensure-generic-function 'workitems_num-val :lambda-list '(m))
(cl:defmethod workitems_num-val ((m <WorkSheetMain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:workitems_num-val is deprecated.  Use car_db_manager_msgs-msg:workitems_num instead.")
  (workitems_num m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <WorkSheetMain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:update_time-val is deprecated.  Use car_db_manager_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkSheetMain>) ostream)
  "Serializes a message object of type '<WorkSheetMain>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'occur_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'occur_time))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'workitems_num)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkSheetMain>) istream)
  "Deserializes a message object of type '<WorkSheetMain>"
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
      (cl:setf (cl:slot-value msg 'occur_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'occur_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'workitems_num)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkSheetMain>)))
  "Returns string type for a message object of type '<WorkSheetMain>"
  "car_db_manager_msgs/WorkSheetMain")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkSheetMain)))
  "Returns string type for a message object of type 'WorkSheetMain"
  "car_db_manager_msgs/WorkSheetMain")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkSheetMain>)))
  "Returns md5sum for a message object of type '<WorkSheetMain>"
  "e2f31b772c997b6902aa171af4bda02e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkSheetMain)))
  "Returns md5sum for a message object of type 'WorkSheetMain"
  "e2f31b772c997b6902aa171af4bda02e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkSheetMain>)))
  "Returns full string definition for message of type '<WorkSheetMain>"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%string occur_time~%uint8 workitems_num~%string update_time			# must-have 	 ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkSheetMain)))
  "Returns full string definition for message of type 'WorkSheetMain"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%string occur_time~%uint8 workitems_num~%string update_time			# must-have 	 ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkSheetMain>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'base_name))
     4 (cl:length (cl:slot-value msg 'occur_time))
     1
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkSheetMain>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkSheetMain
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':base_name (base_name msg))
    (cl:cons ':occur_time (occur_time msg))
    (cl:cons ':workitems_num (workitems_num msg))
    (cl:cons ':update_time (update_time msg))
))
