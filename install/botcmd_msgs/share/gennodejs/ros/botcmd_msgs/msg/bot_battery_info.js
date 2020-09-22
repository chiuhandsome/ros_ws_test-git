// Auto-generated. Do not edit!

// (in-package botcmd_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bot_battery_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.alarmcode = null;
      this.chargstate = null;
      this.voltage = null;
      this.current = null;
      this.full_capacity = null;
      this.percentage = null;
    }
    else {
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
    // Serializes a message object of type bot_battery_info
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
    //deserializes a message object of type bot_battery_info
    let len;
    let data = new bot_battery_info(null);
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
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'botcmd_msgs/bot_battery_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43216bcd23b79099892093ffe71f8fed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new bot_battery_info(null);
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

module.exports = bot_battery_info;
