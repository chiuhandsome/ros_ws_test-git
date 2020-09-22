// Auto-generated. Do not edit!

// (in-package robot_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robot_ctrl_roslog = require('../msg/robot_ctrl_roslog.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class robot_ctrl_roslog_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_id = null;
      this.index_name = null;
      this.parameter = null;
      this.rec_roslog = null;
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
      if (initObj.hasOwnProperty('rec_roslog')) {
        this.rec_roslog = initObj.rec_roslog
      }
      else {
        this.rec_roslog = new robot_ctrl_roslog();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_ctrl_roslog_cmdRequest
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [index_name]
    bufferOffset = _serializer.string(obj.index_name, buffer, bufferOffset);
    // Serialize message field [parameter]
    bufferOffset = _serializer.string(obj.parameter, buffer, bufferOffset);
    // Serialize message field [rec_roslog]
    bufferOffset = robot_ctrl_roslog.serialize(obj.rec_roslog, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_roslog_cmdRequest
    let len;
    let data = new robot_ctrl_roslog_cmdRequest(null);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [index_name]
    data.index_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rec_roslog]
    data.rec_roslog = robot_ctrl_roslog.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.index_name.length;
    length += object.parameter.length;
    length += robot_ctrl_roslog.getMessageSize(object.rec_roslog);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_control_msgs/robot_ctrl_roslog_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a28cf7f63c4b9049a8efbc93b5a7efff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmd_id	        # 1:Add , 2:modify 3:delete 4:requery 		
    string index_name 
    string parameter 	
    robot_ctrl_roslog rec_roslog	 
    
    ================================================================================
    MSG: robot_control_msgs/robot_ctrl_roslog
    string system_id 
    string roslog_level 			 
    string roslog_node 			 
    string roslog_content 			 
    string occure_time 	 
    string update_time 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_roslog_cmdRequest(null);
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

    if (msg.rec_roslog !== undefined) {
      resolved.rec_roslog = robot_ctrl_roslog.Resolve(msg.rec_roslog)
    }
    else {
      resolved.rec_roslog = new robot_ctrl_roslog()
    }

    return resolved;
    }
};

class robot_ctrl_roslog_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.result_roslogs = null;
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
      if (initObj.hasOwnProperty('result_roslogs')) {
        this.result_roslogs = initObj.result_roslogs
      }
      else {
        this.result_roslogs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_ctrl_roslog_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [result_roslogs]
    // Serialize the length for message field [result_roslogs]
    bufferOffset = _serializer.uint32(obj.result_roslogs.length, buffer, bufferOffset);
    obj.result_roslogs.forEach((val) => {
      bufferOffset = robot_ctrl_roslog.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_roslog_cmdResponse
    let len;
    let data = new robot_ctrl_roslog_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result_roslogs]
    // Deserialize array length for message field [result_roslogs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result_roslogs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result_roslogs[i] = robot_ctrl_roslog.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_code.length;
    object.result_roslogs.forEach((val) => {
      length += robot_ctrl_roslog.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_control_msgs/robot_ctrl_roslog_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd63d53916823289e1c60ace454e34943';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string error_code
    robot_ctrl_roslog[] result_roslogs	 
    
    
    ================================================================================
    MSG: robot_control_msgs/robot_ctrl_roslog
    string system_id 
    string roslog_level 			 
    string roslog_node 			 
    string roslog_content 			 
    string occure_time 	 
    string update_time 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_roslog_cmdResponse(null);
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

    if (msg.result_roslogs !== undefined) {
      resolved.result_roslogs = new Array(msg.result_roslogs.length);
      for (let i = 0; i < resolved.result_roslogs.length; ++i) {
        resolved.result_roslogs[i] = robot_ctrl_roslog.Resolve(msg.result_roslogs[i]);
      }
    }
    else {
      resolved.result_roslogs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: robot_ctrl_roslog_cmdRequest,
  Response: robot_ctrl_roslog_cmdResponse,
  md5sum() { return '1b9cbc049446435a9aceddf55f064c06'; },
  datatype() { return 'robot_control_msgs/robot_ctrl_roslog_cmd'; }
};
