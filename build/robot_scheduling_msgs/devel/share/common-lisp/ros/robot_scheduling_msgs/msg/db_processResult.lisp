; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude db_processResult.msg.html

(cl:defclass <db_processResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (result_data
    :reader result_data
    :initarg :result_data
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass db_processResult (<db_processResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <db_processResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'db_processResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<db_processResult> is deprecated: use robot_scheduling_msgs-msg:db_processResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <db_processResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:result-val is deprecated.  Use robot_scheduling_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'result_data-val :lambda-list '(m))
(cl:defmethod result_data-val ((m <db_processResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:result_data-val is deprecated.  Use robot_scheduling_msgs-msg:result_data instead.")
  (result_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<db_processResult>)))
    "Constants for message type '<db_processResult>"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4)
    (:PARAM_ERROR . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'db_processResult)))
    "Constants for message type 'db_processResult"
  '((:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3)
    (:OUT_OF_TIMES . 4)
    (:PARAM_ERROR . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <db_processResult>) ostream)
  "Serializes a message object of type '<db_processResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'result_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <db_processResult>) istream)
  "Deserializes a message object of type '<db_processResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<db_processResult>)))
  "Returns string type for a message object of type '<db_processResult>"
  "robot_scheduling_msgs/db_processResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'db_processResult)))
  "Returns string type for a message object of type 'db_processResult"
  "robot_scheduling_msgs/db_processResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<db_processResult>)))
  "Returns md5sum for a message object of type '<db_processResult>"
  "b0b3ddf6567223ced1a6bb5ca55b7375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'db_processResult)))
  "Returns md5sum for a message object of type 'db_processResult"
  "b0b3ddf6567223ced1a6bb5ca55b7375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<db_processResult>)))
  "Returns full string definition for message of type '<db_processResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 PARAM_ERROR=5~%uint8 result~%string[] result_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'db_processResult)))
  "Returns full string definition for message of type 'db_processResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 OUT_OF_TIMES=4~%uint8 PARAM_ERROR=5~%uint8 result~%string[] result_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <db_processResult>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <db_processResult>))
  "Converts a ROS message object to a list"
  (cl:list 'db_processResult
    (cl:cons ':result (result msg))
    (cl:cons ':result_data (result_data msg))
))
