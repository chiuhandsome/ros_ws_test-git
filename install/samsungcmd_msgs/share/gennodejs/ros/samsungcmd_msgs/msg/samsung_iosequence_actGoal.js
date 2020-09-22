// Auto-generated. Do not edit!

// (in-package samsungcmd_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class samsung_iosequence_actGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seq_start = null;
      this.seq_functionNo = null;
    }
    else {
      if (initObj.hasOwnProperty('seq_start')) {
        this.seq_start = initObj.seq_start
      }
      else {
        this.seq_start = false;
      }
      if (initObj.hasOwnProperty('seq_functionNo')) {
        this.seq_functionNo = initObj.seq_functionNo
      }
      else {
        this.seq_functionNo = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type samsung_iosequence_actGoal
    // Serialize message field [seq_start]
    bufferOffset = _serializer.bool(obj.seq_start, buffer, bufferOffset);
    // Serialize message field [seq_functionNo]
    bufferOffset = _serializer.int8(obj.seq_functionNo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type samsung_iosequence_actGoal
    let len;
    let data = new samsung_iosequence_actGoal(null);
    // Deserialize message field [seq_start]
    data.seq_start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [seq_functionNo]
    data.seq_functionNo = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'samsungcmd_msgs/samsung_iosequence_actGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bee0d5b65d6ab542f2eb9e4ac13d2f1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Goal
    bool  	seq_start
    int8  	seq_functionNo
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new samsung_iosequence_actGoal(null);
    if (msg.seq_start !== undefined) {
      resolved.seq_start = msg.seq_start;
    }
    else {
      resolved.seq_start = false
    }

    if (msg.seq_functionNo !== undefined) {
      resolved.seq_functionNo = msg.seq_functionNo;
    }
    else {
      resolved.seq_functionNo = 0
    }

    return resolved;
    }
};

module.exports = samsung_iosequence_actGoal;