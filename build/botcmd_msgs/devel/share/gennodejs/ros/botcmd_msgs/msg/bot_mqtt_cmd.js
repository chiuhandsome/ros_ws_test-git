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

class bot_mqtt_cmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_ID = null;
      this.bState = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_ID')) {
        this.robot_ID = initObj.robot_ID
      }
      else {
        this.robot_ID = '';
      }
      if (initObj.hasOwnProperty('bState')) {
        this.bState = initObj.bState
      }
      else {
        this.bState = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_mqtt_cmd
    // Serialize message field [robot_ID]
    bufferOffset = _serializer.string(obj.robot_ID, buffer, bufferOffset);
    // Serialize message field [bState]
    bufferOffset = _serializer.bool(obj.bState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_mqtt_cmd
    let len;
    let data = new bot_mqtt_cmd(null);
    // Deserialize message field [robot_ID]
    data.robot_ID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bState]
    data.bState = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_ID.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'botcmd_msgs/bot_mqtt_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea01a6f206d81ac77784145d2af0f688';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_ID
    bool   bState	
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_mqtt_cmd(null);
    if (msg.robot_ID !== undefined) {
      resolved.robot_ID = msg.robot_ID;
    }
    else {
      resolved.robot_ID = ''
    }

    if (msg.bState !== undefined) {
      resolved.bState = msg.bState;
    }
    else {
      resolved.bState = false
    }

    return resolved;
    }
};

module.exports = bot_mqtt_cmd;
