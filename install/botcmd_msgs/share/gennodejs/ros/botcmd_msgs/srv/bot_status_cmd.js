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

class bot_status_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Command = null;
    }
    else {
      if (initObj.hasOwnProperty('Command')) {
        this.Command = initObj.Command
      }
      else {
        this.Command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_status_cmdRequest
    // Serialize message field [Command]
    bufferOffset = _serializer.int16(obj.Command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_status_cmdRequest
    let len;
    let data = new bot_status_cmdRequest(null);
    // Deserialize message field [Command]
    data.Command = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_status_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0307b093140c6d8fd78203f7abab5df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 Command 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_status_cmdRequest(null);
    if (msg.Command !== undefined) {
      resolved.Command = msg.Command;
    }
    else {
      resolved.Command = 0
    }

    return resolved;
    }
};

class bot_status_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.stamp = null;
      this.result_Command = null;
      this.status_code = null;
      this.error_code = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('result_Command')) {
        this.result_Command = initObj.result_Command
      }
      else {
        this.result_Command = 0;
      }
      if (initObj.hasOwnProperty('status_code')) {
        this.status_code = initObj.status_code
      }
      else {
        this.status_code = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_status_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [result_Command]
    bufferOffset = _serializer.int16(obj.result_Command, buffer, bufferOffset);
    // Serialize message field [status_code]
    bufferOffset = _serializer.int8(obj.status_code, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_status_cmdResponse
    let len;
    let data = new bot_status_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [result_Command]
    data.result_Command = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [status_code]
    data.status_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_status_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c46eef13e83f9c7ad99dedda9f0f2fe0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    time stamp
    int16 result_Command 
    int8 status_code
    int8 error_code
    string data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_status_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.result_Command !== undefined) {
      resolved.result_Command = msg.result_Command;
    }
    else {
      resolved.result_Command = 0
    }

    if (msg.status_code !== undefined) {
      resolved.status_code = msg.status_code;
    }
    else {
      resolved.status_code = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: bot_status_cmdRequest,
  Response: bot_status_cmdResponse,
  md5sum() { return '78fe28ceb8cdb5fbcfec0625a620666c'; },
  datatype() { return 'botcmd_msgs/bot_status_cmd'; }
};
