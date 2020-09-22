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

class bot_ultrasonic_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_ultrasonic_cmdRequest
    // Serialize message field [command]
    bufferOffset = _serializer.int8(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_ultrasonic_cmdRequest
    let len;
    let data = new bot_ultrasonic_cmdRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_ultrasonic_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '481ac5a494c3140a2539020bd74c82c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_ultrasonic_cmdRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

class bot_ultrasonic_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.stamp = null;
      this.Command_Params = null;
      this.quantity = null;
      this.ranges = null;
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
      if (initObj.hasOwnProperty('Command_Params')) {
        this.Command_Params = initObj.Command_Params
      }
      else {
        this.Command_Params = 0;
      }
      if (initObj.hasOwnProperty('quantity')) {
        this.quantity = initObj.quantity
      }
      else {
        this.quantity = 0;
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_ultrasonic_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [Command_Params]
    bufferOffset = _serializer.int8(obj.Command_Params, buffer, bufferOffset);
    // Serialize message field [quantity]
    bufferOffset = _serializer.int8(obj.quantity, buffer, bufferOffset);
    // Serialize message field [ranges]
    bufferOffset = _serializer.string(obj.ranges, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_ultrasonic_cmdResponse
    let len;
    let data = new bot_ultrasonic_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Command_Params]
    data.Command_Params = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [quantity]
    data.quantity = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ranges]
    data.ranges = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ranges.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_ultrasonic_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '137288ebc348a7b1f4283d46a7eba183';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool  result
    time stamp
    int8 Command_Params
    int8 quantity
    string ranges           #float32[] ranges
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_ultrasonic_cmdResponse(null);
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

    if (msg.Command_Params !== undefined) {
      resolved.Command_Params = msg.Command_Params;
    }
    else {
      resolved.Command_Params = 0
    }

    if (msg.quantity !== undefined) {
      resolved.quantity = msg.quantity;
    }
    else {
      resolved.quantity = 0
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: bot_ultrasonic_cmdRequest,
  Response: bot_ultrasonic_cmdResponse,
  md5sum() { return 'eb2706d46118bd280836f581d94cbcfc'; },
  datatype() { return 'botcmd_msgs/bot_ultrasonic_cmd'; }
};
