
(cl:in-package :asdf)

(defsystem "botcmd_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "actBotCmdAction" :depends-on ("_package_actBotCmdAction"))
    (:file "_package_actBotCmdAction" :depends-on ("_package"))
    (:file "actBotCmdActionFeedback" :depends-on ("_package_actBotCmdActionFeedback"))
    (:file "_package_actBotCmdActionFeedback" :depends-on ("_package"))
    (:file "actBotCmdActionGoal" :depends-on ("_package_actBotCmdActionGoal"))
    (:file "_package_actBotCmdActionGoal" :depends-on ("_package"))
    (:file "actBotCmdActionResult" :depends-on ("_package_actBotCmdActionResult"))
    (:file "_package_actBotCmdActionResult" :depends-on ("_package"))
    (:file "actBotCmdFeedback" :depends-on ("_package_actBotCmdFeedback"))
    (:file "_package_actBotCmdFeedback" :depends-on ("_package"))
    (:file "actBotCmdGoal" :depends-on ("_package_actBotCmdGoal"))
    (:file "_package_actBotCmdGoal" :depends-on ("_package"))
    (:file "actBotCmdResult" :depends-on ("_package_actBotCmdResult"))
    (:file "_package_actBotCmdResult" :depends-on ("_package"))
    (:file "bot_Infodata" :depends-on ("_package_bot_Infodata"))
    (:file "_package_bot_Infodata" :depends-on ("_package"))
    (:file "bot_battery" :depends-on ("_package_bot_battery"))
    (:file "_package_bot_battery" :depends-on ("_package"))
    (:file "bot_battery_info" :depends-on ("_package_bot_battery_info"))
    (:file "_package_bot_battery_info" :depends-on ("_package"))
    (:file "bot_devicestatus" :depends-on ("_package_bot_devicestatus"))
    (:file "_package_bot_devicestatus" :depends-on ("_package"))
    (:file "bot_mqtt_cmd" :depends-on ("_package_bot_mqtt_cmd"))
    (:file "_package_bot_mqtt_cmd" :depends-on ("_package"))
    (:file "bot_mqtt_rawdata" :depends-on ("_package_bot_mqtt_rawdata"))
    (:file "_package_bot_mqtt_rawdata" :depends-on ("_package"))
    (:file "bot_pubstatus" :depends-on ("_package_bot_pubstatus"))
    (:file "_package_bot_pubstatus" :depends-on ("_package"))
    (:file "bot_transbattery" :depends-on ("_package_bot_transbattery"))
    (:file "_package_bot_transbattery" :depends-on ("_package"))
    (:file "bot_transferdata" :depends-on ("_package_bot_transferdata"))
    (:file "_package_bot_transferdata" :depends-on ("_package"))
    (:file "bot_ultrasonic" :depends-on ("_package_bot_ultrasonic"))
    (:file "_package_bot_ultrasonic" :depends-on ("_package"))
  ))