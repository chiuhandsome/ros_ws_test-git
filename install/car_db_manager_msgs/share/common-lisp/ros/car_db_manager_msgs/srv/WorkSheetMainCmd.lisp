; Auto-generated. Do not edit!


(cl:in-package car_db_manager_msgs-srv)


;//! \htmlinclude WorkSheetMainCmd-request.msg.html

(cl:defclass <WorkSheetMainCmd-request> (roslisp-msg-protocol:ros-message)
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
   (req_work_sheet_main
    :reader req_work_sheet_main
    :initarg :req_work_sheet_main
    :type car_db_manager_msgs-msg:WorkSheetMain
    :initform (cl:make-instance 'car_db_manager_msgs-msg:WorkSheetMain)))
)

(cl:defclass WorkSheetMainCmd-request (<WorkSheetMainCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkSheetMainCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkSheetMainCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_db_manager_msgs-srv:<WorkSheetMainCmd-request> is deprecated: use car_db_manager_msgs-srv:WorkSheetMainCmd-request instead.")))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <WorkSheetMainCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:cmd_id-val is deprecated.  Use car_db_manager_msgs-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'query_base_index-val :lambda-list '(m))
(cl:defmethod query_base_index-val ((m <WorkSheetMainCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:query_base_index-val is deprecated.  Use car_db_manager_msgs-srv:query_base_index instead.")
  (query_base_index m))

(cl:ensure-generic-function 'query_opt_index-val :lambda-list '(m))
(cl:defmethod query_opt_index-val ((m <WorkSheetMainCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:query_opt_index-val is deprecated.  Use car_db_manager_msgs-srv:query_opt_index instead.")
  (query_opt_index m))

(cl:ensure-generic-function 'query_parameter-val :lambda-list '(m))
(cl:defmethod query_parameter-val ((m <WorkSheetMainCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:query_parameter-val is deprecated.  Use car_db_manager_msgs-srv:query_parameter instead.")
  (query_parameter m))

(cl:ensure-generic-function 'req_work_sheet_main-val :lambda-list '(m))
(cl:defmethod req_work_sheet_main-val ((m <WorkSheetMainCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:req_work_sheet_main-val is deprecated.  Use car_db_manager_msgs-srv:req_work_sheet_main instead.")
  (req_work_sheet_main m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkSheetMainCmd-request>) ostream)
  "Serializes a message object of type '<WorkSheetMainCmd-request>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'req_work_sheet_main) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkSheetMainCmd-request>) istream)
  "Deserializes a message object of type '<WorkSheetMainCmd-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'req_work_sheet_main) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkSheetMainCmd-request>)))
  "Returns string type for a service object of type '<WorkSheetMainCmd-request>"
  "car_db_manager_msgs/WorkSheetMainCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkSheetMainCmd-request)))
  "Returns string type for a service object of type 'WorkSheetMainCmd-request"
  "car_db_manager_msgs/WorkSheetMainCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkSheetMainCmd-request>)))
  "Returns md5sum for a message object of type '<WorkSheetMainCmd-request>"
  "74f6147443b20962de57286c203e1b80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkSheetMainCmd-request)))
  "Returns md5sum for a message object of type 'WorkSheetMainCmd-request"
  "74f6147443b20962de57286c203e1b80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkSheetMainCmd-request>)))
  "Returns full string definition for message of type '<WorkSheetMainCmd-request>"
  (cl:format cl:nil "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		~%string query_base_index 	~%string query_opt_index~%string query_parameter ~%WorkSheetMain req_work_sheet_main~%~%================================================================================~%MSG: car_db_manager_msgs/WorkSheetMain~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%string occur_time~%uint8 workitems_num~%string update_time			# must-have 	 ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkSheetMainCmd-request)))
  "Returns full string definition for message of type 'WorkSheetMainCmd-request"
  (cl:format cl:nil "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		~%string query_base_index 	~%string query_opt_index~%string query_parameter ~%WorkSheetMain req_work_sheet_main~%~%================================================================================~%MSG: car_db_manager_msgs/WorkSheetMain~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%string occur_time~%uint8 workitems_num~%string update_time			# must-have 	 ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkSheetMainCmd-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'query_base_index))
     4 (cl:length (cl:slot-value msg 'query_opt_index))
     4 (cl:length (cl:slot-value msg 'query_parameter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'req_work_sheet_main))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkSheetMainCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkSheetMainCmd-request
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':query_base_index (query_base_index msg))
    (cl:cons ':query_opt_index (query_opt_index msg))
    (cl:cons ':query_parameter (query_parameter msg))
    (cl:cons ':req_work_sheet_main (req_work_sheet_main msg))
))
;//! \htmlinclude WorkSheetMainCmd-response.msg.html

(cl:defclass <WorkSheetMainCmd-response> (roslisp-msg-protocol:ros-message)
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
   (result_work_sheet_main
    :reader result_work_sheet_main
    :initarg :result_work_sheet_main
    :type (cl:vector car_db_manager_msgs-msg:WorkSheetMain)
   :initform (cl:make-array 0 :element-type 'car_db_manager_msgs-msg:WorkSheetMain :initial-element (cl:make-instance 'car_db_manager_msgs-msg:WorkSheetMain))))
)

(cl:defclass WorkSheetMainCmd-response (<WorkSheetMainCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkSheetMainCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkSheetMainCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_db_manager_msgs-srv:<WorkSheetMainCmd-response> is deprecated: use car_db_manager_msgs-srv:WorkSheetMainCmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WorkSheetMainCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:result-val is deprecated.  Use car_db_manager_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <WorkSheetMainCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:error_code-val is deprecated.  Use car_db_manager_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <WorkSheetMainCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:primary_id-val is deprecated.  Use car_db_manager_msgs-srv:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <WorkSheetMainCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:update_time-val is deprecated.  Use car_db_manager_msgs-srv:update_time instead.")
  (update_time m))

(cl:ensure-generic-function 'result_work_sheet_main-val :lambda-list '(m))
(cl:defmethod result_work_sheet_main-val ((m <WorkSheetMainCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_db_manager_msgs-srv:result_work_sheet_main-val is deprecated.  Use car_db_manager_msgs-srv:result_work_sheet_main instead.")
  (result_work_sheet_main m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkSheetMainCmd-response>) ostream)
  "Serializes a message object of type '<WorkSheetMainCmd-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result_work_sheet_main))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'result_work_sheet_main))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkSheetMainCmd-response>) istream)
  "Deserializes a message object of type '<WorkSheetMainCmd-response>"
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
  (cl:setf (cl:slot-value msg 'result_work_sheet_main) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result_work_sheet_main)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'car_db_manager_msgs-msg:WorkSheetMain))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkSheetMainCmd-response>)))
  "Returns string type for a service object of type '<WorkSheetMainCmd-response>"
  "car_db_manager_msgs/WorkSheetMainCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkSheetMainCmd-response)))
  "Returns string type for a service object of type 'WorkSheetMainCmd-response"
  "car_db_manager_msgs/WorkSheetMainCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkSheetMainCmd-response>)))
  "Returns md5sum for a message object of type '<WorkSheetMainCmd-response>"
  "74f6147443b20962de57286c203e1b80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkSheetMainCmd-response)))
  "Returns md5sum for a message object of type 'WorkSheetMainCmd-response"
  "74f6147443b20962de57286c203e1b80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkSheetMainCmd-response>)))
  "Returns full string definition for message of type '<WorkSheetMainCmd-response>"
  (cl:format cl:nil "bool result~%string error_code~%string primary_id~%string update_time~%WorkSheetMain[] result_work_sheet_main~%~%~%================================================================================~%MSG: car_db_manager_msgs/WorkSheetMain~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%string occur_time~%uint8 workitems_num~%string update_time			# must-have 	 ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkSheetMainCmd-response)))
  "Returns full string definition for message of type 'WorkSheetMainCmd-response"
  (cl:format cl:nil "bool result~%string error_code~%string primary_id~%string update_time~%WorkSheetMain[] result_work_sheet_main~%~%~%================================================================================~%MSG: car_db_manager_msgs/WorkSheetMain~%string primary_id			# must-have,UUID : primary_key(system_id)		~%string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	~%string base_name~%string occur_time~%uint8 workitems_num~%string update_time			# must-have 	 ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkSheetMainCmd-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_code))
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'update_time))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result_work_sheet_main) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkSheetMainCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkSheetMainCmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':update_time (update_time msg))
    (cl:cons ':result_work_sheet_main (result_work_sheet_main msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WorkSheetMainCmd)))
  'WorkSheetMainCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WorkSheetMainCmd)))
  'WorkSheetMainCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkSheetMainCmd)))
  "Returns string type for a service object of type '<WorkSheetMainCmd>"
  "car_db_manager_msgs/WorkSheetMainCmd")