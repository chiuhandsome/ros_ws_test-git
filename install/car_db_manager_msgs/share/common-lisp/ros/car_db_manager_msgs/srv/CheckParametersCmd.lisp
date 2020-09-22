; Auto-generated. Do not edit!


(cl:in-package car_db_manager_msgs-srv)


;//! \htmlinclude CheckParametersCmd-request.msg.html

(cl:defclass <CheckParametersCmd-request> (roslisp-msg-protocol:ros-message)
  ((cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (query_base_index
    :reader query_base_index
    :initarg :query_base_index
    :type cl:string
    :initform "")
   (query_opt_index
    :reader query_opt_index
    :initarg :query_opt_index
    :type cl:string
    :initform "")
   (query_parameter
    :reader query_parameter
    :initarg :query_parameter
    :type cl:string
    :initform "")
   (req_check_parameters
    :reader req_check_parameters
    :initarg :req_check_parameters
    :type car_db_manager_msgs-msg:CheckParameters
    :initform (cl:make-instance 'car_db_manager_msgs-msg:CheckParameters)))
)

(cl:defclass CheckParametersCmd-request (<CheckParametersCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckParametersCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckParametersCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_db_manager_msgs-srv:<CheckParametersCmd-request> is deprecated: use car_db_manager_msgs-srv:CheckParametersCmd-request instead.")))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <CheckParametersCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:cmd_id-val is deprecated.  Use car_db_manager_msgs-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'query_base_index-val :lambda-list '(m))
(cl:defmethod query_base_index-val ((m <CheckParametersCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:query_base_index-val is deprecated.  Use car_db_manager_msgs-srv:query_base_index instead.")
  (query_base_index m))

(cl:ensure-generic-function 'query_opt_index-val :lambda-list '(m))
(cl:defmethod query_opt_index-val ((m <CheckParametersCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:query_opt_index-val is deprecated.  Use car_db_manager_msgs-srv:query_opt_index instead.")
  (query_opt_index m))

(cl:ensure-generic-function 'query_parameter-val :lambda-list '(m))
(cl:defmethod query_parameter-val ((m <CheckParametersCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:query_parameter-val is deprecated.  Use car_db_manager_msgs-srv:query_parameter instead.")
  (query_parameter m))

(cl:ensure-generic-function 'req_check_parameters-val :lambda-list '(m))
(cl:defmethod req_check_parameters-val ((m <CheckParametersCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:req_check_parameters-val is deprecated.  Use car_db_manager_msgs-srv:req_check_parameters instead.")
  (req_check_parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckParametersCmd-request>) ostream)
  "Serializes a message object of type '<CheckParametersCmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query_base_index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query_base_index))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query_opt_index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query_opt_index))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'query_parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'query_parameter))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'req_check_parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckParametersCmd-request>) istream)
  "Deserializes a message object of type '<CheckParametersCmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query_base_index) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query_base_index) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query_opt_index) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query_opt_index) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'query_parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'query_parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'req_check_parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckParametersCmd-request>)))
  "Returns string type for a service object of type '<CheckParametersCmd-request>"
  "car_db_manager_msgs/CheckParametersCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckParametersCmd-request)))
  "Returns string type for a service object of type 'CheckParametersCmd-request"
  "car_db_manager_msgs/CheckParametersCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckParametersCmd-request>)))
  "Returns md5sum for a message object of type '<CheckParametersCmd-request>"
  "67b016518b6edaa947e54833be560697")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckParametersCmd-request)))
  "Returns md5sum for a message object of type 'CheckParametersCmd-request"
  "67b016518b6edaa947e54833be560697")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckParametersCmd-request>)))
  "Returns full string definition for message of type '<CheckParametersCmd-request>"
  (cl:format cl:nil "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		~%string query_base_index 	~%string query_opt_index~%string query_parameter ~%CheckParameters req_check_parameters	 ~%~%================================================================================~%MSG: car_db_manager_msgs/CheckParameters~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%uint8 out_of_times	~%float32 timeout	~%string update_time			# must-have 	  	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckParametersCmd-request)))
  "Returns full string definition for message of type 'CheckParametersCmd-request"
  (cl:format cl:nil "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		~%string query_base_index 	~%string query_opt_index~%string query_parameter ~%CheckParameters req_check_parameters	 ~%~%================================================================================~%MSG: car_db_manager_msgs/CheckParameters~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%uint8 out_of_times	~%float32 timeout	~%string update_time			# must-have 	  	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckParametersCmd-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'query_base_index))
     4 (cl:length (cl:slot-value msg 'query_opt_index))
     4 (cl:length (cl:slot-value msg 'query_parameter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'req_check_parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckParametersCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckParametersCmd-request
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':query_base_index (query_base_index msg))
    (cl:cons ':query_opt_index (query_opt_index msg))
    (cl:cons ':query_parameter (query_parameter msg))
    (cl:cons ':req_check_parameters (req_check_parameters msg))
))
;//! \htmlinclude CheckParametersCmd-response.msg.html

(cl:defclass <CheckParametersCmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:string
    :initform "")
   (primary_id
    :reader primary_id
    :initarg :primary_id
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform "")
   (result_check_parameters
    :reader result_check_parameters
    :initarg :result_check_parameters
    :type (cl:vector car_db_manager_msgs-msg:CheckParameters)
   :initform (cl:make-array 0 :element-type 'car_db_manager_msgs-msg:CheckParameters :initial-element (cl:make-instance 'car_db_manager_msgs-msg:CheckParameters))))
)

(cl:defclass CheckParametersCmd-response (<CheckParametersCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckParametersCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckParametersCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_db_manager_msgs-srv:<CheckParametersCmd-response> is deprecated: use car_db_manager_msgs-srv:CheckParametersCmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CheckParametersCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:result-val is deprecated.  Use car_db_manager_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CheckParametersCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:error_code-val is deprecated.  Use car_db_manager_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <CheckParametersCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:primary_id-val is deprecated.  Use car_db_manager_msgs-srv:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <CheckParametersCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:update_time-val is deprecated.  Use car_db_manager_msgs-srv:update_time instead.")
  (update_time m))

(cl:ensure-generic-function 'result_check_parameters-val :lambda-list '(m))
(cl:defmethod result_check_parameters-val ((m <CheckParametersCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:result_check_parameters-val is deprecated.  Use car_db_manager_msgs-srv:result_check_parameters instead.")
  (result_check_parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckParametersCmd-response>) ostream)
  "Serializes a message object of type '<CheckParametersCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'primary_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'primary_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result_check_parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'result_check_parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckParametersCmd-response>) istream)
  "Deserializes a message object of type '<CheckParametersCmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'update_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'update_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result_check_parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result_check_parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'car_db_manager_msgs-msg:CheckParameters))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckParametersCmd-response>)))
  "Returns string type for a service object of type '<CheckParametersCmd-response>"
  "car_db_manager_msgs/CheckParametersCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckParametersCmd-response)))
  "Returns string type for a service object of type 'CheckParametersCmd-response"
  "car_db_manager_msgs/CheckParametersCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckParametersCmd-response>)))
  "Returns md5sum for a message object of type '<CheckParametersCmd-response>"
  "67b016518b6edaa947e54833be560697")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckParametersCmd-response)))
  "Returns md5sum for a message object of type 'CheckParametersCmd-response"
  "67b016518b6edaa947e54833be560697")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckParametersCmd-response>)))
  "Returns full string definition for message of type '<CheckParametersCmd-response>"
  (cl:format cl:nil "bool result~%string error_code~%string primary_id~%string update_time~%CheckParameters[] result_check_parameters~%~%~%================================================================================~%MSG: car_db_manager_msgs/CheckParameters~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%uint8 out_of_times	~%float32 timeout	~%string update_time			# must-have 	  	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckParametersCmd-response)))
  "Returns full string definition for message of type 'CheckParametersCmd-response"
  (cl:format cl:nil "bool result~%string error_code~%string primary_id~%string update_time~%CheckParameters[] result_check_parameters~%~%~%================================================================================~%MSG: car_db_manager_msgs/CheckParameters~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%uint8 out_of_times	~%float32 timeout	~%string update_time			# must-have 	  	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckParametersCmd-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_code))
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'update_time))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result_check_parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckParametersCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckParametersCmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':update_time (update_time msg))
    (cl:cons ':result_check_parameters (result_check_parameters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckParametersCmd)))
  'CheckParametersCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckParametersCmd)))
  'CheckParametersCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckParametersCmd)))
  "Returns string type for a service object of type '<CheckParametersCmd>"
  "car_db_manager_msgs/CheckParametersCmd")