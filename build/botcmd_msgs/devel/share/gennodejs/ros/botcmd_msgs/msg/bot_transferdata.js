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

class bot_transferdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index_ID = null;
      this.data = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('index_ID')) {
        this.index_ID = initObj.index_ID
      }
      else {
        this.index_ID = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_transferdata
    // Serialize message field [index_ID]
    bufferOffset = _serializer.int8(obj.index_ID, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_transferdata
    let len;
    let data = new bot_transferdata(null);
    // Deserialize message field [index_ID]
    data.index_ID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'botcmd_msgs/bot_transferdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09a8772b40b66daa3c0ae4a33bacb8ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 index_ID
    string data
    bool result	
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_transferdata(null);
    if (msg.index_ID !== undefined) {
      resolved.index_ID = msg.index_ID;
    }
    else {
      resolved.index_ID = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = bot_transferdata;
