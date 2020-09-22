
"use strict";

let robot_info = require('./robot_info.js');
let robot_state = require('./robot_state.js');
let robot_topic_command = require('./robot_topic_command.js');
let interrupt_infoActionFeedback = require('./interrupt_infoActionFeedback.js');
let time_waitGoal = require('./time_waitGoal.js');
let pose_move_toActionFeedback = require('./pose_move_toActionFeedback.js');
let interrupt_infoResult = require('./interrupt_infoResult.js');
let worksheetrunActionResult = require('./worksheetrunActionResult.js');
let robot_interface_paramsResult = require('./robot_interface_paramsResult.js');
let robot_run_stateResult = require('./robot_run_stateResult.js');
let pose_recognize_recoveryActionFeedback = require('./pose_recognize_recoveryActionFeedback.js');
let robot_interface_proc_upperGoal = require('./robot_interface_proc_upperGoal.js');
let db_processFeedback = require('./db_processFeedback.js');
let function_run_recoveryResult = require('./function_run_recoveryResult.js');
let dock_toGoal = require('./dock_toGoal.js');
let function_run_recoveryActionFeedback = require('./function_run_recoveryActionFeedback.js');
let robot_interface_processActionResult = require('./robot_interface_processActionResult.js');
let function_runResult = require('./function_runResult.js');
let pose_move_to_recoveryResult = require('./pose_move_to_recoveryResult.js');
let robot_interface_proc_lowerResult = require('./robot_interface_proc_lowerResult.js');
let dock_to_recoveryResult = require('./dock_to_recoveryResult.js');
let dock_to_recoveryActionResult = require('./dock_to_recoveryActionResult.js');
let db_processActionFeedback = require('./db_processActionFeedback.js');
let pose_recognizeActionResult = require('./pose_recognizeActionResult.js');
let robot_interface_proc_lowerAction = require('./robot_interface_proc_lowerAction.js');
let power_chargeActionFeedback = require('./power_chargeActionFeedback.js');
let pose_move_to_recoveryAction = require('./pose_move_to_recoveryAction.js');
let function_runFeedback = require('./function_runFeedback.js');
let pose_move_to_recoveryFeedback = require('./pose_move_to_recoveryFeedback.js');
let time_waitAction = require('./time_waitAction.js');
let time_waitActionFeedback = require('./time_waitActionFeedback.js');
let undock_to_recoveryFeedback = require('./undock_to_recoveryFeedback.js');
let power_chargeAction = require('./power_chargeAction.js');
let self_turn_toActionGoal = require('./self_turn_toActionGoal.js');
let controller_state_recoveryGoal = require('./controller_state_recoveryGoal.js');
let self_turn_toGoal = require('./self_turn_toGoal.js');
let dock_to_recoveryAction = require('./dock_to_recoveryAction.js');
let power_chargeGoal = require('./power_chargeGoal.js');
let pose_recognize_recoveryGoal = require('./pose_recognize_recoveryGoal.js');
let pose_move_toAction = require('./pose_move_toAction.js');
let undock_toActionFeedback = require('./undock_toActionFeedback.js');
let db_process_recoveryActionGoal = require('./db_process_recoveryActionGoal.js');
let worksheetrunResult = require('./worksheetrunResult.js');
let robot_interface_processFeedback = require('./robot_interface_processFeedback.js');
let robot_interface_processActionFeedback = require('./robot_interface_processActionFeedback.js');
let power_charge_recoveryGoal = require('./power_charge_recoveryGoal.js');
let pose_recognize_recoveryActionResult = require('./pose_recognize_recoveryActionResult.js');
let controller_state_recoveryActionFeedback = require('./controller_state_recoveryActionFeedback.js');
let self_turn_toResult = require('./self_turn_toResult.js');
let robot_commandFeedback = require('./robot_commandFeedback.js');
let self_turn_to_recoveryAction = require('./self_turn_to_recoveryAction.js');
let dock_toActionResult = require('./dock_toActionResult.js');
let function_run_recoveryFeedback = require('./function_run_recoveryFeedback.js');
let dock_toActionFeedback = require('./dock_toActionFeedback.js');
let dock_to_recoveryGoal = require('./dock_to_recoveryGoal.js');
let pose_move_to_recoveryGoal = require('./pose_move_to_recoveryGoal.js');
let worksheetrunFeedback = require('./worksheetrunFeedback.js');
let time_waitResult = require('./time_waitResult.js');
let controller_state_recoveryAction = require('./controller_state_recoveryAction.js');
let function_runAction = require('./function_runAction.js');
let robot_interface_proc_lowerActionFeedback = require('./robot_interface_proc_lowerActionFeedback.js');
let pose_recognize_recoveryResult = require('./pose_recognize_recoveryResult.js');
let robot_interface_proc_upperResult = require('./robot_interface_proc_upperResult.js');
let undock_toActionGoal = require('./undock_toActionGoal.js');
let interrupt_infoGoal = require('./interrupt_infoGoal.js');
let pose_recognize_recoveryActionGoal = require('./pose_recognize_recoveryActionGoal.js');
let self_turn_toActionFeedback = require('./self_turn_toActionFeedback.js');
let robot_interface_processResult = require('./robot_interface_processResult.js');
let pose_recognizeActionFeedback = require('./pose_recognizeActionFeedback.js');
let pose_recognize_recoveryFeedback = require('./pose_recognize_recoveryFeedback.js');
let robot_commandGoal = require('./robot_commandGoal.js');
let db_process_recoveryActionFeedback = require('./db_process_recoveryActionFeedback.js');
let power_charge_recoveryAction = require('./power_charge_recoveryAction.js');
let self_turn_to_recoveryActionResult = require('./self_turn_to_recoveryActionResult.js');
let self_turn_to_recoveryActionFeedback = require('./self_turn_to_recoveryActionFeedback.js');
let robot_interface_paramsFeedback = require('./robot_interface_paramsFeedback.js');
let self_turn_toAction = require('./self_turn_toAction.js');
let function_runActionResult = require('./function_runActionResult.js');
let db_processActionResult = require('./db_processActionResult.js');
let pose_recognize_recoveryAction = require('./pose_recognize_recoveryAction.js');
let self_turn_to_recoveryFeedback = require('./self_turn_to_recoveryFeedback.js');
let function_run_recoveryActionResult = require('./function_run_recoveryActionResult.js');
let power_chargeFeedback = require('./power_chargeFeedback.js');
let db_process_recoveryAction = require('./db_process_recoveryAction.js');
let self_turn_toActionResult = require('./self_turn_toActionResult.js');
let time_waitActionGoal = require('./time_waitActionGoal.js');
let power_chargeResult = require('./power_chargeResult.js');
let undock_to_recoveryActionGoal = require('./undock_to_recoveryActionGoal.js');
let worksheetrunActionGoal = require('./worksheetrunActionGoal.js');
let db_process_recoveryResult = require('./db_process_recoveryResult.js');
let time_waitActionResult = require('./time_waitActionResult.js');
let pose_move_to_recoveryActionResult = require('./pose_move_to_recoveryActionResult.js');
let robot_interface_paramsActionGoal = require('./robot_interface_paramsActionGoal.js');
let db_process_recoveryFeedback = require('./db_process_recoveryFeedback.js');
let dock_toAction = require('./dock_toAction.js');
let controller_state_recoveryFeedback = require('./controller_state_recoveryFeedback.js');
let power_charge_recoveryActionResult = require('./power_charge_recoveryActionResult.js');
let pose_recognizeGoal = require('./pose_recognizeGoal.js');
let robot_interface_processAction = require('./robot_interface_processAction.js');
let pose_move_toFeedback = require('./pose_move_toFeedback.js');
let self_turn_to_recoveryActionGoal = require('./self_turn_to_recoveryActionGoal.js');
let undock_toAction = require('./undock_toAction.js');
let undock_to_recoveryAction = require('./undock_to_recoveryAction.js');
let robot_interface_proc_upperActionGoal = require('./robot_interface_proc_upperActionGoal.js');
let pose_recognizeAction = require('./pose_recognizeAction.js');
let robot_interface_proc_lowerFeedback = require('./robot_interface_proc_lowerFeedback.js');
let robot_run_stateGoal = require('./robot_run_stateGoal.js');
let self_turn_to_recoveryGoal = require('./self_turn_to_recoveryGoal.js');
let robot_interface_proc_upperActionResult = require('./robot_interface_proc_upperActionResult.js');
let dock_to_recoveryActionFeedback = require('./dock_to_recoveryActionFeedback.js');
let robot_interface_proc_upperActionFeedback = require('./robot_interface_proc_upperActionFeedback.js');
let robot_interface_processActionGoal = require('./robot_interface_processActionGoal.js');
let robot_commandActionGoal = require('./robot_commandActionGoal.js');
let robot_run_stateActionFeedback = require('./robot_run_stateActionFeedback.js');
let dock_to_recoveryActionGoal = require('./dock_to_recoveryActionGoal.js');
let function_run_recoveryActionGoal = require('./function_run_recoveryActionGoal.js');
let power_charge_recoveryActionFeedback = require('./power_charge_recoveryActionFeedback.js');
let interrupt_infoFeedback = require('./interrupt_infoFeedback.js');
let robot_interface_paramsGoal = require('./robot_interface_paramsGoal.js');
let power_chargeActionResult = require('./power_chargeActionResult.js');
let interrupt_infoActionGoal = require('./interrupt_infoActionGoal.js');
let robot_interface_proc_lowerActionResult = require('./robot_interface_proc_lowerActionResult.js');
let robot_commandActionFeedback = require('./robot_commandActionFeedback.js');
let power_charge_recoveryFeedback = require('./power_charge_recoveryFeedback.js');
let robot_run_stateFeedback = require('./robot_run_stateFeedback.js');
let pose_move_toActionGoal = require('./pose_move_toActionGoal.js');
let worksheetrunGoal = require('./worksheetrunGoal.js');
let robot_interface_proc_upperFeedback = require('./robot_interface_proc_upperFeedback.js');
let function_runGoal = require('./function_runGoal.js');
let robot_commandActionResult = require('./robot_commandActionResult.js');
let robot_interface_paramsActionResult = require('./robot_interface_paramsActionResult.js');
let db_process_recoveryActionResult = require('./db_process_recoveryActionResult.js');
let undock_toGoal = require('./undock_toGoal.js');
let undock_to_recoveryActionFeedback = require('./undock_to_recoveryActionFeedback.js');
let pose_move_toGoal = require('./pose_move_toGoal.js');
let robot_interface_paramsAction = require('./robot_interface_paramsAction.js');
let controller_state_recoveryActionResult = require('./controller_state_recoveryActionResult.js');
let controller_state_recoveryActionGoal = require('./controller_state_recoveryActionGoal.js');
let db_processAction = require('./db_processAction.js');
let robot_interface_proc_upperAction = require('./robot_interface_proc_upperAction.js');
let undock_toFeedback = require('./undock_toFeedback.js');
let db_processResult = require('./db_processResult.js');
let dock_toResult = require('./dock_toResult.js');
let pose_recognizeActionGoal = require('./pose_recognizeActionGoal.js');
let interrupt_infoAction = require('./interrupt_infoAction.js');
let robot_interface_paramsActionFeedback = require('./robot_interface_paramsActionFeedback.js');
let power_charge_recoveryResult = require('./power_charge_recoveryResult.js');
let pose_move_to_recoveryActionGoal = require('./pose_move_to_recoveryActionGoal.js');
let function_run_recoveryAction = require('./function_run_recoveryAction.js');
let undock_to_recoveryResult = require('./undock_to_recoveryResult.js');
let robot_commandAction = require('./robot_commandAction.js');
let time_waitFeedback = require('./time_waitFeedback.js');
let undock_to_recoveryActionResult = require('./undock_to_recoveryActionResult.js');
let db_processActionGoal = require('./db_processActionGoal.js');
let db_processGoal = require('./db_processGoal.js');
let robot_run_stateActionGoal = require('./robot_run_stateActionGoal.js');
let function_run_recoveryGoal = require('./function_run_recoveryGoal.js');
let robot_interface_processGoal = require('./robot_interface_processGoal.js');
let robot_interface_proc_lowerGoal = require('./robot_interface_proc_lowerGoal.js');
let pose_recognizeResult = require('./pose_recognizeResult.js');
let undock_to_recoveryGoal = require('./undock_to_recoveryGoal.js');
let robot_interface_proc_lowerActionGoal = require('./robot_interface_proc_lowerActionGoal.js');
let pose_recognizeFeedback = require('./pose_recognizeFeedback.js');
let function_runActionGoal = require('./function_runActionGoal.js');
let undock_toActionResult = require('./undock_toActionResult.js');
let robot_run_stateAction = require('./robot_run_stateAction.js');
let worksheetrunActionFeedback = require('./worksheetrunActionFeedback.js');
let worksheetrunAction = require('./worksheetrunAction.js');
let dock_to_recoveryFeedback = require('./dock_to_recoveryFeedback.js');
let pose_move_toActionResult = require('./pose_move_toActionResult.js');
let dock_toFeedback = require('./dock_toFeedback.js');
let interrupt_infoActionResult = require('./interrupt_infoActionResult.js');
let function_runActionFeedback = require('./function_runActionFeedback.js');
let self_turn_toFeedback = require('./self_turn_toFeedback.js');
let controller_state_recoveryResult = require('./controller_state_recoveryResult.js');
let robot_run_stateActionResult = require('./robot_run_stateActionResult.js');
let db_process_recoveryGoal = require('./db_process_recoveryGoal.js');
let dock_toActionGoal = require('./dock_toActionGoal.js');
let self_turn_to_recoveryResult = require('./self_turn_to_recoveryResult.js');
let pose_move_toResult = require('./pose_move_toResult.js');
let undock_toResult = require('./undock_toResult.js');
let power_chargeActionGoal = require('./power_chargeActionGoal.js');
let robot_commandResult = require('./robot_commandResult.js');
let pose_move_to_recoveryActionFeedback = require('./pose_move_to_recoveryActionFeedback.js');
let power_charge_recoveryActionGoal = require('./power_charge_recoveryActionGoal.js');

