; Auto-generated. Do not edit!


(cl:in-package botcmd_msgs-msg)


;//! \htmlinclude bot_transbattery.msg.html

(cl:defclass <bot_transbattery> (roslisp-msg-protocol:ros-message)
  ((index_ID
    :reader index_ID
    :initarg :index_ID
    :type cl:fixnum
    :initform 0)
   (gen_alarmcode
    :reader gen_alarmcode
    :initarg :gen_alarmcode
    :type cl:fixnum
    :initform 0)
   (emg_alarmcode
    :reader emg_alarmcode
    :initarg :emg_alarmcode
    :type cl:fixnum
    :initform 0)
   (chargstate_code
    :reader chargstate_code
    :initarg :chargstate_code
    :type cl:fixnum
    :initform 0)
   (cell_balance_code
    :reader cell_balance_code
    :initarg :cell_balance_code
    :type cl:fixnum
    :initform 0)
   (cell_volt_min
    :reader cell_volt_min
    :initarg :cell_volt_min
    :type cl:fixnum
    :initform 0)
   (cell_volt_max
    :reader cell_volt_max
    :initarg :cell_volt_max
    :type cl:fixnum
    :initform 0)
   (chargcurrent_code
    :reader chargcurrent_code
    :initarg :chargcurrent_code
    :type cl:fixnum
    :initform 0)
   (full_capacity
    :reader full_capacity
    :initarg :full_capacity
    :type cl:fixnum
    :initform 0)
   (loop_counter
    :reader loop_counter
    :initarg :loop_counter
    :type cl:fixnum
    :initform 0)
   (cell_temp_min
    :reader cell_temp_min
    :initarg :cell_temp_min
    :type cl:fixnum
    :initform 0)
   (cell_temp_max
    :reader cell_temp_max
    :initarg :cell_temp_max
    :type cl:fixnum
    :initform 0)
   (Pack_tol_volt
    :reader Pack_tol_volt
    :initarg :Pack_tol_volt
    :type cl:fixnum
    :initform 0)
   (Pack_resistance
    :reader Pack_resistance
    :initarg :Pack_resistance
    :type cl:fixnum
    :initform 0)
   (total_discharge
    :reader total_discharge
    :initarg :total_discharge
    :type cl:integer
    :initform 0)
   (ASOC_code
    :reader ASOC_code
    :initarg :ASOC_code
    :type cl:fixnum
    :initform 0)
   (scaleunit_code
    :reader scaleunit_code
    :initarg :scaleunit_code
    :type cl:fixnum
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass bot_transbattery (<bot_transbattery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bot_transbattery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bot_transbattery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name botcmd_msgs-msg:<bot_transbattery> is deprecated: use botcmd_msgs-msg:bot_transbattery instead.")))

(cl:ensure-generic-function 'index_ID-val :lambda-list '(m))
(cl:defmethod index_ID-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:index_ID-val is deprecated.  Use botcmd_msgs-msg:index_ID instead.")
  (index_ID m))

(cl:ensure-generic-function 'gen_alarmcode-val :lambda-list '(m))
(cl:defmethod gen_alarmcode-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:gen_alarmcode-val is deprecated.  Use botcmd_msgs-msg:gen_alarmcode instead.")
  (gen_alarmcode m))

(cl:ensure-generic-function 'emg_alarmcode-val :lambda-list '(m))
(cl:defmethod emg_alarmcode-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:emg_alarmcode-val is deprecated.  Use botcmd_msgs-msg:emg_alarmcode instead.")
  (emg_alarmcode m))

(cl:ensure-generic-function 'chargstate_code-val :lambda-list '(m))
(cl:defmethod chargstate_code-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:chargstate_code-val is deprecated.  Use botcmd_msgs-msg:chargstate_code instead.")
  (chargstate_code m))

(cl:ensure-generic-function 'cell_balance_code-val :lambda-list '(m))
(cl:defmethod cell_balance_code-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:cell_balance_code-val is deprecated.  Use botcmd_msgs-msg:cell_balance_code instead.")
  (cell_balance_code m))

(cl:ensure-generic-function 'cell_volt_min-val :lambda-list '(m))
(cl:defmethod cell_volt_min-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:cell_volt_min-val is deprecated.  Use botcmd_msgs-msg:cell_volt_min instead.")
  (cell_volt_min m))

(cl:ensure-generic-function 'cell_volt_max-val :lambda-list '(m))
(cl:defmethod cell_volt_max-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:cell_volt_max-val is deprecated.  Use botcmd_msgs-msg:cell_volt_max instead.")
  (cell_volt_max m))

(cl:ensure-generic-function 'chargcurrent_code-val :lambda-list '(m))
(cl:defmethod chargcurrent_code-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:chargcurrent_code-val is deprecated.  Use botcmd_msgs-msg:chargcurrent_code instead.")
  (chargcurrent_code m))

(cl:ensure-generic-function 'full_capacity-val :lambda-list '(m))
(cl:defmethod full_capacity-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:full_capacity-val is deprecated.  Use botcmd_msgs-msg:full_capacity instead.")
  (full_capacity m))

(cl:ensure-generic-function 'loop_counter-val :lambda-list '(m))
(cl:defmethod loop_counter-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:loop_counter-val is deprecated.  Use botcmd_msgs-msg:loop_counter instead.")
  (loop_counter m))

(cl:ensure-generic-function 'cell_temp_min-val :lambda-list '(m))
(cl:defmethod cell_temp_min-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:cell_temp_min-val is deprecated.  Use botcmd_msgs-msg:cell_temp_min instead.")
  (cell_temp_min m))

(cl:ensure-generic-function 'cell_temp_max-val :lambda-list '(m))
(cl:defmethod cell_temp_max-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:cell_temp_max-val is deprecated.  Use botcmd_msgs-msg:cell_temp_max instead.")
  (cell_temp_max m))

(cl:ensure-generic-function 'Pack_tol_volt-val :lambda-list '(m))
(cl:defmethod Pack_tol_volt-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:Pack_tol_volt-val is deprecated.  Use botcmd_msgs-msg:Pack_tol_volt instead.")
  (Pack_tol_volt m))

(cl:ensure-generic-function 'Pack_resistance-val :lambda-list '(m))
(cl:defmethod Pack_resistance-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:Pack_resistance-val is deprecated.  Use botcmd_msgs-msg:Pack_resistance instead.")
  (Pack_resistance m))

(cl:ensure-generic-function 'total_discharge-val :lambda-list '(m))
(cl:defmethod total_discharge-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:total_discharge-val is deprecated.  Use botcmd_msgs-msg:total_discharge instead.")
  (total_discharge m))

(cl:ensure-generic-function 'ASOC_code-val :lambda-list '(m))
(cl:defmethod ASOC_code-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:ASOC_code-val is deprecated.  Use botcmd_msgs-msg:ASOC_code instead.")
  (ASOC_code m))

(cl:ensure-generic-function 'scaleunit_code-val :lambda-list '(m))
(cl:defmethod scaleunit_code-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:scaleunit_code-val is deprecated.  Use botcmd_msgs-msg:scaleunit_code instead.")
  (scaleunit_code m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <bot_transbattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader botcmd_msgs-msg:result-val is deprecated.  Use botcmd_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bot_transbattery>) ostream)
  "Serializes a message object of type '<bot_transbattery>"
  (cl:let* ((signed (cl:slot-value msg 'index_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gen_alarmcode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'emg_alarmcode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'chargstate_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cell_balance_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cell_volt_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cell_volt_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'chargcurrent_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'full_capacity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'loop_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cell_temp_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cell_temp_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Pack_tol_volt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Pack_resistance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'total_discharge)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ASOC_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'scaleunit_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bot_transbattery>) istream)
  "Deserializes a message object of type '<bot_transbattery>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index_ID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gen_alarmcode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emg_alarmcode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chargstate_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cell_balance_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cell_volt_min) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cell_volt_max) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chargcurrent_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'full_capacity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loop_counter) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cell_temp_min) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cell_temp_max) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Pack_tol_volt) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Pack_resistance) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total_discharge) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ASOC_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scaleunit_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bot_transbattery>)))
  "Returns string type for a message object of type '<bot_transbattery>"
  "botcmd_msgs/bot_transbattery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bot_transbattery)))
  "Returns string type for a message object of type 'bot_transbattery"
  "botcmd_msgs/bot_transbattery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bot_transbattery>)))
  "Returns md5sum for a message object of type '<bot_transbattery>"
  "42a37315d341a8a261c4ebe967c4f174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bot_transbattery)))
  "Returns md5sum for a message object of type 'bot_transbattery"
  "42a37315d341a8a261c4ebe967c4f174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bot_transbattery>)))
  "Returns full string definition for message of type '<bot_transbattery>"
  (cl:format cl:nil "int8 index_ID~%int16 gen_alarmcode		#address : 0x60~%int16 emg_alarmcode		#address : 0x61~%int16 chargstate_code	#address : 0x62~%int16 cell_balance_code	#address : 0x63~%int16 cell_volt_min		#address : 0x64 (mV/unit)~%int16 cell_volt_max		#address : 0x65 (mV/unit)~%int16 chargcurrent_code	#address : 0x66 (10mA/unit or mA/unit)~%int16 full_capacity  	#address : 0x67 (mAH)~%int16 loop_counter  	#address : 0x68 (times)~%int8  cell_temp_min  	#address : 0x69-L (deg C)~%int8  cell_temp_max  	#address : 0x69-H (deg C)~%int16 Pack_tol_volt		#address : 0x6A (10mV/unit or mV/unit)~%int16 Pack_resistance	#address : 0x6B (uOhm)~%int32 total_discharge	#address : 0x6C_D (uAH)~%int16 ASOC_code     	#address : 0x6E (%,absolute (remaining) capacity percentage of the battery pack)~%int16 scaleunit_code	#address : 0x6F (conversion unit for voltage ,current and temperature)~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bot_transbattery)))
  "Returns full string definition for message of type 'bot_transbattery"
  (cl:format cl:nil "int8 index_ID~%int16 gen_alarmcode		#address : 0x60~%int16 emg_alarmcode		#address : 0x61~%int16 chargstate_code	#address : 0x62~%int16 cell_balance_code	#address : 0x63~%int16 cell_volt_min		#address : 0x64 (mV/unit)~%int16 cell_volt_max		#address : 0x65 (mV/unit)~%int16 chargcurrent_code	#address : 0x66 (10mA/unit or mA/unit)~%int16 full_capacity  	#address : 0x67 (mAH)~%int16 loop_counter  	#address : 0x68 (times)~%int8  cell_temp_min  	#address : 0x69-L (deg C)~%int8  cell_temp_max  	#address : 0x69-H (deg C)~%int16 Pack_tol_volt		#address : 0x6A (10mV/unit or mV/unit)~%int16 Pack_resistance	#address : 0x6B (uOhm)~%int32 total_discharge	#address : 0x6C_D (uAH)~%int16 ASOC_code     	#address : 0x6E (%,absolute (remaining) capacity percentage of the battery pack)~%int16 scaleunit_code	#address : 0x6F (conversion unit for voltage ,current and temperature)~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bot_transbattery>))
  (cl:+ 0
     1
     2
     2
     2
     2
     2
     2
     2
     2
     2
     1
     1
     2
     2
     4
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bot_transbattery>))
  "Converts a ROS message object to a list"
  (cl:list 'bot_transbattery
    (cl:cons ':index_ID (index_ID msg))
    (cl:cons ':gen_alarmcode (gen_alarmcode msg))
    (cl:cons ':emg_alarmcode (emg_alarmcode msg))
    (cl:cons ':chargstate_code (chargstate_code msg))
    (cl:cons ':cell_balance_code (cell_balance_code msg))
    (cl:cons ':cell_volt_min (cell_volt_min msg))
    (cl:cons ':cell_volt_max (cell_volt_max msg))
    (cl:cons ':chargcurrent_code (chargcurrent_code msg))
    (cl:cons ':full_capacity (full_capacity msg))
    (cl:cons ':loop_counter (loop_counter msg))
    (cl:cons ':cell_temp_min (cell_temp_min msg))
    (cl:cons ':cell_temp_max (cell_temp_max msg))
    (cl:cons ':Pack_tol_volt (Pack_tol_volt msg))
    (cl:cons ':Pack_resistance (Pack_resistance msg))
    (cl:cons ':total_discharge (total_discharge msg))
    (cl:cons ':ASOC_code (ASOC_code msg))
    (cl:cons ':scaleunit_code (scaleunit_code msg))
    (cl:cons ':result (result msg))
))
