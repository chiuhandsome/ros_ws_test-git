// Auto-generated. Do not edit!

// (in-package botcmd_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class bot_transfer_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index_ID = null;
      this.parameter = null;
    }
    else {
      if (initObj.hasOwnProperty('index_ID')) {
        this.index_ID = initObj.index_ID
      }
      else {
        this.index_ID = 0;
      }
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_transfer_cmdRequest
    // Serialize message field [index_ID]
    bufferOffset = _serializer.int8(obj.index_ID, buffer, bufferOffset);
    // Serialize message field [parameter]
    bufferOffset = _serializer.string(obj.parameter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_transfer_cmdRequest
    let len;
    let data = new bot_transfer_cmdRequest(null);
    // Deserialize message field [index_ID]
    data.index_ID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.parameter.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_transfer_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2d928b6bf9e3fdb10ea7ebb3f01344a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 index_ID
    string parameter
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_transfer_cmdRequest(null);
    if (msg.index_ID !== undefined) {
      resolved.index_ID = msg.index_ID;
    }
    else {
      resolved.index_ID = 0
    }

    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = ''
    }

    return resolved;
    }
};

class bot_transfer_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.result_ID = null;
      this.result_Data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('result_ID')) {
        this.result_ID = initObj.result_ID
      }
      else {
        this.result_ID = 0;
      }
      if (initObj.hasOwnProperty('result_Data')) {
        this.result_Data = initObj.result_Data
      }
      else {
        this.result_Data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_transfer_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [result_ID]
    bufferOffset = _serializer.int8(obj.result_ID, buffer, bufferOffset);
    // Serialize message field [result_Data]
    bufferOffset = _serializer.string(obj.result_Data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_transfer_cmdResponse
    let len;
    let data = new bot_transfer_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result_ID]
    data.result_ID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [result_Data]
    data.result_Data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result_Data.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_transfer_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3dbcfcf786d20255a3e2c6e2ee67cd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    int8 result_ID
    string result_Data	
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_transfer_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.result_ID !== undefined) {
      resolved.result_ID = msg.result_ID;
    }
    else {
      resolved.result_ID = 0
    }

    if (msg.result_Data !== undefined) {
      resolved.result_Data = msg.result_Data;
    }
    else {
      resolved.result_Data = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: bot_transfer_cmdRequest,
  Response: bot_transfer_cmdResponse,
  md5sum() { return '770bce408b30c62eb35300571e79267e'; },
  datatype() { return 'botcmd_msgs/bot_transfer_cmd'; }
};
