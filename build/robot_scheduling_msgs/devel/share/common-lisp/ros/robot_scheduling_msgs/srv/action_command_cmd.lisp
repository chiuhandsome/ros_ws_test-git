; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-srv)


;//! \htmlinclude action_command_cmd-request.msg.html

(cl:defclass <action_command_cmd-request> (roslisp-msg-protocol:ros-message)
  ((cmd_set_type
    :reader cmd_set_type
    :initarg :cmd_set_type
    :type cl:fixnum
    :initform 0)
   (cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (cmd_seq
    :reader cmd_seq
    :initarg :cmd_seq
    :type cl:fixnum
    :initform 0)
   (cmd_data
    :reader cmd_data
    :initarg :cmd_data
    :type cl:string
    :initform "")
   (set_data
    :reader set_data
    :initarg :set_data
    :type cl:string
    :initform ""))
)

(cl:defclass action_command_cmd-request (<action_command_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action_command_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action_command_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-srv:<action_command_cmd-request> is deprecated: use robot_scheduling_msgs-srv:action_command_cmd-request instead.")))

(cl:ensure-generic-function 'cmd_set_type-val :lambda-list '(m))
(cl:defmethod cmd_set_type-val ((m <action_command_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:cmd_set_type-val is deprecated.  Use robot_scheduling_msgs-srv:cmd_set_type instead.")
  (cmd_set_type m))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <action_command_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:cmd_type-val is deprecated.  Use robot_scheduling_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <action_command_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:cmd_id-val is deprecated.  Use robot_scheduling_msgs-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'cmd_seq-val :lambda-list '(m))
(cl:defmethod cmd_seq-val ((m <action_command_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:cmd_seq-val is deprecated.  Use robot_scheduling_msgs-srv:cmd_seq instead.")
  (cmd_seq m))

(cl:ensure-generic-function 'cmd_data-val :lambda-list '(m))
(cl:defmethod cmd_data-val ((m <action_command_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:cmd_data-val is deprecated.  Use robot_scheduling_msgs-srv:cmd_data instead.")
  (cmd_data m))

(cl:ensure-generic-function 'set_data-val :lambda-list '(m))
(cl:defmethod set_data-val ((m <action_command_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:set_data-val is deprecated.  Use robot_scheduling_msgs-srv:set_data instead.")
  (set_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action_command_cmd-request>) ostream)
  "Serializes a message object of type '<action_command_cmd-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_seq)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'set_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'set_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action_command_cmd-request>) istream)
  "Deserializes a message object of type '<action_command_cmd-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_set_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_seq)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'set_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action_command_cmd-request>)))
  "Returns string type for a service object of type '<action_command_cmd-request>"
  "robot_scheduling_msgs/action_command_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_command_cmd-request)))
  "Returns string type for a service object of type 'action_command_cmd-request"
  "robot_scheduling_msgs/action_command_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action_command_cmd-request>)))
  "Returns md5sum for a message object of type '<action_command_cmd-request>"
  "c70509ca0082e9e32c4734aad4c091af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action_command_cmd-request)))
  "Returns md5sum for a message object of type 'action_command_cmd-request"
  "c70509ca0082e9e32c4734aad4c091af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action_command_cmd-request>)))
  "Returns full string definition for message of type '<action_command_cmd-request>"
  (cl:format cl:nil "# set command type and its data ~%uint8 cmd_set_type	 	~%uint8 cmd_type		      ~%uint8 cmd_id    ~%uint8 cmd_seq 	 	~%string cmd_data~%string set_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action_command_cmd-request)))
  "Returns full string definition for message of type 'action_command_cmd-request"
  (cl:format cl:nil "# set command type and its data ~%uint8 cmd_set_type	 	~%uint8 cmd_type		      ~%uint8 cmd_id    ~%uint8 cmd_seq 	 	~%string cmd_data~%string set_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action_command_cmd-request>))
  (cl:+ 0
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'cmd_data))
     4 (cl:length (cl:slot-value msg 'set_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action_command_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'action_command_cmd-request
    (cl:cons ':cmd_set_type (cmd_set_type msg))
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':cmd_seq (cmd_seq msg))
    (cl:cons ':cmd_data (cmd_data msg))
    (cl:cons ':set_data (set_data msg))
))
;//! \htmlinclude action_command_cmd-response.msg.html

(cl:defclass <action_command_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (result_state
    :reader result_state
    :initarg :result_state
    :type cl:fixnum
    :initform 0)
   (result_data
    :reader result_data
    :initarg :result_data
    :type cl:string
    :initform ""))
)

(cl:defclass action_command_cmd-response (<action_command_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action_command_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action_command_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-srv:<action_command_cmd-response> is deprecated: use robot_scheduling_msgs-srv:action_command_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <action_command_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result-val is deprecated.  Use robot_scheduling_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'result_state-val :lambda-list '(m))
(cl:defmethod result_state-val ((m <action_command_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result_state-val is deprecated.  Use robot_scheduling_msgs-srv:result_state instead.")
  (result_state m))

(cl:ensure-generic-function 'result_data-val :lambda-list '(m))
(cl:defmethod result_data-val ((m <action_command_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result_data-val is deprecated.  Use robot_scheduling_msgs-srv:result_data instead.")
  (result_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action_command_cmd-response>) ostream)
  "Serializes a message object of type '<action_command_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result_state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action_command_cmd-response>) istream)
  "Deserializes a message object of type '<action_command_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result_state)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action_command_cmd-response>)))
  "Returns string type for a service object of type '<action_command_cmd-response>"
  "robot_scheduling_msgs/action_command_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_command_cmd-response)))
  "Returns string type for a service object of type 'action_command_cmd-response"
  "robot_scheduling_msgs/action_command_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action_command_cmd-response>)))
  "Returns md5sum for a message object of type '<action_command_cmd-response>"
  "c70509ca0082e9e32c4734aad4c091af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action_command_cmd-response)))
  "Returns md5sum for a message object of type 'action_command_cmd-response"
  "c70509ca0082e9e32c4734aad4c091af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action_command_cmd-response>)))
  "Returns full string definition for message of type '<action_command_cmd-response>"
  (cl:format cl:nil "bool result~%uint8 result_state~%string result_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action_command_cmd-response)))
  "Returns full string definition for message of type 'action_command_cmd-response"
  (cl:format cl:nil "bool result~%uint8 result_state~%string result_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action_command_cmd-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'result_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action_command_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'action_command_cmd-response
    (cl:cons ':result (result msg))
    (cl:cons ':result_state (result_state msg))
    (cl:cons ':result_data (result_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'action_command_cmd)))
  'action_command_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'action_command_cmd)))
  'action_command_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_command_cmd)))
  "Returns string type for a service object of type '<action_command_cmd>"
  "robot_scheduling_msgs/action_command_cmd")