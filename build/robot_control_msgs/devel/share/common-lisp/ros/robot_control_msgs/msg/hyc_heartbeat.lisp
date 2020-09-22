; Auto-generated. Do not edit!


(cl:in-package robot_control_msgs-msg)


;//! \htmlinclude hyc_heartbeat.msg.html

(cl:defclass <hyc_heartbeat> (roslisp-msg-protocol:ros-message)
  ((hb_status
    :reader hb_status
    :initarg :hb_status
    :type cl:fixnum
    :initform 0)
   (hb_stamp
    :reader hb_stamp
    :initarg :hb_stamp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass hyc_heartbeat (<hyc_heartbeat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hyc_heartbeat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hyc_heartbeat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control_msgs-msg:<hyc_heartbeat> is deprecated: use robot_control_msgs-msg:hyc_heartbeat instead.")))

(cl:ensure-generic-function 'hb_status-val :lambda-list '(m))
(cl:defmethod hb_status-val ((m <hyc_heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:hb_status-val is deprecated.  Use robot_control_msgs-msg:hb_status instead.")
  (hb_status m))

(cl:ensure-generic-function 'hb_stamp-val :lambda-list '(m))
(cl:defmethod hb_stamp-val ((m <hyc_heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_msgs-msg:hb_stamp-val is deprecated.  Use robot_control_msgs-msg:hb_stamp instead.")
  (hb_stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hyc_heartbeat>) ostream)
  "Serializes a message object of type '<hyc_heartbeat>"
  (cl:let* ((signed (cl:slot-value msg 'hb_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hb_stamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hyc_heartbeat>) istream)
  "Deserializes a message object of type '<hyc_heartbeat>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hb_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hb_stamp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hyc_heartbeat>)))
  "Returns string type for a message object of type '<hyc_heartbeat>"
  "robot_control_msgs/hyc_heartbeat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hyc_heartbeat)))
  "Returns string type for a message object of type 'hyc_heartbeat"
  "robot_control_msgs/hyc_heartbeat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hyc_heartbeat>)))
  "Returns md5sum for a message object of type '<hyc_heartbeat>"
  "df9efe1397ef4d3891140ed1e523817f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hyc_heartbeat)))
  "Returns md5sum for a message object of type 'hyc_heartbeat"
  "df9efe1397ef4d3891140ed1e523817f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hyc_heartbeat>)))
  "Returns full string definition for message of type '<hyc_heartbeat>"
  (cl:format cl:nil "#################################################################~%## heart_beat message~%#################################################################~%int8 hb_status~%int16 hb_stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hyc_heartbeat)))
  "Returns full string definition for message of type 'hyc_heartbeat"
  (cl:format cl:nil "#################################################################~%## heart_beat message~%#################################################################~%int8 hb_status~%int16 hb_stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hyc_heartbeat>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hyc_heartbeat>))
  "Converts a ROS message object to a list"
  (cl:list 'hyc_heartbeat
    (cl:cons ':hb_status (hb_status msg))
    (cl:cons ':hb_stamp (hb_stamp msg))
))
