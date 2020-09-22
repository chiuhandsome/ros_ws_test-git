; Auto-generated. Do not edit!


(cl:in-package cellctrl_control_msgs-srv)


;//! \htmlinclude cell_base_transfer_cmd-request.msg.html

(cl:defclass <cell_base_transfer_cmd-request> (roslisp-msg-protocol:ros-message)
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
   (request_data
    :reader request_data
    :initarg :request_data
    :type cellctrl_control_msgs-msg:cell_base_transfer
    :initform (cl:make-instance 'cellctrl_control_msgs-msg:cell_base_transfer)))
)

(cl:defclass cell_base_transfer_cmd-request (<cell_base_transfer_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cell_base_transfer_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cell_base_transfer_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-srv:<cell_base_transfer_cmd-request> is deprecated: use cellctrl_control_msgs-srv:cell_base_transfer_cmd-request instead.")))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <cell_base_transfer_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:cmd_id-val is deprecated.  Use cellctrl_control_msgs-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'query_base_index-val :lambda-list '(m))
(cl:defmethod query_base_index-val ((m <cell_base_transfer_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:query_base_index-val is deprecated.  Use cellctrl_control_msgs-srv:query_base_index instead.")
  (query_base_index m))

(cl:ensure-generic-function 'query_opt_index-val :lambda-list '(m))
(cl:defmethod query_opt_index-val ((m <cell_base_transfer_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:query_opt_index-val is deprecated.  Use cellctrl_control_msgs-srv:query_opt_index instead.")
  (query_opt_index m))

(cl:ensure-generic-function 'query_parameter-val :lambda-list '(m))
(cl:defmethod query_parameter-val ((m <cell_base_transfer_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:query_parameter-val is deprecated.  Use cellctrl_control_msgs-srv:query_parameter instead.")
  (query_parameter m))

(cl:ensure-generic-function 'request_data-val :lambda-list '(m))
(cl:defmethod request_data-val ((m <cell_base_transfer_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:request_data-val is deprecated.  Use cellctrl_control_msgs-srv:request_data instead.")
  (request_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cell_base_transfer_cmd-request>) ostream)
  "Serializes a message object of type '<cell_base_transfer_cmd-request>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cell_base_transfer_cmd-request>) istream)
  "Deserializes a message object of type '<cell_base_transfer_cmd-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cell_base_transfer_cmd-request>)))
  "Returns string type for a service object of type '<cell_base_transfer_cmd-request>"
  "cellctrl_control_msgs/cell_base_transfer_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_base_transfer_cmd-request)))
  "Returns string type for a service object of type 'cell_base_transfer_cmd-request"
  "cellctrl_control_msgs/cell_base_transfer_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cell_base_transfer_cmd-request>)))
  "Returns md5sum for a message object of type '<cell_base_transfer_cmd-request>"
  "85f1a82daa48541a5af3b253ddfbe595")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cell_base_transfer_cmd-request)))
  "Returns md5sum for a message object of type 'cell_base_transfer_cmd-request"
  "85f1a82daa48541a5af3b253ddfbe595")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cell_base_transfer_cmd-request>)))
  "Returns full string definition for message of type '<cell_base_transfer_cmd-request>"
  (cl:format cl:nil "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		~%string query_base_index 	~%string query_opt_index~%string query_parameter ~%cell_base_transfer request_data	 ~%~%================================================================================~%MSG: cellctrl_control_msgs/cell_base_transfer~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX	~%string base_name		   ~%string base_desc_TC 		 ~%string base_desc_SC 		 ~%string base_desc_E 		 ~%string update_time			# must-have 		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cell_base_transfer_cmd-request)))
  "Returns full string definition for message of type 'cell_base_transfer_cmd-request"
  (cl:format cl:nil "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		~%string query_base_index 	~%string query_opt_index~%string query_parameter ~%cell_base_transfer request_data	 ~%~%================================================================================~%MSG: cellctrl_control_msgs/cell_base_transfer~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX	~%string base_name		   ~%string base_desc_TC 		 ~%string base_desc_SC 		 ~%string base_desc_E 		 ~%string update_time			# must-have 		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cell_base_transfer_cmd-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'query_base_index))
     4 (cl:length (cl:slot-value msg 'query_opt_index))
     4 (cl:length (cl:slot-value msg 'query_parameter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cell_base_transfer_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cell_base_transfer_cmd-request
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':query_base_index (query_base_index msg))
    (cl:cons ':query_opt_index (query_opt_index msg))
    (cl:cons ':query_parameter (query_parameter msg))
    (cl:cons ':request_data (request_data msg))
))
;//! \htmlinclude cell_base_transfer_cmd-response.msg.html

(cl:defclass <cell_base_transfer_cmd-response> (roslisp-msg-protocol:ros-message)
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
   (response_data
    :reader response_data
    :initarg :response_data
    :type (cl:vector cellctrl_control_msgs-msg:cell_base_transfer)
   :initform (cl:make-array 0 :element-type 'cellctrl_control_msgs-msg:cell_base_transfer :initial-element (cl:make-instance 'cellctrl_control_msgs-msg:cell_base_transfer))))
)

(cl:defclass cell_base_transfer_cmd-response (<cell_base_transfer_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cell_base_transfer_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cell_base_transfer_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-srv:<cell_base_transfer_cmd-response> is deprecated: use cellctrl_control_msgs-srv:cell_base_transfer_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <cell_base_transfer_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:result-val is deprecated.  Use cellctrl_control_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <cell_base_transfer_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:error_code-val is deprecated.  Use cellctrl_control_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <cell_base_transfer_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:primary_id-val is deprecated.  Use cellctrl_control_msgs-srv:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <cell_base_transfer_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:update_time-val is deprecated.  Use cellctrl_control_msgs-srv:update_time instead.")
  (update_time m))

(cl:ensure-generic-function 'response_data-val :lambda-list '(m))
(cl:defmethod response_data-val ((m <cell_base_transfer_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-srv:response_data-val is deprecated.  Use cellctrl_control_msgs-srv:response_data instead.")
  (response_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cell_base_transfer_cmd-response>) ostream)
  "Serializes a message object of type '<cell_base_transfer_cmd-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'response_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'response_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cell_base_transfer_cmd-response>) istream)
  "Deserializes a message object of type '<cell_base_transfer_cmd-response>"
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
  (cl:setf (cl:slot-value msg 'response_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'response_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cellctrl_control_msgs-msg:cell_base_transfer))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cell_base_transfer_cmd-response>)))
  "Returns string type for a service object of type '<cell_base_transfer_cmd-response>"
  "cellctrl_control_msgs/cell_base_transfer_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_base_transfer_cmd-response)))
  "Returns string type for a service object of type 'cell_base_transfer_cmd-response"
  "cellctrl_control_msgs/cell_base_transfer_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cell_base_transfer_cmd-response>)))
  "Returns md5sum for a message object of type '<cell_base_transfer_cmd-response>"
  "85f1a82daa48541a5af3b253ddfbe595")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cell_base_transfer_cmd-response)))
  "Returns md5sum for a message object of type 'cell_base_transfer_cmd-response"
  "85f1a82daa48541a5af3b253ddfbe595")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cell_base_transfer_cmd-response>)))
  "Returns full string definition for message of type '<cell_base_transfer_cmd-response>"
  (cl:format cl:nil "bool result~%string error_code~%string primary_id~%string update_time~%cell_base_transfer[] response_data~%~%~%================================================================================~%MSG: cellctrl_control_msgs/cell_base_transfer~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX	~%string base_name		   ~%string base_desc_TC 		 ~%string base_desc_SC 		 ~%string base_desc_E 		 ~%string update_time			# must-have 		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cell_base_transfer_cmd-response)))
  "Returns full string definition for message of type 'cell_base_transfer_cmd-response"
  (cl:format cl:nil "bool result~%string error_code~%string primary_id~%string update_time~%cell_base_transfer[] response_data~%~%~%================================================================================~%MSG: cellctrl_control_msgs/cell_base_transfer~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX	~%string base_name		   ~%string base_desc_TC 		 ~%string base_desc_SC 		 ~%string base_desc_E 		 ~%string update_time			# must-have 		 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cell_base_transfer_cmd-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_code))
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'update_time))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'response_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cell_base_transfer_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cell_base_transfer_cmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':update_time (update_time msg))
    (cl:cons ':response_data (response_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cell_base_transfer_cmd)))
  'cell_base_transfer_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cell_base_transfer_cmd)))
  'cell_base_transfer_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_base_transfer_cmd)))
  "Returns string type for a service object of type '<cell_base_transfer_cmd>"
  "cellctrl_control_msgs/cell_base_transfer_cmd")