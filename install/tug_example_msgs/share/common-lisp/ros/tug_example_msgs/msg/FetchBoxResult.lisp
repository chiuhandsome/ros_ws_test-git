; Auto-generated. Do not edit!


(cl:in-package tug_example_msgs-msg)


;//! \htmlinclude FetchBoxResult.msg.html

(cl:defclass <FetchBoxResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FetchBoxResult (<FetchBoxResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FetchBoxResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FetchBoxResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tug_example_msgs-msg:<FetchBoxResult> is deprecated: use tug_example_msgs-msg:FetchBoxResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <FetchBoxResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tug_example_msgs-msg:result-val is deprecated.  Use tug_example_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FetchBoxResult>)))
    "Constants for message type '<FetchBoxResult>"
  '((:RUN . 0)
    (:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FetchBoxResult)))
    "Constants for message type 'FetchBoxResult"
  '((:RUN . 0)
    (:OK . 1)
    (:NOT_OK . 2)
    (:TIMED_OUT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FetchBoxResult>) ostream)
  "Serializes a message object of type '<FetchBoxResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FetchBoxResult>) istream)
  "Deserializes a message object of type '<FetchBoxResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FetchBoxResult>)))
  "Returns string type for a message object of type '<FetchBoxResult>"
  "tug_example_msgs/FetchBoxResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FetchBoxResult)))
  "Returns string type for a message object of type 'FetchBoxResult"
  "tug_example_msgs/FetchBoxResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FetchBoxResult>)))
  "Returns md5sum for a message object of type '<FetchBoxResult>"
  "87cbbd112b1c840a8225d4cda4c6ef8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FetchBoxResult)))
  "Returns md5sum for a message object of type 'FetchBoxResult"
  "87cbbd112b1c840a8225d4cda4c6ef8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FetchBoxResult>)))
  "Returns full string definition for message of type '<FetchBoxResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 RUN=0~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FetchBoxResult)))
  "Returns full string definition for message of type 'FetchBoxResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%uint8 RUN=0~%uint8 OK=1~%uint8 NOT_OK=2~%uint8 TIMED_OUT=3~%uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FetchBoxResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FetchBoxResult>))
  "Converts a ROS message object to a list"
  (cl:list 'FetchBoxResult
    (cl:cons ':result (result msg))
))
