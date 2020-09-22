; Auto-generated. Do not edit!


(cl:in-package car_db_manager_msgs-msg)


;//! \htmlinclude car_db_processGoal.msg.html

(cl:defclass <car_db_processGoal> (roslisp-msg-protocol:ros-message)
  ((table_name
    :reader table_name
    :initarg :table_name
    :type cl:string
    :initform "")
   (cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (query_base_index
    :reader query_base_index
    :initarg :query_base_index
    :type cl:fixnum
    :initform 0)
   (query_opt_index
    :reader query_opt_index
    :initarg :query_opt_index
    :type cl:fixnum
    :initform 0)
   (query_parameter
    :reader query_parameter
    :initarg :query_parameter
    :type cl:string
    :initform "")
   (update_data
    :reader update_data
    :initarg :update_data
    :type cl:string
    :initform ""))
)

(cl:defclass car_db_processGoal (<car_db_processGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <car_db_processGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'car_db_processGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_db_manager_msgs-msg:<car_db_processGoal> is deprecated: use car_db_manager_msgs-msg:car_db_processGoal instead.")))

(cl:ensure-generic-function 'table_name-val :lambda-list '(m))
(cl:defmethod table_name-val ((m <car_db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:table_name-val is deprecated.  Use car_db_manager_msgs-msg:table_name instead.")
  (table_name m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <car_db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:cmd_id-val is deprecated.  Use car_db_manager_msgs-msg:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'query_base_index-val :lambda-list '(m))
(cl:defmethod query_base_index-val ((m <car_db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:query_base_index-val is deprecated.  Use car_db_manager_msgs-msg:query_base_index instead.")
  (query_base_index m))

(cl:ensure-generic-function 'query_opt_index-val :lambda-list '(m))
(cl:defmethod query_opt_index-val ((m <car_db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:query_opt_index-val is deprecated.  Use car_db_manager_msgs-msg:query_opt_index instead.")
  (query_opt_index m))

(cl:ensure-generic-function 'query_parameter-val :lambda-list '(m))
(cl:defmethod query_parameter-val ((m <car_db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:query_parameter-val is deprecated.  Use car_db_manager_msgs-msg:query_parameter instead.")
  (query_parameter m))

(cl:ensure-generic-function 'update_data-val :lambda-list '(m))
(cl:defmethod update_data-val ((m <car_db_processGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-msg:update_data-val is deprecated.  Use car_db_manager_msgs-msg:update_data instead.")
  (update_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <car_db_processGoal>) ostream)
  "Serializes a message object of type '<car_db_processGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'table_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'table_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'query_base_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'query_opt_index)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query_parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query_parameter))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <car_db_processGoal>) istream)
  "Deserializes a message object of type '<car_db_processGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'table_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'table_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'query_base_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'query_opt_index)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query_parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query_parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'update_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'update_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<car_db_processGoal>)))
  "Returns string type for a message object of type '<car_db_processGoal>"
  "car_db_manager_msgs/car_db_processGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'car_db_processGoal)))
  "Returns string type for a message object of type 'car_db_processGoal"
  "car_db_manager_msgs/car_db_processGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<car_db_processGoal>)))
  "Returns md5sum for a message object of type '<car_db_processGoal>"
  "737f008ced6cd8feb92cd760de154321")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'car_db_processGoal)))
  "Returns md5sum for a message object of type 'car_db_processGoal"
  "737f008ced6cd8feb92cd760de154321")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<car_db_processGoal>)))
  "Returns full string definition for message of type '<car_db_processGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string table_name ~%uint8 cmd_id         	# 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh 99:interrupt	~%uint8 query_base_index 	~%uint8 query_opt_index~%string query_parameter ~%string update_data	# delimiter symbol ==> ,~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'car_db_processGoal)))
  "Returns full string definition for message of type 'car_db_processGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string table_name ~%uint8 cmd_id         	# 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh 99:interrupt	~%uint8 query_base_index 	~%uint8 query_opt_index~%string query_parameter ~%string update_data	# delimiter symbol ==> ,~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <car_db_processGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'table_name))
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'query_parameter))
     4 (cl:length (cl:slot-value msg 'update_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <car_db_processGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'car_db_processGoal
    (cl:cons ':table_name (table_name msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':query_base_index (query_base_index msg))
    (cl:cons ':query_opt_index (query_opt_index msg))
    (cl:cons ':query_parameter (query_parameter msg))
    (cl:cons ':update_data (update_data msg))
))
