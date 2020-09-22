
(cl:in-package :asdf)

(defsystem "samsungcmd_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "samsung_commdata_cmd" :depends-on ("_package_samsung_commdata_cmd"))
    (:file "_package_samsung_commdata_cmd" :depends-on ("_package"))
  ))