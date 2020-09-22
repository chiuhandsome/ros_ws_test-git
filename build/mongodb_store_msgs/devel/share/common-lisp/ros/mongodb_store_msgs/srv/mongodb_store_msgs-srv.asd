
(cl:in-package :asdf)

(defsystem "mongodb_store_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :mongodb_store_msgs-msg
)
  :components ((:file "_package")
    (:file "MongoDeleteMsg" :depends-on ("_package_MongoDeleteMsg"))
    (:file "_package_MongoDeleteMsg" :depends-on ("_package"))
    (:file "MongoInsertMsg" :depends-on ("_package_MongoInsertMsg"))
    (:file "_package_MongoInsertMsg" :depends-on ("_package"))
    (:file "MongoQueryMsg" :depends-on ("_package_MongoQueryMsg"))
    (:file "_package_MongoQueryMsg" :depends-on ("_package"))
    (:file "MongoQuerywithProjectionMsg" :depends-on ("_package_MongoQuerywithProjectionMsg"))
    (:file "_package_MongoQuerywithProjectionMsg" :depends-on ("_package"))
    (:file "MongoUpdateMsg" :depends-on ("_package_MongoUpdateMsg"))
    (:file "_package_MongoUpdateMsg" :depends-on ("_package"))
  ))