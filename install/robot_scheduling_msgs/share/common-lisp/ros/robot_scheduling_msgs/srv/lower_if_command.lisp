; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-srv)


;//! \htmlinclude lower_if_command-request.msg.html

(cl:defclass <lower_if_command-request> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:fixnum
    :initform 0)
   (cmd_id
    :reader cmd_id
    :initarg :cmd_id
    :type cl:fixnum
    :initform 0)
   (cmd_data
    :reader cmd_data
    :initarg :cmd_data
    :type cl:string
    :initform ""))
)

(cl:defclass lower_if_command-request (<lower_if_command-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lower_if_command-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lower_if_command-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-srv:<lower_if_command-request> is deprecated: use robot_scheduling_msgs-srv:lower_if_command-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <lower_if_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:cmd_type-val is deprecated.  Use robot_scheduling_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <lower_if_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:cmd_id-val is deprecated.  Use robot_scheduling_msgs-srv:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'cmd_data-val :lambda-list '(m))
(cl:defmethod cmd_data-val ((m <lower_if_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:cmd_data-val is deprecated.  Use robot_scheduling_msgs-srv:cmd_data instead.")
  (cmd_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<lower_if_command-request>)))
    "Constants for message type '<lower_if_command-request>"
  '((:GET_STATUS . 1)
    (:SET_COMMAND . 2)
    (:STATUS . 1)
    (:BASE_CONNECT . 2)
    (:BASE_READY . 3)
    (:BASE_PROC . 4)
    (:LED . 5)
    (:MUSIC . 6)
    (:BATTERY . 7)
    (:UTRASONIC . 8)
    (:POWERCHARGE . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'lower_if_command-request)))
    "Constants for message type 'lower_if_command-request"
  '((:GET_STATUS . 1)
    (:SET_COMMAND . 2)
    (:STATUS . 1)
    (:BASE_CONNECT . 2)
    (:BASE_READY . 3)
    (:BASE_PROC . 4)
    (:LED . 5)
    (:MUSIC . 6)
    (:BATTERY . 7)
    (:UTRASONIC . 8)
    (:POWERCHARGE . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lower_if_command-request>) ostream)
  "Serializes a message object of type '<lower_if_command-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lower_if_command-request>) istream)
  "Deserializes a message object of type '<lower_if_command-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lower_if_command-request>)))
  "Returns string type for a service object of type '<lower_if_command-request>"
  "robot_scheduling_msgs/lower_if_commandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lower_if_command-request)))
  "Returns string type for a service object of type 'lower_if_command-request"
  "robot_scheduling_msgs/lower_if_commandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lower_if_command-request>)))
  "Returns md5sum for a message object of type '<lower_if_command-request>"
  "441a58e5dfae63962fb07d2ec8a5ac33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lower_if_command-request)))
  "Returns md5sum for a message object of type 'lower_if_command-request"
  "441a58e5dfae63962fb07d2ec8a5ac33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lower_if_command-request>)))
  "Returns full string definition for message of type '<lower_if_command-request>"
  (cl:format cl:nil "# set command type and its data ~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type	~%uint8 STATUS=1	 ~%uint8 BASE_CONNECT=2   ~%uint8 BASE_READY=3  ~%uint8 BASE_PROC=4   ~%uint8 LED=5	 ~%uint8 MUSIC=6	    ~%uint8 BATTERY=7	   ~%uint8 UTRASONIC=8	  ~%uint8 POWERCHARGE=9~%uint8 cmd_id  ~%string cmd_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lower_if_command-request)))
  "Returns full string definition for message of type 'lower_if_command-request"
  (cl:format cl:nil "# set command type and its data ~%uint8 GET_STATUS=1~%uint8 SET_COMMAND=2~%uint8 cmd_type	~%uint8 STATUS=1	 ~%uint8 BASE_CONNECT=2   ~%uint8 BASE_READY=3  ~%uint8 BASE_PROC=4   ~%uint8 LED=5	 ~%uint8 MUSIC=6	    ~%uint8 BATTERY=7	   ~%uint8 UTRASONIC=8	  ~%uint8 POWERCHARGE=9~%uint8 cmd_id  ~%string cmd_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lower_if_command-request>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'cmd_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lower_if_command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'lower_if_command-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':cmd_data (cmd_data msg))
))
;//! \htmlinclude lower_if_command-response.msg.html

(cl:defclass <lower_if_command-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass lower_if_command-response (<lower_if_command-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lower_if_command-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lower_if_command-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-srv:<lower_if_command-response> is deprecated: use robot_scheduling_msgs-srv:lower_if_command-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <lower_if_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result-val is deprecated.  Use robot_scheduling_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'result_state-val :lambda-list '(m))
(cl:defmethod result_state-val ((m <lower_if_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result_state-val is deprecated.  Use robot_scheduling_msgs-srv:result_state instead.")
  (result_state m))

(cl:ensure-generic-function 'result_data-val :lambda-list '(m))
(cl:defmethod result_data-val ((m <lower_if_command-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-srv:result_data-val is deprecated.  Use robot_scheduling_msgs-srv:result_data instead.")
  (result_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<lower_if_command-response>)))
    "Constants for message type '<lower_if_command-response>"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'lower_if_command-response)))
    "Constants for message type 'lower_if_command-response"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lower_if_command-response>) ostream)
  "Serializes a message object of type '<lower_if_command-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result_state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lower_if_command-response>) istream)
  "Deserializes a message object of type '<lower_if_command-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lower_if_command-response>)))
  "Returns string type for a service object of type '<lower_if_command-response>"
  "robot_scheduling_msgs/lower_if_commandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lower_if_command-response)))
  "Returns string type for a service object of type 'lower_if_command-response"
  "robot_scheduling_msgs/lower_if_commandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lower_if_command-response>)))
  "Returns md5sum for a message object of type '<lower_if_command-response>"
  "441a58e5dfae63962fb07d2ec8a5ac33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lower_if_command-response)))
  "Returns md5sum for a message object of type 'lower_if_command-response"
  "441a58e5dfae63962fb07d2ec8a5ac33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lower_if_command-response>)))
  "Returns full string definition for message of type '<lower_if_command-response>"
  (cl:format cl:nil "bool result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 result_state~%string result_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lower_if_command-response)))
  "Returns full string definition for message of type 'lower_if_command-response"
  (cl:format cl:nil "bool result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 result_state~%string result_data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lower_if_command-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'result_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lower_if_command-response>))
  "Converts a ROS message object to a list"
  (cl:list 'lower_if_command-response
    (cl:cons ':result (result msg))
    (cl:cons ':result_state (result_state msg))
    (cl:cons ':result_data (result_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'lower_if_command)))
  'lower_if_command-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'lower_if_command)))
  'lower_if_command-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lower_if_command)))
  "Returns string type for a service object of type '<lower_if_command>"
  "robot_scheduling_msgs/lower_if_command")