
(cl:in-package :asdf)

(defsystem "open_auto_dock_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Cloud" :depends-on ("_package_Cloud"))
    (:file "_package_Cloud" :depends-on ("_package"))
  ))