; Auto-generated. Do not edit!


(cl:in-package robot_control_msgs-srv)


;//! \htmlinclude robot_ctrl_alarmCode_cmd-request.msg.html

(cl:defclass <robot_ctrl_alarmCode_cmd-request> (roslisp-msg-protocol:ros-message)
  ((cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (index_name
    :reader index_name
    :initarg :index_name
    :type cl:string
    :initform "")
   (parameter
    :reader parameter
    :initarg :parameter
    :type cl:string
    :initform "")
   (rec_alarmCode
    :reader rec_alarmCode
    :initarg :rec_alarmCode
    :type robot_control_msgs-msg:robot_ctrl_alarmCode
    :initform (cl:make-instance 'robot_control_msgs-msg:robot_ctrl_alarmCode)))
)

(cl:defclass robot_ctrl_alarmCode_cmd-request (<robot_ctrl_alarmCode_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_ctrl_alarmCode_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_ctrl_alarmCode_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control_msgs-srv:<robot_ctrl_alarmCode_cmd-request> is deprecated: use robot_control_msgs-srv:robot_ctrl_alarmCode_cmd-request instead.")))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <robot_ctrl_alarmCode_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-srv:cmd_id-val is deprecated.  Use robot_control_msgs-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'index_name-val :lambda-list '(m))
(cl:defmethod index_name-val ((m <robot_ctrl_alarmCode_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-srv:index_name-val is deprecated.  Use robot_control_msgs-srv:index_name instead.")
  (index_name m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <robot_ctrl_alarmCode_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-srv:parameter-val is deprecated.  Use robot_control_msgs-srv:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'rec_alarmCode-val :lambda-list '(m))
(cl:defmethod rec_alarmCode-val ((m <robot_ctrl_alarmCode_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-srv:rec_alarmCode-val is deprecated.  Use robot_control_msgs-srv:rec_alarmCode instead.")
  (rec_alarmCode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_ctrl_alarmCode_cmd-request>) ostream)
  "Serializes a message object of type '<robot_ctrl_alarmCode_cmd-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'index_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'index_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rec_alarmCode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_ctrl_alarmCode_cmd-request>) istream)
  "Deserializes a message object of type '<robot_ctrl_alarmCode_cmd-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'index_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rec_alarmCode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_ctrl_alarmCode_cmd-request>)))
  "Returns string type for a service object of type '<robot_ctrl_alarmCode_cmd-request>"
  "robot_control_msgs/robot_ctrl_alarmCode_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_ctrl_alarmCode_cmd-request)))
  "Returns string type for a service object of type 'robot_ctrl_alarmCode_cmd-request"
  "robot_control_msgs/robot_ctrl_alarmCode_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_ctrl_alarmCode_cmd-request>)))
  "Returns md5sum for a message object of type '<robot_ctrl_alarmCode_cmd-request>"
  "e8befc5050638e2b9a4048a2ea5cd223")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_ctrl_alarmCode_cmd-request)))
  "Returns md5sum for a message object of type 'robot_ctrl_alarmCode_cmd-request"
  "e8befc5050638e2b9a4048a2ea5cd223")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_ctrl_alarmCode_cmd-request>)))
  "Returns full string definition for message of type '<robot_ctrl_alarmCode_cmd-request>"
  (cl:format cl:nil "int8 cmd_id         # 1:Add , 2:modify 3:delete 4:requery	 		~%string index_name 	~%string parameter ~%robot_ctrl_alarmCode rec_alarmCode	 ~%~%================================================================================~%MSG: robot_control_msgs/robot_ctrl_alarmCode~%string system_id 			~%string alarm_id 		# module_no(3) + module alarm code(3)	~%string alarm_code 		# same as alarm_id,preper for special requirement~%string alarm_level 		# level of ararm: 1:alart 2:alarm	~%string alarm_Desc_E 		# English description of alarm	~%string alarm_Desc_TC 		# Traditional chinese description of alarm	~%string alarm_Desc_SC 		# Sample chinese description of alarm~%string alarm_version 		# version of alarm~%string update_time 		# version time of alarm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_ctrl_alarmCode_cmd-request)))
  "Returns full string definition for message of type 'robot_ctrl_alarmCode_cmd-request"
  (cl:format cl:nil "int8 cmd_id         # 1:Add , 2:modify 3:delete 4:requery	 		~%string index_name 	~%string parameter ~%robot_ctrl_alarmCode rec_alarmCode	 ~%~%================================================================================~%MSG: robot_control_msgs/robot_ctrl_alarmCode~%string system_id 			~%string alarm_id 		# module_no(3) + module alarm code(3)	~%string alarm_code 		# same as alarm_id,preper for special requirement~%string alarm_level 		# level of ararm: 1:alart 2:alarm	~%string alarm_Desc_E 		# English description of alarm	~%string alarm_Desc_TC 		# Traditional chinese description of alarm	~%string alarm_Desc_SC 		# Sample chinese description of alarm~%string alarm_version 		# version of alarm~%string update_time 		# version time of alarm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_ctrl_alarmCode_cmd-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'index_name))
     4 (cl:length (cl:slot-value msg 'parameter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rec_alarmCode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_ctrl_alarmCode_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_ctrl_alarmCode_cmd-request
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':index_name (index_name msg))
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':rec_alarmCode (rec_alarmCode msg))
))
;//! \htmlinclude robot_ctrl_alarmCode_cmd-response.msg.html

(cl:defclass <robot_ctrl_alarmCode_cmd-response> (roslisp-msg-protocol:ros-message)
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
   (result_alarmCodes
    :reader result_alarmCodes
    :initarg :result_alarmCodes
    :type (cl:vector robot_control_msgs-msg:robot_ctrl_alarmCode)
   :initform (cl:make-array 0 :element-type 'robot_control_msgs-msg:robot_ctrl_alarmCode :initial-element (cl:make-instance 'robot_control_msgs-msg:robot_ctrl_alarmCode))))
)

(cl:defclass robot_ctrl_alarmCode_cmd-response (<robot_ctrl_alarmCode_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_ctrl_alarmCode_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_ctrl_alarmCode_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control_msgs-srv:<robot_ctrl_alarmCode_cmd-response> is deprecated: use robot_control_msgs-srv:robot_ctrl_alarmCode_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <robot_ctrl_alarmCode_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-srv:result-val is deprecated.  Use robot_control_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <robot_ctrl_alarmCode_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-srv:error_code-val is deprecated.  Use robot_control_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'result_alarmCodes-val :lambda-list '(m))
(cl:defmethod result_alarmCodes-val ((m <robot_ctrl_alarmCode_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-srv:result_alarmCodes-val is deprecated.  Use robot_control_msgs-srv:result_alarmCodes instead.")
  (result_alarmCodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_ctrl_alarmCode_cmd-response>) ostream)
  "Serializes a message object of type '<robot_ctrl_alarmCode_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_code))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result_alarmCodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'result_alarmCodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_ctrl_alarmCode_cmd-response>) istream)
  "Deserializes a message object of type '<robot_ctrl_alarmCode_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result_alarmCodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result_alarmCodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_control_msgs-msg:robot_ctrl_alarmCode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_ctrl_alarmCode_cmd-response>)))
  "Returns string type for a service object of type '<robot_ctrl_alarmCode_cmd-response>"
  "robot_control_msgs/robot_ctrl_alarmCode_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_ctrl_alarmCode_cmd-response)))
  "Returns string type for a service object of type 'robot_ctrl_alarmCode_cmd-response"
  "robot_control_msgs/robot_ctrl_alarmCode_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_ctrl_alarmCode_cmd-response>)))
  "Returns md5sum for a message object of type '<robot_ctrl_alarmCode_cmd-response>"
  "e8befc5050638e2b9a4048a2ea5cd223")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_ctrl_alarmCode_cmd-response)))
  "Returns md5sum for a message object of type 'robot_ctrl_alarmCode_cmd-response"
  "e8befc5050638e2b9a4048a2ea5cd223")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_ctrl_alarmCode_cmd-response>)))
  "Returns full string definition for message of type '<robot_ctrl_alarmCode_cmd-response>"
  (cl:format cl:nil "bool result~%string error_code~%robot_ctrl_alarmCode[] result_alarmCodes~%~%~%================================================================================~%MSG: robot_control_msgs/robot_ctrl_alarmCode~%string system_id 			~%string alarm_id 		# module_no(3) + module alarm code(3)	~%string alarm_code 		# same as alarm_id,preper for special requirement~%string alarm_level 		# level of ararm: 1:alart 2:alarm	~%string alarm_Desc_E 		# English description of alarm	~%string alarm_Desc_TC 		# Traditional chinese description of alarm	~%string alarm_Desc_SC 		# Sample chinese description of alarm~%string alarm_version 		# version of alarm~%string update_time 		# version time of alarm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_ctrl_alarmCode_cmd-response)))
  "Returns full string definition for message of type 'robot_ctrl_alarmCode_cmd-response"
  (cl:format cl:nil "bool result~%string error_code~%robot_ctrl_alarmCode[] result_alarmCodes~%~%~%================================================================================~%MSG: robot_control_msgs/robot_ctrl_alarmCode~%string system_id 			~%string alarm_id 		# module_no(3) + module alarm code(3)	~%string alarm_code 		# same as alarm_id,preper for special requirement~%string alarm_level 		# level of ararm: 1:alart 2:alarm	~%string alarm_Desc_E 		# English description of alarm	~%string alarm_Desc_TC 		# Traditional chinese description of alarm	~%string alarm_Desc_SC 		# Sample chinese description of alarm~%string alarm_version 		# version of alarm~%string update_time 		# version time of alarm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_ctrl_alarmCode_cmd-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_code))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result_alarmCodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_ctrl_alarmCode_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_ctrl_alarmCode_cmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':result_alarmCodes (result_alarmCodes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_ctrl_alarmCode_cmd)))
  'robot_ctrl_alarmCode_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_ctrl_alarmCode_cmd)))
  'robot_ctrl_alarmCode_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_ctrl_alarmCode_cmd)))
  "Returns string type for a service object of type '<robot_ctrl_alarmCode_cmd>"
  "robot_control_msgs/robot_ctrl_alarmCode_cmd")