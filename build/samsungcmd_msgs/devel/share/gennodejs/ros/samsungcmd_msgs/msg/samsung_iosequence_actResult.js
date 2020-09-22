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

class samsung_iosequence_actResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.b_result = null;
    }
    else {
      if (initObj.hasOwnProperty('b_result')) {
        this.b_result = initObj.b_result
      }
      else {
        this.b_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type samsung_iosequence_actResult
    // Serialize message field [b_result]
    bufferOffset = _serializer.bool(obj.b_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type samsung_iosequence_actResult
    let len;
    let data = new samsung_iosequence_actResult(null);
    // Deserialize message field [b_result]
    data.b_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'samsungcmd_msgs/samsung_iosequence_actResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6226b54418e78bf1522511c251a7c17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Result
    bool  	b_result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new samsung_iosequence_actResult(null);
    if (msg.b_result !== undefined) {
      resolved.b_result = msg.b_result;
    }
    else {
      resolved.b_result = false
    }

    return resolved;
    }
};

module.exports = samsung_iosequence_actResult;
