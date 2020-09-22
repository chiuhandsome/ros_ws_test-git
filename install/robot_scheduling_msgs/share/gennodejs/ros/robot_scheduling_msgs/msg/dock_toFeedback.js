// Auto-generated. Do not edit!

// (in-package robot_scheduling_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class dock_toFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.docked = null;
    }
    else {
      if (initObj.hasOwnProperty('docked')) {
        this.docked = initObj.docked
      }
      else {
        this.docked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dock_toFeedback
    // Serialize message field [docked]
    bufferOffset = _serializer.bool(obj.docked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dock_toFeedback
    let len;
    let data = new dock_toFeedback(null);
    // Deserialize message field [docked]
    data.docked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scheduling_msgs/dock_toFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3ad9bbe144e1b2c5d7cff122465aa06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define a feedback message
    bool docked
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dock_toFeedback(null);
    if (msg.docked !== undefined) {
      resolved.docked = msg.docked;
    }
    else {
      resolved.docked = false
    }

    return resolved;
    }
};

module.exports = dock_toFeedback;
