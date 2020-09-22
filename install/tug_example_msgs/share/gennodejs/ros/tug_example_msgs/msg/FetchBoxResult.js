// Auto-generated. Do not edit!

// (in-package tug_example_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FetchBoxResult {
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
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FetchBoxResult
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FetchBoxResult
    let len;
    let data = new FetchBoxResult(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tug_example_msgs/FetchBoxResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87cbbd112b1c840a8225d4cda4c6ef8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the result
    uint8 RUN=0
    uint8 OK=1
    uint8 NOT_OK=2
    uint8 TIMED_OUT=3
    uint8 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FetchBoxResult(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

// Constants for message
FetchBoxResult.Constants = {
  RUN: 0,
  OK: 1,
  NOT_OK: 2,
  TIMED_OUT: 3,
}

module.exports = FetchBoxResult;