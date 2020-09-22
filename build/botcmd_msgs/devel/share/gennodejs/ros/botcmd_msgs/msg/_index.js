
"use strict";

let bot_Infodata = require('./bot_Infodata.js');
let bot_transbattery = require('./bot_transbattery.js');
let bot_pubstatus = require('./bot_pubstatus.js');
let bot_battery = require('./bot_battery.js');
let bot_ultrasonic = require('./bot_ultrasonic.js');
let bot_battery_info = require('./bot_battery_info.js');
let bot_mqtt_cmd = require('./bot_mqtt_cmd.js');
let bot_mqtt_rawdata = require('./bot_mqtt_rawdata.js');
let bot_transferdata = require('./bot_transferdata.js');
let bot_devicestatus = require('./bot_devicestatus.js');
let actBotCmdGoal = require('./actBotCmdGoal.js');
let actBotCmdResult = require('./actBotCmdResult.js');
let actBotCmdActionGoal = require('./actBotCmdActionGoal.js');
let actBotCmdFeedback = require('./actBotCmdFeedback.js');
let actBotCmdActionResult = require('./actBotCmdActionResult.js');
let actBotCmdAction = require('./actBotCmdAction.js');
let actBotCmdActionFeedback = require('./actBotCmdActionFeedback.js');

module.exports = {
  bot_Infodata: bot_Infodata,
  bot_transbattery: bot_transbattery,
  bot_pubstatus: bot_pubstatus,
  bot_battery: bot_battery,
  bot_ultrasonic: bot_ultrasonic,
  bot_battery_info: bot_battery_info,
  bot_mqtt_cmd: bot_mqtt_cmd,
  bot_mqtt_rawdata: bot_mqtt_rawdata,
  bot_transferdata: bot_transferdata,
  bot_devicestatus: bot_devicestatus,
  actBotCmdGoal: actBotCmdGoal,
  actBotCmdResult: actBotCmdResult,
  actBotCmdActionGoal: actBotCmdActionGoal,
  actBotCmdFeedback: actBotCmdFeedback,
  actBotCmdActionResult: actBotCmdActionResult,
  actBotCmdAction: actBotCmdAction,
  actBotCmdActionFeedback: actBotCmdActionFeedback,
};
