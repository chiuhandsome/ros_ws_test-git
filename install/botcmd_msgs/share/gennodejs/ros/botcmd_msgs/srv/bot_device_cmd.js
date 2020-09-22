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

class bot_device_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dev_num = null;
      this.devic_ID = null;
      this.bActive = null;
    }
    else {
      if (initObj.hasOwnProperty('dev_num')) {
        this.dev_num = initObj.dev_num
      }
      else {
        this.dev_num = 0;
      }
      if (initObj.hasOwnProperty('devic_ID')) {
        this.devic_ID = initObj.devic_ID
      }
      else {
        this.devic_ID = [];
      }
      if (initObj.hasOwnProperty('bActive')) {
        this.bActive = initObj.bActive
      }
      else {
        this.bActive = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_device_cmdRequest
    // Serialize message field [dev_num]
    bufferOffset = _serializer.int8(obj.dev_num, buffer, bufferOffset);
    // Serialize message field [devic_ID]
    bufferOffset = _arraySerializer.int8(obj.devic_ID, buffer, bufferOffset, null);
    // Serialize message field [bActive]
    bufferOffset = _arraySerializer.bool(obj.bActive, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_device_cmdRequest
    let len;
    let data = new bot_device_cmdRequest(null);
    // Deserialize message field [dev_num]
    data.dev_num = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [devic_ID]
    data.devic_ID = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [bActive]
    data.bActive = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.devic_ID.length;
    length += object.bActive.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_device_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7e74463056716f245d720726d54bcbf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8   dev_num
    int8[] devic_ID
    bool[] bActive
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_device_cmdRequest(null);
    if (msg.dev_num !== undefined) {
      resolved.dev_num = msg.dev_num;
    }
    else {
      resolved.dev_num = 0
    }

    if (msg.devic_ID !== undefined) {
      resolved.devic_ID = msg.devic_ID;
    }
    else {
      resolved.devic_ID = []
    }

    if (msg.bActive !== undefined) {
      resolved.bActive = msg.bActive;
    }
    else {
      resolved.bActive = []
    }

    return resolved;
    }
};

class bot_device_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_device_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_device_cmdResponse
    let len;
    let data = new bot_device_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_device_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_device_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: bot_device_cmdRequest,
  Response: bot_device_cmdResponse,
  md5sum() { return '17e1a131c7d1450e63bc762f11e32314'; },
  datatype() { return 'botcmd_msgs/bot_device_cmd'; }
};
