; Auto-generated. Do not edit!


(cl:in-package robot_scheduling_msgs-msg)


;//! \htmlinclude worksheetrunGoal.msg.html

(cl:defclass <worksheetrunGoal> (roslisp-msg-protocol:ros-message)
  ((cmd_id
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

(cl:defclass worksheetrunGoal (<worksheetrunGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <worksheetrunGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'worksheetrunGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_scheduling_msgs-msg:<worksheetrunGoal> is deprecated: use robot_scheduling_msgs-msg:worksheetrunGoal instead.")))

(cl:ensure-generic-function 'cmd_id-val :lambda-list '(m))
(cl:defmethod cmd_id-val ((m <worksheetrunGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_id-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_id instead.")
  (cmd_id m))

(cl:ensure-generic-function 'cmd_data-val :lambda-list '(m))
(cl:defmethod cmd_data-val ((m <worksheetrunGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_scheduling_msgs-msg:cmd_data-val is deprecated.  Use robot_scheduling_msgs-msg:cmd_data instead.")
  (cmd_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<worksheetrunGoal>)))
    "Constants for message type '<worksheetrunGoal>"
  '((:WS_DETAILCHECK . 1)
    (:WS_RUNCHECK . 2)
    (:WS_RUN . 3)
    (:WS_RUNFINISH . 4)
    (:WS_RUNNEXT . 5)
    (:WS_ASSIGNINDEX . 6)
    (:WS_POSERUNCHECK . 7)
    (:WS_POSTTURNCHECK . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'worksheetrunGoal)))
    "Constants for message type 'worksheetrunGoal"
  '((:WS_DETAILCHECK . 1)
    (:WS_RUNCHECK . 2)
    (:WS_RUN . 3)
    (:WS_RUNFINISH . 4)
    (:WS_RUNNEXT . 5)
    (:WS_ASSIGNINDEX . 6)
    (:WS_POSERUNCHECK . 7)
    (:WS_POSTTURNCHECK . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <worksheetrunGoal>) ostream)
  "Serializes a message object of type '<worksheetrunGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <worksheetrunGoal>) istream)
  "Deserializes a message object of type '<worksheetrunGoal>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<worksheetrunGoal>)))
  "Returns string type for a message object of type '<worksheetrunGoal>"
  "robot_scheduling_msgs/worksheetrunGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'worksheetrunGoal)))
  "Returns string type for a message object of type 'worksheetrunGoal"
  "robot_scheduling_msgs/worksheetrunGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<worksheetrunGoal>)))
  "Returns md5sum for a message object of type '<worksheetrunGoal>"
  "53c9f53d3645c34f16b9d0605dbeeb85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'worksheetrunGoal)))
  "Returns md5sum for a message object of type 'worksheetrunGoal"
  "53c9f53d3645c34f16b9d0605dbeeb85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<worksheetrunGoal>)))
  "Returns full string definition for message of type '<worksheetrunGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 WS_DETAILCHECK=1~%uint8 WS_RUNCHECK=2~%uint8 WS_RUN=3~%uint8 WS_RUNFINISh=4~%uint8 WS_RUNNEXT=5~%uint8 WS_ASSIGNINDEX=6~%uint8 WS_POSERUNCHECK=7~%uint8 WS_POSTTURNCHECK=8~%uint8 cmd_id~%string cmd_data~%#string db_process_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'worksheetrunGoal)))
  "Returns full string definition for message of type 'worksheetrunGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%uint8 WS_DETAILCHECK=1~%uint8 WS_RUNCHECK=2~%uint8 WS_RUN=3~%uint8 WS_RUNFINISh=4~%uint8 WS_RUNNEXT=5~%uint8 WS_ASSIGNINDEX=6~%uint8 WS_POSERUNCHECK=7~%uint8 WS_POSTTURNCHECK=8~%uint8 cmd_id~%string cmd_data~%#string db_process_ac_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <worksheetrunGoal>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'cmd_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <worksheetrunGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'worksheetrunGoal
    (cl:cons ':cmd_id (cmd_id msg))
    (cl:cons ':cmd_data (cmd_data msg))
))