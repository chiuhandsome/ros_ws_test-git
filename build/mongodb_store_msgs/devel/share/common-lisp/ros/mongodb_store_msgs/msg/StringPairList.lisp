; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-msg)


;//! \htmlinclude StringPairList.msg.html

(cl:defclass <StringPairList> (roslisp-msg-protocol:ros-message)
  ((pairs
    :reader pairs
    :initarg :pairs
    :type (cl:vector mongodb_store_msgs-msg:StringPair)
   :initform (cl:make-array 0 :element-type 'mongodb_store_msgs-msg:StringPair :initial-element (cl:make-instance 'mongodb_store_msgs-msg:StringPair))))
)

(cl:defclass StringPairList (<StringPairList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringPairList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringPairList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-msg:<StringPairList> is deprecated: use mongodb_store_msgs-msg:StringPairList instead.")))

(cl:ensure-generic-function 'pairs-val :lambda-list '(m))
(cl:defmethod pairs-val ((m <StringPairList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:pairs-val is deprecated.  Use mongodb_store_msgs-msg:pairs instead.")
  (pairs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringPairList>) ostream)
  "Serializes a message object of type '<StringPairList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pairs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pairs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringPairList>) istream)
  "Deserializes a message object of type '<StringPairList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pairs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pairs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mongodb_store_msgs-msg:StringPair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringPairList>)))
  "Returns string type for a message object of type '<StringPairList>"
  "mongodb_store_msgs/StringPairList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringPairList)))
  "Returns string type for a message object of type 'StringPairList"
  "mongodb_store_msgs/StringPairList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringPairList>)))
  "Returns md5sum for a message object of type '<StringPairList>"
  "50c368c0f345d8de86876a3bada40aad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringPairList)))
  "Returns md5sum for a message object of type 'StringPairList"
  "50c368c0f345d8de86876a3bada40aad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringPairList>)))
  "Returns full string definition for message of type '<StringPairList>"
  (cl:format cl:nil "StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringPairList)))
  "Returns full string definition for message of type 'StringPairList"
  (cl:format cl:nil "StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringPairList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pairs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringPairList>))
  "Converts a ROS message object to a list"
  (cl:list 'StringPairList
    (cl:cons ':pairs (pairs msg))
))
