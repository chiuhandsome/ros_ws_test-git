; Auto-generated. Do not edit!


(cl:in-package mongodb_store_msgs-msg)


;//! \htmlinclude MoveEntriesGoal.msg.html

(cl:defclass <MoveEntriesGoal> (roslisp-msg-protocol:ros-message)
  ((database
    :reader database
    :initarg :database
    :type cl:string
    :initform "")
   (collections
    :reader collections
    :initarg :collections
    :type mongodb_store_msgs-msg:StringList
    :initform (cl:make-instance 'mongodb_store_msgs-msg:StringList))
   (move_before
    :reader move_before
    :initarg :move_before
    :type cl:real
    :initform 0)
   (delete_after_move
    :reader delete_after_move
    :initarg :delete_after_move
    :type cl:boolean
    :initform cl:nil)
   (query
    :reader query
    :initarg :query
    :type mongodb_store_msgs-msg:StringPairList
    :initform (cl:make-instance 'mongodb_store_msgs-msg:StringPairList)))
)

(cl:defclass MoveEntriesGoal (<MoveEntriesGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveEntriesGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveEntriesGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mongodb_store_msgs-msg:<MoveEntriesGoal> is deprecated: use mongodb_store_msgs-msg:MoveEntriesGoal instead.")))

(cl:ensure-generic-function 'database-val :lambda-list '(m))
(cl:defmethod database-val ((m <MoveEntriesGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:database-val is deprecated.  Use mongodb_store_msgs-msg:database instead.")
  (database m))

(cl:ensure-generic-function 'collections-val :lambda-list '(m))
(cl:defmethod collections-val ((m <MoveEntriesGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:collections-val is deprecated.  Use mongodb_store_msgs-msg:collections instead.")
  (collections m))

(cl:ensure-generic-function 'move_before-val :lambda-list '(m))
(cl:defmethod move_before-val ((m <MoveEntriesGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:move_before-val is deprecated.  Use mongodb_store_msgs-msg:move_before instead.")
  (move_before m))

(cl:ensure-generic-function 'delete_after_move-val :lambda-list '(m))
(cl:defmethod delete_after_move-val ((m <MoveEntriesGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:delete_after_move-val is deprecated.  Use mongodb_store_msgs-msg:delete_after_move instead.")
  (delete_after_move m))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <MoveEntriesGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mongodb_store_msgs-msg:query-val is deprecated.  Use mongodb_store_msgs-msg:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveEntriesGoal>) ostream)
  "Serializes a message object of type '<MoveEntriesGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'database))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'database))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'collections) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'move_before)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'move_before) (cl:floor (cl:slot-value msg 'move_before)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'delete_after_move) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'query) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveEntriesGoal>) istream)
  "Deserializes a message object of type '<MoveEntriesGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'database) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'database) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'collections) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_before) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'delete_after_move) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'query) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveEntriesGoal>)))
  "Returns string type for a message object of type '<MoveEntriesGoal>"
  "mongodb_store_msgs/MoveEntriesGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveEntriesGoal)))
  "Returns string type for a message object of type 'MoveEntriesGoal"
  "mongodb_store_msgs/MoveEntriesGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveEntriesGoal>)))
  "Returns md5sum for a message object of type '<MoveEntriesGoal>"
  "48aa6e70c15714ce3dfa1b8f64da4ec6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveEntriesGoal)))
  "Returns md5sum for a message object of type 'MoveEntriesGoal"
  "48aa6e70c15714ce3dfa1b8f64da4ec6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveEntriesGoal>)))
  "Returns full string definition for message of type '<MoveEntriesGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# the db to move entries from~%string database~%# the collections to move entries from~%StringList collections~%# only entries before rospy.get_rostime() - move_before are moved. if 0, all are moved~%duration move_before~%# delete moved entries after replication~%bool delete_after_move~%# query to move entries by~%StringPairList query~%~%================================================================================~%MSG: mongodb_store_msgs/StringList~%string[] data~%~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveEntriesGoal)))
  "Returns full string definition for message of type 'MoveEntriesGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# the db to move entries from~%string database~%# the collections to move entries from~%StringList collections~%# only entries before rospy.get_rostime() - move_before are moved. if 0, all are moved~%duration move_before~%# delete moved entries after replication~%bool delete_after_move~%# query to move entries by~%StringPairList query~%~%================================================================================~%MSG: mongodb_store_msgs/StringList~%string[] data~%~%================================================================================~%MSG: mongodb_store_msgs/StringPairList~%StringPair[] pairs~%~%================================================================================~%MSG: mongodb_store_msgs/StringPair~%string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveEntriesGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'database))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'collections))
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveEntriesGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveEntriesGoal
    (cl:cons ':database (database msg))
    (cl:cons ':collections (collections msg))
    (cl:cons ':move_before (move_before msg))
    (cl:cons ':delete_after_move (delete_after_move msg))
    (cl:cons ':query (query msg))
))
