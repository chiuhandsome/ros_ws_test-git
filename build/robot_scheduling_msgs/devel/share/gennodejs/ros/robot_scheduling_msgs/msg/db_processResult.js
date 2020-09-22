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

class db_processResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.result_data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('result_data')) {
        this.result_data = initObj.result_data
      }
      else {
        this.result_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type db_processResult
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    // Serialize message field [result_data]
    bufferOffset = _arraySerializer.string(obj.result_data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type db_processResult
    let len;
    let data = new db_processResult(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [result_data]
    data.result_data = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.result_data.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scheduling_msgs/db_processResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0b3ddf6567223ced1a6bb5ca55b7375';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the result
    uint8 OK=1
    uint8 NOT_OK=2
    uint8 TIMED_OUT=3
    uint8 OUT_OF_TIMES=4
    uint8 PARAM_ERROR=5
    uint8 result
    string[] result_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new db_processResult(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.result_data !== undefined) {
      resolved.result_data = msg.result_data;
    }
    else {
      resolved.result_data = []
    }

    return resolved;
    }
};

// Constants for message
db_processResult.Constants = {
  OK: 1,
  NOT_OK: 2,
  TIMED_OUT: 3,
  OUT_OF_TIMES: 4,
  PARAM_ERROR: 5,
}

module.exports = db_processResult;