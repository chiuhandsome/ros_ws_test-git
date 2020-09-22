; Auto-generated. Do not edit!


(cl:in-package car_db_manager_msgs-msg)


;//! \htmlinclude ActionFunctionParameters.msg.html

(cl:defclass <ActionFunctionParameters> (roslisp-msg-protocol:ros-message)
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
   (function_level
    :reader function_level
    :initarg :function_level
    :type cl:fixnum
    :initform 0)
   (function_ac_name
    :reader function_ac_name
    :initarg :function_ac_name
    :type cl:string
    :initform "")
   (function_desc_eng
    :reader function_desc_eng
    :initarg :function_desc_eng
    :type cl:string
    :initform "")
   (function_desc_tc
    :reader function_desc_tc
    :initarg :function_desc_tc
    :type cl:string
    :initform "")
   (function_desc_sc
    :reader function_desc_sc
    :initarg :function_desc_sc
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass ActionFunctionParameters (<ActionFunctionParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionFunctionParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionFunctionParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_db_manager_msgs-msg:<ActionFunctionParameters> is deprecated: use car_db_manager_msgs-msg:ActionFunctionParameters instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:primary_id-val is deprecated.  Use car_db_manager_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:unique_code-val is deprecated.  Use car_db_manager_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'base_name-val :lambda-list '(m))
(cl:defmethod base_name-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:base_name-val is deprecated.  Use car_db_manager_msgs-msg:base_name instead.")
  (base_name m))

(cl:ensure-generic-function 'function_level-val :lambda-list '(m))
(cl:defmethod function_level-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:function_level-val is deprecated.  Use car_db_manager_msgs-msg:function_level instead.")
  (function_level m))

(cl:ensure-generic-function 'function_ac_name-val :lambda-list '(m))
(cl:defmethod function_ac_name-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:function_ac_name-val is deprecated.  Use car_db_manager_msgs-msg:function_ac_name instead.")
  (function_ac_name m))

(cl:ensure-generic-function 'function_desc_eng-val :lambda-list '(m))
(cl:defmethod function_desc_eng-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:function_desc_eng-val is deprecated.  Use car_db_manager_msgs-msg:function_desc_eng instead.")
  (function_desc_eng m))

(cl:ensure-generic-function 'function_desc_tc-val :lambda-list '(m))
(cl:defmethod function_desc_tc-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:function_desc_tc-val is deprecated.  Use car_db_manager_msgs-msg:function_desc_tc instead.")
  (function_desc_tc m))

(cl:ensure-generic-function 'function_desc_sc-val :lambda-list '(m))
(cl:defmethod function_desc_sc-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:function_desc_sc-val is deprecated.  Use car_db_manager_msgs-msg:function_desc_sc instead.")
  (function_desc_sc m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <ActionFunctionParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:update_time-val is deprecated.  Use car_db_manager_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionFunctionParameters>) ostream)
  "Serializes a message object of type '<ActionFunctionParameters>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'function_level)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'function_ac_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'function_ac_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'function_desc_eng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'function_desc_eng))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'function_desc_tc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'function_desc_tc))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'function_desc_sc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'function_desc_sc))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionFunctionParameters>) istream)
  "Deserializes a message object of type '<ActionFunctionParameters>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'function_level)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'function_ac_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'function_ac_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'function_desc_eng) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'function_desc_eng) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'function_desc_tc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'function_desc_tc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'function_desc_sc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'function_desc_sc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionFunctionParameters>)))
  "Returns string type for a message object of type '<ActionFunctionParameters>"
  "car_db_manager_msgs/ActionFunctionParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionFunctionParameters)))
  "Returns string type for a message object of type 'ActionFunctionParameters"
  "car_db_manager_msgs/ActionFunctionParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionFunctionParameters>)))
  "Returns md5sum for a message object of type '<ActionFunctionParameters>"
  "231b60cd8f4f3ff5ac535205293f42c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionFunctionParameters)))
  "Returns md5sum for a message object of type 'ActionFunctionParameters"
  "231b60cd8f4f3ff5ac535205293f42c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionFunctionParameters>)))
  "Returns full string definition for message of type '<ActionFunctionParameters>"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%uint8 function_level	~%string function_ac_name~%string function_desc_eng~%string function_desc_tc~%string function_desc_sc~%string update_time			# must-have 	  	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionFunctionParameters)))
  "Returns full string definition for message of type 'ActionFunctionParameters"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%uint8 function_level	~%string function_ac_name~%string function_desc_eng~%string function_desc_tc~%string function_desc_sc~%string update_time			# must-have 	  	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionFunctionParameters>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'base_name))
     1
     4 (cl:length (cl:slot-value msg 'function_ac_name))
     4 (cl:length (cl:slot-value msg 'function_desc_eng))
     4 (cl:length (cl:slot-value msg 'function_desc_tc))
     4 (cl:length (cl:slot-value msg 'function_desc_sc))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionFunctionParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionFunctionParameters
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':base_name (base_name msg))
    (cl:cons ':function_level (function_level msg))
    (cl:cons ':function_ac_name (function_ac_name msg))
    (cl:cons ':function_desc_eng (function_desc_eng msg))
    (cl:cons ':function_desc_tc (function_desc_tc msg))
    (cl:cons ':function_desc_sc (function_desc_sc msg))
    (cl:cons ':update_time (update_time msg))
))
