; Auto-generated. Do not edit!


(cl:in-package cellctrl_control_msgs-msg)


;//! \htmlinclude cell_work_stationitems.msg.html

(cl:defclass <cell_work_stationitems> (roslisp-msg-protocol:ros-message)
  ((primary_id
    :reader primary_id
    :initarg :primary_id
    :type cl:string
    :initform "")
   (foreign_key
    :reader foreign_key
    :initarg :foreign_key
    :type cl:string
    :initform "")
   (unique_code
    :reader unique_code
    :initarg :unique_code
    :type cl:string
    :initform "")
   (station_name
    :reader station_name
    :initarg :station_name
    :type cl:string
    :initform "")
   (station_ser
    :reader station_ser
    :initarg :station_ser
    :type cl:fixnum
    :initform 0)
   (cellcontroller_code
    :reader cellcontroller_code
    :initarg :cellcontroller_code
    :type cl:string
    :initform "")
   (positioned_pose
    :reader positioned_pose
    :initarg :positioned_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (mc_func_code
    :reader mc_func_code
    :initarg :mc_func_code
    :type cl:fixnum
    :initform 0)
   (transfer_code
    :reader transfer_code
    :initarg :transfer_code
    :type cl:fixnum
    :initform 0)
   (transfer_state
    :reader transfer_state
    :initarg :transfer_state
    :type cl:fixnum
    :initform 0)
   (align_type
    :reader align_type
    :initarg :align_type
    :type cl:fixnum
    :initform 0)
   (align_metadata
    :reader align_metadata
    :initarg :align_metadata
    :type cl:string
    :initform "")
   (pre_positioned_pose
    :reader pre_positioned_pose
    :initarg :pre_positioned_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (Identify_id
    :reader Identify_id
    :initarg :Identify_id
    :type cl:string
    :initform "")
   (update_time
    :reader update_time
    :initarg :update_time
    :type cl:string
    :initform ""))
)

(cl:defclass cell_work_stationitems (<cell_work_stationitems>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cell_work_stationitems>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cell_work_stationitems)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cellctrl_control_msgs-msg:<cell_work_stationitems> is deprecated: use cellctrl_control_msgs-msg:cell_work_stationitems instead.")))

(cl:ensure-generic-function 'primary_id-val :lambda-list '(m))
(cl:defmethod primary_id-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:primary_id-val is deprecated.  Use cellctrl_control_msgs-msg:primary_id instead.")
  (primary_id m))

(cl:ensure-generic-function 'foreign_key-val :lambda-list '(m))
(cl:defmethod foreign_key-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:foreign_key-val is deprecated.  Use cellctrl_control_msgs-msg:foreign_key instead.")
  (foreign_key m))

(cl:ensure-generic-function 'unique_code-val :lambda-list '(m))
(cl:defmethod unique_code-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:unique_code-val is deprecated.  Use cellctrl_control_msgs-msg:unique_code instead.")
  (unique_code m))

(cl:ensure-generic-function 'station_name-val :lambda-list '(m))
(cl:defmethod station_name-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:station_name-val is deprecated.  Use cellctrl_control_msgs-msg:station_name instead.")
  (station_name m))

(cl:ensure-generic-function 'station_ser-val :lambda-list '(m))
(cl:defmethod station_ser-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:station_ser-val is deprecated.  Use cellctrl_control_msgs-msg:station_ser instead.")
  (station_ser m))

(cl:ensure-generic-function 'cellcontroller_code-val :lambda-list '(m))
(cl:defmethod cellcontroller_code-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:cellcontroller_code-val is deprecated.  Use cellctrl_control_msgs-msg:cellcontroller_code instead.")
  (cellcontroller_code m))

(cl:ensure-generic-function 'positioned_pose-val :lambda-list '(m))
(cl:defmethod positioned_pose-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:positioned_pose-val is deprecated.  Use cellctrl_control_msgs-msg:positioned_pose instead.")
  (positioned_pose m))

(cl:ensure-generic-function 'mc_func_code-val :lambda-list '(m))
(cl:defmethod mc_func_code-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:mc_func_code-val is deprecated.  Use cellctrl_control_msgs-msg:mc_func_code instead.")
  (mc_func_code m))

(cl:ensure-generic-function 'transfer_code-val :lambda-list '(m))
(cl:defmethod transfer_code-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:transfer_code-val is deprecated.  Use cellctrl_control_msgs-msg:transfer_code instead.")
  (transfer_code m))

(cl:ensure-generic-function 'transfer_state-val :lambda-list '(m))
(cl:defmethod transfer_state-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:transfer_state-val is deprecated.  Use cellctrl_control_msgs-msg:transfer_state instead.")
  (transfer_state m))

(cl:ensure-generic-function 'align_type-val :lambda-list '(m))
(cl:defmethod align_type-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:align_type-val is deprecated.  Use cellctrl_control_msgs-msg:align_type instead.")
  (align_type m))

(cl:ensure-generic-function 'align_metadata-val :lambda-list '(m))
(cl:defmethod align_metadata-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:align_metadata-val is deprecated.  Use cellctrl_control_msgs-msg:align_metadata instead.")
  (align_metadata m))

(cl:ensure-generic-function 'pre_positioned_pose-val :lambda-list '(m))
(cl:defmethod pre_positioned_pose-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:pre_positioned_pose-val is deprecated.  Use cellctrl_control_msgs-msg:pre_positioned_pose instead.")
  (pre_positioned_pose m))

(cl:ensure-generic-function 'Identify_id-val :lambda-list '(m))
(cl:defmethod Identify_id-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:Identify_id-val is deprecated.  Use cellctrl_control_msgs-msg:Identify_id instead.")
  (Identify_id m))

(cl:ensure-generic-function 'update_time-val :lambda-list '(m))
(cl:defmethod update_time-val ((m <cell_work_stationitems>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cellctrl_control_msgs-msg:update_time-val is deprecated.  Use cellctrl_control_msgs-msg:update_time instead.")
  (update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cell_work_stationitems>) ostream)
  "Serializes a message object of type '<cell_work_stationitems>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'primary_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'primary_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'foreign_key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'foreign_key))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unique_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unique_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'station_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'station_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_ser)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cellcontroller_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cellcontroller_code))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'positioned_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mc_func_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transfer_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transfer_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'align_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'align_metadata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'align_metadata))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pre_positioned_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Identify_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Identify_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cell_work_stationitems>) istream)
  "Deserializes a message object of type '<cell_work_stationitems>"
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
      (cl:setf (cl:slot-value msg 'foreign_key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'foreign_key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unique_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unique_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'station_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_ser)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cellcontroller_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cellcontroller_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'positioned_pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mc_func_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transfer_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transfer_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'align_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'align_metadata) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'align_metadata) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pre_positioned_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Identify_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Identify_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'update_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'update_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cell_work_stationitems>)))
  "Returns string type for a message object of type '<cell_work_stationitems>"
  "cellctrl_control_msgs/cell_work_stationitems")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cell_work_stationitems)))
  "Returns string type for a message object of type 'cell_work_stationitems"
  "cellctrl_control_msgs/cell_work_stationitems")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cell_work_stationitems>)))
  "Returns md5sum for a message object of type '<cell_work_stationitems>"
  "4fa12b8714fb4a13b138a13c3f297691")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cell_work_stationitems)))
  "Returns md5sum for a message object of type 'cell_work_stationitems"
  "4fa12b8714fb4a13b138a13c3f297691")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cell_work_stationitems>)))
  "Returns full string definition for message of type '<cell_work_stationitems>"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)~%string foreign_key~%string unique_code 		        # must-have,UNIQUE INDEX	~%string station_name		   ~%uint8  station_ser~%string cellcontroller_code 		 ~%geometry_msgs/Pose positioned_pose 		 ~%uint8  mc_func_code 	~%uint8  transfer_code 	~%uint8  transfer_state ~%uint8  align_type~%string align_metadata~%geometry_msgs/Pose pre_positioned_pose~%string Identify_id~%string update_time			# must-have 	 ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cell_work_stationitems)))
  "Returns full string definition for message of type 'cell_work_stationitems"
  (cl:format cl:nil "string primary_id			# must-have,UUID : primary_key(system_id)~%string foreign_key~%string unique_code 		        # must-have,UNIQUE INDEX	~%string station_name		   ~%uint8  station_ser~%string cellcontroller_code 		 ~%geometry_msgs/Pose positioned_pose 		 ~%uint8  mc_func_code 	~%uint8  transfer_code 	~%uint8  transfer_state ~%uint8  align_type~%string align_metadata~%geometry_msgs/Pose pre_positioned_pose~%string Identify_id~%string update_time			# must-have 	 ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cell_work_stationitems>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'primary_id))
     4 (cl:length (cl:slot-value msg 'foreign_key))
     4 (cl:length (cl:slot-value msg 'unique_code))
     4 (cl:length (cl:slot-value msg 'station_name))
     1
     4 (cl:length (cl:slot-value msg 'cellcontroller_code))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'positioned_pose))
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'align_metadata))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pre_positioned_pose))
     4 (cl:length (cl:slot-value msg 'Identify_id))
     4 (cl:length (cl:slot-value msg 'update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cell_work_stationitems>))
  "Converts a ROS message object to a list"
  (cl:list 'cell_work_stationitems
    (cl:cons ':primary_id (primary_id msg))
    (cl:cons ':foreign_key (foreign_key msg))
    (cl:cons ':unique_code (unique_code msg))
    (cl:cons ':station_name (station_name msg))
    (cl:cons ':station_ser (station_ser msg))
    (cl:cons ':cellcontroller_code (cellcontroller_code msg))
    (cl:cons ':positioned_pose (positioned_pose msg))
    (cl:cons ':mc_func_code (mc_func_code msg))
    (cl:cons ':transfer_code (transfer_code msg))
    (cl:cons ':transfer_state (transfer_state msg))
    (cl:cons ':align_type (align_type msg))
    (cl:cons ':align_metadata (align_metadata msg))
    (cl:cons ':pre_positioned_pose (pre_positioned_pose msg))
    (cl:cons ':Identify_id (Identify_id msg))
    (cl:cons ':update_time (update_time msg))
))