module.exports = {
  robot_info: robot_info,
  robot_state: robot_state,
  robot_topic_command: robot_topic_command,
  interrupt_infoActionFeedback: interrupt_infoActionFeedback,
  time_waitGoal: time_waitGoal,
  pose_move_toActionFeedback: pose_move_toActionFeedback,
  interrupt_infoResult: interrupt_infoResult,
  worksheetrunActionResult: worksheetrunActionResult,
  robot_interface_paramsResult: robot_interface_paramsResult,
  robot_run_stateResult: robot_run_stateResult,
  pose_recognize_recoveryActionFeedback: pose_recognize_recoveryActionFeedback,
  robot_interface_proc_upperGoal: robot_interface_proc_upperGoal,
  db_processFeedback: db_processFeedback,
  function_run_recoveryResult: function_run_recoveryResult,
  dock_toGoal: dock_toGoal,
  function_run_recoveryActionFeedback: function_run_recoveryActionFeedback,
  robot_interface_processActionResult: robot_interface_processActionResult,
  function_runResult: function_runResult,
  pose_move_to_recoveryResult: pose_move_to_recoveryResult,
  robot_interface_proc_lowerResult: robot_interface_proc_lowerResult,
  dock_to_recoveryResult: dock_to_recoveryResult,
  dock_to_recoveryActionResult: dock_to_recoveryActionResult,
  db_processActionFeedback: db_processActionFeedback,
  pose_recognizeActionResult: pose_recognizeActionResult,
  robot_interface_proc_lowerAction: robot_interface_proc_lowerAction,
  power_chargeActionFeedback: power_chargeActionFeedback,
  pose_move_to_recoveryAction: pose_move_to_recoveryAction,
  function_runFeedback: function_runFeedback,
  pose_move_to_recoveryFeedback: pose_move_to_recoveryFeedback,
  time_waitAction: time_waitAction,
  time_waitActionFeedback: time_waitActionFeedback,
  undock_to_recoveryFeedback: undock_to_recoveryFeedback,
  power_chargeAction: power_chargeAction,
  self_turn_toActionGoal: self_turn_toActionGoal,
  controller_state_recoveryGoal: controller_state_recoveryGoal,
  self_turn_toGoal: self_turn_toGoal,
  dock_to_recoveryAction: dock_to_recoveryAction,
  power_chargeGoal: power_chargeGoal,
  pose_recognize_recoveryGoal: pose_recognize_recoveryGoal,
  pose_move_toAction: pose_move_toAction,
  undock_toActionFeedback: undock_toActionFeedback,
  db_process_recoveryActionGoal: db_process_recoveryActionGoal,
  worksheetrunResult: worksheetrunResult,
  robot_interface_processFeedback: robot_interface_processFeedback,
  robot_interface_processActionFeedback: robot_interface_processActionFeedback,
  power_charge_recoveryGoal: power_charge_recoveryGoal,
  pose_recognize_recoveryActionResult: pose_recognize_recoveryActionResult,
  controller_state_recoveryActionFeedback: controller_state_recoveryActionFeedback,
  self_turn_toResult: self_turn_toResult,
  robot_commandFeedback: robot_commandFeedback,
  self_turn_to_recoveryAction: self_turn_to_recoveryAction,
  dock_toActionResult: dock_toActionResult,
  function_run_recoveryFeedback: function_run_recoveryFeedback,
  dock_toActionFeedback: dock_toActionFeedback,
  dock_to_recoveryGoal: dock_to_recoveryGoal,
  pose_move_to_recoveryGoal: pose_move_to_recoveryGoal,
  worksheetrunFeedback: worksheetrunFeedback,
  time_waitResult: time_waitResult,
  controller_state_recoveryAction: controller_state_recoveryAction,
  function_runAction: function_runAction,
  robot_interface_proc_lowerActionFeedback: robot_interface_proc_lowerActionFeedback,
  pose_recognize_recoveryResult: pose_recognize_recoveryResult,
  robot_interface_proc_upperResult: robot_interface_proc_upperResult,
  undock_toActionGoal: undock_toActionGoal,
  interrupt_infoGoal: interrupt_infoGoal,
  pose_recognize_recoveryActionGoal: pose_recognize_recoveryActionGoal,
  self_turn_toActionFeedback: self_turn_toActionFeedback,
  robot_interface_processResult: robot_interface_processResult,
  pose_recognizeActionFeedback: pose_recognizeActionFeedback,
  pose_recognize_recoveryFeedback: pose_recognize_recoveryFeedback,
  robot_commandGoal: robot_commandGoal,
  db_process_recoveryActionFeedback: db_process_recoveryActionFeedback,
  power_charge_recoveryAction: power_charge_recoveryAction,
  self_turn_to_recoveryActionResult: self_turn_to_recoveryActionResult,
  self_turn_to_recoveryActionFeedback: self_turn_to_recoveryActionFeedback,
  robot_interface_paramsFeedback: robot_interface_paramsFeedback,
  self_turn_toAction: self_turn_toAction,
  function_runActionResult: function_runActionResult,
  db_processActionResult: db_processActionResult,
  pose_recognize_recoveryAction: pose_recognize_recoveryAction,
  self_turn_to_recoveryFeedback: self_turn_to_recoveryFeedback,
  function_run_recoveryActionResult: function_run_recoveryActionResult,
  power_chargeFeedback: power_chargeFeedback,
  db_process_recoveryAction: db_process_recoveryAction,
  self_turn_toActionResult: self_turn_toActionResult,
  time_waitActionGoal: time_waitActionGoal,
  power_chargeResult: power_chargeResult,
  undock_to_recoveryActionGoal: undock_to_recoveryActionGoal,
  worksheetrunActionGoal: worksheetrunActionGoal,
  db_process_recoveryResult: db_process_recoveryResult,
  time_waitActionResult: time_waitActionResult,
  pose_move_to_recoveryActionResult: pose_move_to_recoveryActionResult,
  robot_interface_paramsActionGoal: robot_interface_paramsActionGoal,
  db_process_recoveryFeedback: db_process_recoveryFeedback,
  dock_toAction: dock_toAction,
  controller_state_recoveryFeedback: controller_state_recoveryFeedback,
  power_charge_recoveryActionResult: power_charge_recoveryActionResult,
  pose_recognizeGoal: pose_recognizeGoal,
  robot_interface_processAction: robot_interface_processAction,
  pose_move_toFeedback: pose_move_toFeedback,
  self_turn_to_recoveryActionGoal: self_turn_to_recoveryActionGoal,
  undock_toAction: undock_toAction,
  undock_to_recoveryAction: undock_to_recoveryAction,
  robot_interface_proc_upperActionGoal: robot_interface_proc_upperActionGoal,
  pose_recognizeAction: pose_recognizeAction,
  robot_interface_proc_lowerFeedback: robot_interface_proc_lowerFeedback,
  robot_run_stateGoal: robot_run_stateGoal,
  self_turn_to_recoveryGoal: self_turn_to_recoveryGoal,
  robot_interface_proc_upperActionResult: robot_interface_proc_upperActionResult,
  dock_to_recoveryActionFeedback: dock_to_recoveryActionFeedback,
  robot_interface_proc_upperActionFeedback: robot_interface_proc_upperActionFeedback,
  robot_interface_processActionGoal: robot_interface_processActionGoal,
  robot_commandActionGoal: robot_commandActionGoal,
  robot_run_stateActionFeedback: robot_run_stateActionFeedback,
  dock_to_recoveryActionGoal: dock_to_recoveryActionGoal,
  function_run_recoveryActionGoal: function_run_recoveryActionGoal,
  power_charge_recoveryActionFeedback: power_charge_recoveryActionFeedback,
  interrupt_infoFeedback: interrupt_infoFeedback,
  robot_interface_paramsGoal: robot_interface_paramsGoal,
  power_chargeActionResult: power_chargeActionResult,
  interrupt_infoActionGoal: interrupt_infoActionGoal,
  robot_interface_proc_lowerActionResult: robot_interface_proc_lowerActionResult,
  robot_commandActionFeedback: robot_commandActionFeedback,
  power_charge_recoveryFeedback: power_charge_recoveryFeedback,
  robot_run_stateFeedback: robot_run_stateFeedback,
  pose_move_toActionGoal: pose_move_toActionGoal,
  worksheetrunGoal: worksheetrunGoal,
  robot_interface_proc_upperFeedback: robot_interface_proc_upperFeedback,
  function_runGoal: function_runGoal,
  robot_commandActionResult: robot_commandActionResult,
  robot_interface_paramsActionResult: robot_interface_paramsActionResult,
  db_process_recoveryActionResult: db_process_recoveryActionResult,
  undock_toGoal: undock_toGoal,
  undock_to_recoveryActionFeedback: undock_to_recoveryActionFeedback,
  pose_move_toGoal: pose_move_toGoal,
  robot_interface_paramsAction: robot_interface_paramsAction,
  controller_state_recoveryActionResult: controller_state_recoveryActionResult,
  controller_state_recoveryActionGoal: controller_state_recoveryActionGoal,
  db_processAction: db_processAction,
  robot_interface_proc_upperAction: robot_interface_proc_upperAction,
  undock_toFeedback: undock_toFeedback,
  db_processResult: db_processResult,
  dock_toResult: dock_toResult,
  pose_recognizeActionGoal: pose_recognizeActionGoal,
  interrupt_infoAction: interrupt_infoAction,
  robot_interface_paramsActionFeedback: robot_interface_paramsActionFeedback,
  power_charge_recoveryResult: power_charge_recoveryResult,
  pose_move_to_recoveryActionGoal: pose_move_to_recoveryActionGoal,
  function_run_recoveryAction: function_run_recoveryAction,
  undock_to_recoveryResult: undock_to_recoveryResult,
  robot_commandAction: robot_commandAction,
  time_waitFeedback: time_waitFeedback,
  undock_to_recoveryActionResult: undock_to_recoveryActionResult,
  db_processActionGoal: db_processActionGoal,
  db_processGoal: db_processGoal,
  robot_run_stateActionGoal: robot_run_stateActionGoal,
  function_run_recoveryGoal: function_run_recoveryGoal,
  robot_interface_processGoal: robot_interface_processGoal,
  robot_interface_proc_lowerGoal: robot_interface_proc_lowerGoal,
  pose_recognizeResult: pose_recognizeResult,
  undock_to_recoveryGoal: undock_to_recoveryGoal,
  robot_interface_proc_lowerActionGoal: robot_interface_proc_lowerActionGoal,
  pose_recognizeFeedback: pose_recognizeFeedback,
  function_runActionGoal: function_runActionGoal,
  undock_toActionResult: undock_toActionResult,
  robot_run_stateAction: robot_run_stateAction,
  worksheetrunActionFeedback: worksheetrunActionFeedback,
  worksheetrunAction: worksheetrunAction,
  dock_to_recoveryFeedback: dock_to_recoveryFeedback,
  pose_move_toActionResult: pose_move_toActionResult,
  dock_toFeedback: dock_toFeedback,
  interrupt_infoActionResult: interrupt_infoActionResult,
  function_runActionFeedback: function_runActionFeedback,
  self_turn_toFeedback: self_turn_toFeedback,
  controller_state_recoveryResult: controller_state_recoveryResult,
  robot_run_stateActionResult: robot_run_stateActionResult,
  db_process_recoveryGoal: db_process_recoveryGoal,
  dock_toActionGoal: dock_toActionGoal,
  self_turn_to_recoveryResult: self_turn_to_recoveryResult,
  pose_move_toResult: pose_move_toResult,
  undock_toResult: undock_toResult,
  power_chargeActionGoal: power_chargeActionGoal,
  robot_commandResult: robot_commandResult,
  pose_move_to_recoveryActionFeedback: pose_move_to_recoveryActionFeedback,
  power_charge_recoveryActionGoal: power_charge_recoveryActionGoal,
};
