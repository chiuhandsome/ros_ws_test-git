// Auto-generated. Do not edit!

// (in-package robot_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robot_ctrl_alarmHistory = require('../msg/robot_ctrl_alarmHistory.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class robot_ctrl_alarmHistory_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_id = null;
      this.index_name = null;
      this.parameter = null;
      this.rec_alarmHistory = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_id')) {
        this.cmd_id = initObj.cmd_id
      }
      else {
        this.cmd_id = 0;
      }
      if (initObj.hasOwnProperty('index_name')) {
        this.index_name = initObj.index_name
      }
      else {
        this.index_name = '';
      }
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = '';
      }
      if (initObj.hasOwnProperty('rec_alarmHistory')) {
        this.rec_alarmHistory = initObj.rec_alarmHistory
      }
      else {
        this.rec_alarmHistory = new robot_ctrl_alarmHistory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_ctrl_alarmHistory_cmdRequest
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [index_name]
    bufferOffset = _serializer.string(obj.index_name, buffer, bufferOffset);
    // Serialize message field [parameter]
    bufferOffset = _serializer.string(obj.parameter, buffer, bufferOffset);
    // Serialize message field [rec_alarmHistory]
    bufferOffset = robot_ctrl_alarmHistory.serialize(obj.rec_alarmHistory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_alarmHistory_cmdRequest
    let len;
    let data = new robot_ctrl_alarmHistory_cmdRequest(null);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [index_name]
    data.index_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rec_alarmHistory]
    data.rec_alarmHistory = robot_ctrl_alarmHistory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.index_name.length;
    length += object.parameter.length;
    length += robot_ctrl_alarmHistory.getMessageSize(object.rec_alarmHistory);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_control_msgs/robot_ctrl_alarmHistory_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5609abec73018e19ab7fff3a28295a6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmd_id	        # 1:Add , 2:modify 3:delete 4:requery 		
    string index_name 
    string parameter 	
    robot_ctrl_alarmHistory rec_alarmHistory	 
    
    ================================================================================
    MSG: robot_control_msgs/robot_ctrl_alarmHistory
    string system_id 
    string alarm_id 			# module_no(3) + module alarm code(3)	
    string alarm_code 			# same as alarm_id,preper for special requirement
    string alarm_level 			# level of ararm: 1:alart 2:alarm	
    string alarm_occure_time 	# occure time of alarm
    string update_time 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_alarmHistory_cmdRequest(null);
    if (msg.cmd_id !== undefined) {
      resolved.cmd_id = msg.cmd_id;
    }
    else {
      resolved.cmd_id = 0
    }

    if (msg.index_name !== undefined) {
      resolved.index_name = msg.index_name;
    }
    else {
      resolved.index_name = ''
    }

    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = ''
    }

    if (msg.rec_alarmHistory !== undefined) {
      resolved.rec_alarmHistory = robot_ctrl_alarmHistory.Resolve(msg.rec_alarmHistory)
    }
    else {
      resolved.rec_alarmHistory = new robot_ctrl_alarmHistory()
    }

    return resolved;
    }
};

class robot_ctrl_alarmHistory_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.result_alarmHistorys = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = '';
      }
      if (initObj.hasOwnProperty('result_alarmHistorys')) {
        this.result_alarmHistorys = initObj.result_alarmHistorys
      }
      else {
        this.result_alarmHistorys = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_ctrl_alarmHistory_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [result_alarmHistorys]
    // Serialize the length for message field [result_alarmHistorys]
    bufferOffset = _serializer.uint32(obj.result_alarmHistorys.length, buffer, bufferOffset);
    obj.result_alarmHistorys.forEach((val) => {
      bufferOffset = robot_ctrl_alarmHistory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_alarmHistory_cmdResponse
    let len;
    let data = new robot_ctrl_alarmHistory_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result_alarmHistorys]
    // Deserialize array length for message field [result_alarmHistorys]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result_alarmHistorys = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result_alarmHistorys[i] = robot_ctrl_alarmHistory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_code.length;
    object.result_alarmHistorys.forEach((val) => {
      length += robot_ctrl_alarmHistory.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_control_msgs/robot_ctrl_alarmHistory_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6759f86fcb40a412f8b8faa5c4674353';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string error_code
    robot_ctrl_alarmHistory[] result_alarmHistorys
    
    
    ================================================================================
    MSG: robot_control_msgs/robot_ctrl_alarmHistory
    string system_id 
    string alarm_id 			# module_no(3) + module alarm code(3)	
    string alarm_code 			# same as alarm_id,preper for special requirement
    string alarm_level 			# level of ararm: 1:alart 2:alarm	
    string alarm_occure_time 	# occure time of alarm
    string update_time 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_alarmHistory_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = ''
    }

    if (msg.result_alarmHistorys !== undefined) {
      resolved.result_alarmHistorys = new Array(msg.result_alarmHistorys.length);
      for (let i = 0; i < resolved.result_alarmHistorys.length; ++i) {
        resolved.result_alarmHistorys[i] = robot_ctrl_alarmHistory.Resolve(msg.result_alarmHistorys[i]);
      }
    }
    else {
      resolved.result_alarmHistorys = []
    }

    return resolved;
    }
};

module.exports = {
  Request: robot_ctrl_alarmHistory_cmdRequest,
  Response: robot_ctrl_alarmHistory_cmdResponse,
  md5sum() { return '86160692f07e28ff6a400e75ea300139'; },
  datatype() { return 'robot_control_msgs/robot_ctrl_alarmHistory_cmd'; }
};
