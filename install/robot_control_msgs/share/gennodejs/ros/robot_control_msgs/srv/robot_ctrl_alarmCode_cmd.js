// Auto-generated. Do not edit!

// (in-package robot_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robot_ctrl_alarmCode = require('../msg/robot_ctrl_alarmCode.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class robot_ctrl_alarmCode_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_id = null;
      this.index_name = null;
      this.parameter = null;
      this.rec_alarmCode = null;
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
      if (initObj.hasOwnProperty('rec_alarmCode')) {
        this.rec_alarmCode = initObj.rec_alarmCode
      }
      else {
        this.rec_alarmCode = new robot_ctrl_alarmCode();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_ctrl_alarmCode_cmdRequest
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [index_name]
    bufferOffset = _serializer.string(obj.index_name, buffer, bufferOffset);
    // Serialize message field [parameter]
    bufferOffset = _serializer.string(obj.parameter, buffer, bufferOffset);
    // Serialize message field [rec_alarmCode]
    bufferOffset = robot_ctrl_alarmCode.serialize(obj.rec_alarmCode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_alarmCode_cmdRequest
    let len;
    let data = new robot_ctrl_alarmCode_cmdRequest(null);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [index_name]
    data.index_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rec_alarmCode]
    data.rec_alarmCode = robot_ctrl_alarmCode.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.index_name.length;
    length += object.parameter.length;
    length += robot_ctrl_alarmCode.getMessageSize(object.rec_alarmCode);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_control_msgs/robot_ctrl_alarmCode_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd326cada72ce322e528e312dbbb0de43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmd_id         # 1:Add , 2:modify 3:delete 4:requery	 		
    string index_name 	
    string parameter 
    robot_ctrl_alarmCode rec_alarmCode	 
    
    ================================================================================
    MSG: robot_control_msgs/robot_ctrl_alarmCode
    string system_id 			
    string alarm_id 		# module_no(3) + module alarm code(3)	
    string alarm_code 		# same as alarm_id,preper for special requirement
    string alarm_level 		# level of ararm: 1:alart 2:alarm	
    string alarm_Desc_E 		# English description of alarm	
    string alarm_Desc_TC 		# Traditional chinese description of alarm	
    string alarm_Desc_SC 		# Sample chinese description of alarm
    string alarm_version 		# version of alarm
    string update_time 		# version time of alarm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_alarmCode_cmdRequest(null);
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

    if (msg.rec_alarmCode !== undefined) {
      resolved.rec_alarmCode = robot_ctrl_alarmCode.Resolve(msg.rec_alarmCode)
    }
    else {
      resolved.rec_alarmCode = new robot_ctrl_alarmCode()
    }

    return resolved;
    }
};

class robot_ctrl_alarmCode_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.result_alarmCodes = null;
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
      if (initObj.hasOwnProperty('result_alarmCodes')) {
        this.result_alarmCodes = initObj.result_alarmCodes
      }
      else {
        this.result_alarmCodes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_ctrl_alarmCode_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [result_alarmCodes]
    // Serialize the length for message field [result_alarmCodes]
    bufferOffset = _serializer.uint32(obj.result_alarmCodes.length, buffer, bufferOffset);
    obj.result_alarmCodes.forEach((val) => {
      bufferOffset = robot_ctrl_alarmCode.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_alarmCode_cmdResponse
    let len;
    let data = new robot_ctrl_alarmCode_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result_alarmCodes]
    // Deserialize array length for message field [result_alarmCodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result_alarmCodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result_alarmCodes[i] = robot_ctrl_alarmCode.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_code.length;
    object.result_alarmCodes.forEach((val) => {
      length += robot_ctrl_alarmCode.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_control_msgs/robot_ctrl_alarmCode_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d6ac9336d2d6a6444deef81cfe5af58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string error_code
    robot_ctrl_alarmCode[] result_alarmCodes
    
    
    ================================================================================
    MSG: robot_control_msgs/robot_ctrl_alarmCode
    string system_id 			
    string alarm_id 		# module_no(3) + module alarm code(3)	
    string alarm_code 		# same as alarm_id,preper for special requirement
    string alarm_level 		# level of ararm: 1:alart 2:alarm	
    string alarm_Desc_E 		# English description of alarm	
    string alarm_Desc_TC 		# Traditional chinese description of alarm	
    string alarm_Desc_SC 		# Sample chinese description of alarm
    string alarm_version 		# version of alarm
    string update_time 		# version time of alarm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_alarmCode_cmdResponse(null);
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

    if (msg.result_alarmCodes !== undefined) {
      resolved.result_alarmCodes = new Array(msg.result_alarmCodes.length);
      for (let i = 0; i < resolved.result_alarmCodes.length; ++i) {
        resolved.result_alarmCodes[i] = robot_ctrl_alarmCode.Resolve(msg.result_alarmCodes[i]);
      }
    }
    else {
      resolved.result_alarmCodes = []
    }

    return resolved;
    }
};

module.exports = {
  Request: robot_ctrl_alarmCode_cmdRequest,
  Response: robot_ctrl_alarmCode_cmdResponse,
  md5sum() { return 'e8befc5050638e2b9a4048a2ea5cd223'; },
  datatype() { return 'robot_control_msgs/robot_ctrl_alarmCode_cmd'; }
};
