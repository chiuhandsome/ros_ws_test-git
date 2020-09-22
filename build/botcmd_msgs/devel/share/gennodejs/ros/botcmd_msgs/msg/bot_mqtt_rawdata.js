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

class bot_mqtt_rawdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bImport_sensor = null;
      this.bexport_sensor = null;
    }
    else {
      if (initObj.hasOwnProperty('bImport_sensor')) {
        this.bImport_sensor = initObj.bImport_sensor
      }
      else {
        this.bImport_sensor = false;
      }
      if (initObj.hasOwnProperty('bexport_sensor')) {
        this.bexport_sensor = initObj.bexport_sensor
      }
      else {
        this.bexport_sensor = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_mqtt_rawdata
    // Serialize message field [bImport_sensor]
    bufferOffset = _serializer.bool(obj.bImport_sensor, buffer, bufferOffset);
    // Serialize message field [bexport_sensor]
    bufferOffset = _serializer.bool(obj.bexport_sensor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_mqtt_rawdata
    let len;
    let data = new bot_mqtt_rawdata(null);
    // Deserialize message field [bImport_sensor]
    data.bImport_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bexport_sensor]
    data.bexport_sensor = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'botcmd_msgs/bot_mqtt_rawdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3eaab3f40118d8034a925c7b353f23c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool   bImport_sensor
    bool   bexport_sensor	
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_mqtt_rawdata(null);
    if (msg.bImport_sensor !== undefined) {
      resolved.bImport_sensor = msg.bImport_sensor;
    }
    else {
      resolved.bImport_sensor = false
    }

    if (msg.bexport_sensor !== undefined) {
      resolved.bexport_sensor = msg.bexport_sensor;
    }
    else {
      resolved.bexport_sensor = false
    }

    return resolved;
    }
};

module.exports = bot_mqtt_rawdata;
