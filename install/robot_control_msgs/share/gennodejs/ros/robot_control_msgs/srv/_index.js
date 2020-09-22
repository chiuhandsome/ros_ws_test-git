
"use strict";

let hyc_roslog_cmdsrv = require('./hyc_roslog_cmdsrv.js')
let robot_ctrl_alarmHistory_cmd = require('./robot_ctrl_alarmHistory_cmd.js')
let robot_ctrl_roslog_cmd = require('./robot_ctrl_roslog_cmd.js')
let hyc_alarmHistory_cmdsrv = require('./hyc_alarmHistory_cmdsrv.js')
let hyc_alarmCode_cmdsrv = require('./hyc_alarmCode_cmdsrv.js')
let robot_ctrl_alarmCode_cmd = require('./robot_ctrl_alarmCode_cmd.js')

module.exports = {
  hyc_roslog_cmdsrv: hyc_roslog_cmdsrv,
  robot_ctrl_alarmHistory_cmd: robot_ctrl_alarmHistory_cmd,
  robot_ctrl_roslog_cmd: robot_ctrl_roslog_cmd,
  hyc_alarmHistory_cmdsrv: hyc_alarmHistory_cmdsrv,
  hyc_alarmCode_cmdsrv: hyc_alarmCode_cmdsrv,
  robot_ctrl_alarmCode_cmd: robot_ctrl_alarmCode_cmd,
};
