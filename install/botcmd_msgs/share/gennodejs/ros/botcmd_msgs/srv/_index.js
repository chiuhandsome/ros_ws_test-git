
"use strict";

let bot_battery_cmd = require('./bot_battery_cmd.js')
let bot_di_cmd = require('./bot_di_cmd.js')
let bot_battery_info_cmd = require('./bot_battery_info_cmd.js')
let bot_status_cmd = require('./bot_status_cmd.js')
let bot_device_cmd = require('./bot_device_cmd.js')
let bot_do_cmd = require('./bot_do_cmd.js')
let bot_Infodata_cmd = require('./bot_Infodata_cmd.js')
let bot_transfer_cmd = require('./bot_transfer_cmd.js')
let bot_ultrasonic_cmd = require('./bot_ultrasonic_cmd.js')
let bot_getenabledi_cmd = require('./bot_getenabledi_cmd.js')

module.exports = {
  bot_battery_cmd: bot_battery_cmd,
  bot_di_cmd: bot_di_cmd,
  bot_battery_info_cmd: bot_battery_info_cmd,
  bot_status_cmd: bot_status_cmd,
  bot_device_cmd: bot_device_cmd,
  bot_do_cmd: bot_do_cmd,
  bot_Infodata_cmd: bot_Infodata_cmd,
  bot_transfer_cmd: bot_transfer_cmd,
  bot_ultrasonic_cmd: bot_ultrasonic_cmd,
  bot_getenabledi_cmd: bot_getenabledi_cmd,
};
