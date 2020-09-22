
(cl:in-package :asdf)

(defsystem "mongodb_store-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetParam" :depends-on ("_package_GetParam"))
    (:file "_package_GetParam" :depends-on ("_package"))
    (:file "MongoFind" :depends-on ("_package_MongoFind"))
    (:file "_package_MongoFind" :depends-on ("_package"))
    (:file "MongoInsert" :depends-on ("_package_MongoInsert"))
    (:file "_package_MongoInsert" :depends-on ("_package"))
    (:file "MongoUpdate" :depends-on ("_package_MongoUpdate"))
    (:file "_package_MongoUpdate" :depends-on ("_package"))
    (:file "SetParam" :depends-on ("_package_SetParam"))
    (:file "_package_SetParam" :depends-on ("_package"))
  ))