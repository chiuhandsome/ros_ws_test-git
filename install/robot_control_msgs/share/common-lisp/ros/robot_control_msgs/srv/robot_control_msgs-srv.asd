
(cl:in-package :asdf)

(defsystem "robot_control_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :robot_control_msgs-msg
)
  :components ((:file "_package")
    (:file "hyc_alarmCode_cmdsrv" :depends-on ("_package_hyc_alarmCode_cmdsrv"))
    (:file "_package_hyc_alarmCode_cmdsrv" :depends-on ("_package"))
    (:file "hyc_alarmHistory_cmdsrv" :depends-on ("_package_hyc_alarmHistory_cmdsrv"))
    (:file "_package_hyc_alarmHistory_cmdsrv" :depends-on ("_package"))
    (:file "hyc_roslog_cmdsrv" :depends-on ("_package_hyc_roslog_cmdsrv"))
    (:file "_package_hyc_roslog_cmdsrv" :depends-on ("_package"))
    (:file "robot_ctrl_alarmCode_cmd" :depends-on ("_package_robot_ctrl_alarmCode_cmd"))
    (:file "_package_robot_ctrl_alarmCode_cmd" :depends-on ("_package"))
    (:file "robot_ctrl_alarmHistory_cmd" :depends-on ("_package_robot_ctrl_alarmHistory_cmd"))
    (:file "_package_robot_ctrl_alarmHistory_cmd" :depends-on ("_package"))
    (:file "robot_ctrl_roslog_cmd" :depends-on ("_package_robot_ctrl_roslog_cmd"))
    (:file "_package_robot_ctrl_roslog_cmd" :depends-on ("_package"))
  ))