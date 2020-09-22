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

class bot_battery_info_cmdRequest {
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
    // Serializes a message object of type bot_battery_info_cmdRequest
    // Serialize message field [command]
    bufferOffset = _serializer.int8(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_battery_info_cmdRequest
    let len;
    let data = new bot_battery_info_cmdRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_battery_info_cmdRequest';
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
    const resolved = new bot_battery_info_cmdRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

class bot_battery_info_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.Command_Params = null;
      this.stamp = null;
      this.alarmcode = null;
      this.chargstate = null;
      this.voltage = null;
      this.current = null;
      this.full_capacity = null;
      this.percentage = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('Command_Params')) {
        this.Command_Params = initObj.Command_Params
      }
      else {
        this.Command_Params = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('alarmcode')) {
        this.alarmcode = initObj.alarmcode
      }
      else {
        this.alarmcode = 0;
      }
      if (initObj.hasOwnProperty('chargstate')) {
        this.chargstate = initObj.chargstate
      }
      else {
        this.chargstate = 0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
      if (initObj.hasOwnProperty('full_capacity')) {
        this.full_capacity = initObj.full_capacity
      }
      else {
        this.full_capacity = 0;
      }
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_battery_info_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [Command_Params]
    bufferOffset = _serializer.int8(obj.Command_Params, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [alarmcode]
    bufferOffset = _serializer.int16(obj.alarmcode, buffer, bufferOffset);
    // Serialize message field [chargstate]
    bufferOffset = _serializer.int16(obj.chargstate, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.int16(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.int16(obj.current, buffer, bufferOffset);
    // Serialize message field [full_capacity]
    bufferOffset = _serializer.int16(obj.full_capacity, buffer, bufferOffset);
    // Serialize message field [percentage]
    bufferOffset = _serializer.int16(obj.percentage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_battery_info_cmdResponse
    let len;
    let data = new bot_battery_info_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Command_Params]
    data.Command_Params = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [alarmcode]
    data.alarmcode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [chargstate]
    data.chargstate = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [full_capacity]
    data.full_capacity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_battery_info_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df2f02adba4bb78ea86c2d9c38007704';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool  result
    int8 Command_Params
    time stamp
    int16 alarmcode	
    int16 chargstate	 
    int16 voltage	
    int16 current	
    int16 full_capacity
    int16 percentage
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_battery_info_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.Command_Params !== undefined) {
      resolved.Command_Params = msg.Command_Params;
    }
    else {
      resolved.Command_Params = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.alarmcode !== undefined) {
      resolved.alarmcode = msg.alarmcode;
    }
    else {
      resolved.alarmcode = 0
    }

    if (msg.chargstate !== undefined) {
      resolved.chargstate = msg.chargstate;
    }
    else {
      resolved.chargstate = 0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    if (msg.full_capacity !== undefined) {
      resolved.full_capacity = msg.full_capacity;
    }
    else {
      resolved.full_capacity = 0
    }

    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: bot_battery_info_cmdRequest,
  Response: bot_battery_info_cmdResponse,
  md5sum() { return '37f5b24189cc92ce3ca44682c06b0a43'; },
  datatype() { return 'botcmd_msgs/bot_battery_info_cmd'; }
};
