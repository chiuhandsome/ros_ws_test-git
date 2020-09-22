; Auto-generated. Do not edit!


(cl:in-package reset_location-msg)


;//! \htmlinclude TrilaterationGoal.msg.html

(cl:defclass <TrilaterationGoal> (roslisp-msg-protocol:ros-message)
  ((tag1_x
    :reader tag1_x
    :initarg :tag1_x
    :type cl:float
    :initform 0.0)
   (tag1_y
    :reader tag1_y
    :initarg :tag1_y
    :type cl:float
    :initform 0.0)
   (tag2_x
    :reader tag2_x
    :initarg :tag2_x
    :type cl:float
    :initform 0.0)
   (tag2_y
    :reader tag2_y
    :initarg :tag2_y
    :type cl:float
    :initform 0.0)
   (tag3_x
    :reader tag3_x
    :initarg :tag3_x
    :type cl:float
    :initform 0.0)
   (tag3_y
    :reader tag3_y
    :initarg :tag3_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrilaterationGoal (<TrilaterationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrilaterationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrilaterationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name reset_location-msg:<TrilaterationGoal> is deprecated: use reset_location-msg:TrilaterationGoal instead.")))

(cl:ensure-generic-function 'tag1_x-val :lambda-list '(m))
(cl:defmethod tag1_x-val ((m <TrilaterationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reset_location-msg:tag1_x-val is deprecated.  Use reset_location-msg:tag1_x instead.")
  (tag1_x m))

(cl:ensure-generic-function 'tag1_y-val :lambda-list '(m))
(cl:defmethod tag1_y-val ((m <TrilaterationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reset_location-msg:tag1_y-val is deprecated.  Use reset_location-msg:tag1_y instead.")
  (tag1_y m))

(cl:ensure-generic-function 'tag2_x-val :lambda-list '(m))
(cl:defmethod tag2_x-val ((m <TrilaterationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reset_location-msg:tag2_x-val is deprecated.  Use reset_location-msg:tag2_x instead.")
  (tag2_x m))

(cl:ensure-generic-function 'tag2_y-val :lambda-list '(m))
(cl:defmethod tag2_y-val ((m <TrilaterationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reset_location-msg:tag2_y-val is deprecated.  Use reset_location-msg:tag2_y instead.")
  (tag2_y m))

(cl:ensure-generic-function 'tag3_x-val :lambda-list '(m))
(cl:defmethod tag3_x-val ((m <TrilaterationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reset_location-msg:tag3_x-val is deprecated.  Use reset_location-msg:tag3_x instead.")
  (tag3_x m))

(cl:ensure-generic-function 'tag3_y-val :lambda-list '(m))
(cl:defmethod tag3_y-val ((m <TrilaterationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader reset_location-msg:tag3_y-val is deprecated.  Use reset_location-msg:tag3_y instead.")
  (tag3_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrilaterationGoal>) ostream)
  "Serializes a message object of type '<TrilaterationGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tag1_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tag1_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tag2_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tag2_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tag3_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tag3_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrilaterationGoal>) istream)
  "Deserializes a message object of type '<TrilaterationGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag1_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag1_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag2_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag2_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag3_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag3_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrilaterationGoal>)))
  "Returns string type for a message object of type '<TrilaterationGoal>"
  "reset_location/TrilaterationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrilaterationGoal)))
  "Returns string type for a message object of type 'TrilaterationGoal"
  "reset_location/TrilaterationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrilaterationGoal>)))
  "Returns md5sum for a message object of type '<TrilaterationGoal>"
  "cdca09bf8b70b36bc95d7cee4cc216fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrilaterationGoal)))
  "Returns md5sum for a message object of type 'TrilaterationGoal"
  "cdca09bf8b70b36bc95d7cee4cc216fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrilaterationGoal>)))
  "Returns full string definition for message of type '<TrilaterationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%float64 tag1_x~%float64 tag1_y~%float64 tag2_x~%float64 tag2_y~%float64 tag3_x~%float64 tag3_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrilaterationGoal)))
  "Returns full string definition for message of type 'TrilaterationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%float64 tag1_x~%float64 tag1_y~%float64 tag2_x~%float64 tag2_y~%float64 tag3_x~%float64 tag3_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrilaterationGoal>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrilaterationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TrilaterationGoal
    (cl:cons ':tag1_x (tag1_x msg))
    (cl:cons ':tag1_y (tag1_y msg))
    (cl:cons ':tag2_x (tag2_x msg))
    (cl:cons ':tag2_y (tag2_y msg))
    (cl:cons ':tag3_x (tag3_x msg))
    (cl:cons ':tag3_y (tag3_y msg))
))
