; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude robot_interface_proc_upperResult.msg.html

(cl:defclass <robot_interface_proc_upperResult> (roslisp-msg-protocol:ros-message)
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

(cl:defclass robot_interface_proc_upperResult (<robot_interface_proc_upperResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_interface_proc_upperResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_interface_proc_upperResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<robot_interface_proc_upperResult> is deprecated: use robot_scheduling_msgs-msg:robot_interface_proc_upperResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <robot_interface_proc_upperResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:result-val is deprecated.  Use robot_scheduling_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'result_state-val :lambda-list '(m))
(cl:defmethod result_state-val ((m <robot_interface_proc_upperResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:result_state-val is deprecated.  Use robot_scheduling_msgs-msg:result_state instead.")
  (result_state m))

(cl:ensure-generic-function 'result_data-val :lambda-list '(m))
(cl:defmethod result_data-val ((m <robot_interface_proc_upperResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:result_data-val is deprecated.  Use robot_scheduling_msgs-msg:result_data instead.")
  (result_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<robot_interface_proc_upperResult>)))
    "Constants for message type '<robot_interface_proc_upperResult>"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4)
    (:PASS . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'robot_interface_proc_upperResult)))
    "Constants for message type 'robot_interface_proc_upperResult"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4)
    (:PASS . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_interface_proc_upperResult>) ostream)
  "Serializes a message object of type '<robot_interface_proc_upperResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result_state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_interface_proc_upperResult>) istream)
  "Deserializes a message object of type '<robot_interface_proc_upperResult>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_interface_proc_upperResult>)))
  "Returns string type for a message object of type '<robot_interface_proc_upperResult>"
  "robot_scheduling_msgs/robot_interface_proc_upperResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_interface_proc_upperResult)))
  "Returns string type for a message object of type 'robot_interface_proc_upperResult"
  "robot_scheduling_msgs/robot_interface_proc_upperResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_interface_proc_upperResult>)))
  "Returns md5sum for a message object of type '<robot_interface_proc_upperResult>"
  "df1f5eb73492eb1c6b87f4934795b18c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_interface_proc_upperResult)))
  "Returns md5sum for a message object of type 'robot_interface_proc_upperResult"
  "df1f5eb73492eb1c6b87f4934795b18c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_interface_proc_upperResult>)))
  "Returns full string definition for message of type '<robot_interface_proc_upperResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 PASS=5~%uint8 result_state~%string result_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_interface_proc_upperResult)))
  "Returns full string definition for message of type 'robot_interface_proc_upperResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 PASS=5~%uint8 result_state~%string result_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_interface_proc_upperResult>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'result_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_interface_proc_upperResult>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_interface_proc_upperResult
    (cl:cons ':result (result msg))
    (cl:cons ':result_state (result_state msg))
    (cl:cons ':result_data (result_data msg))
))
