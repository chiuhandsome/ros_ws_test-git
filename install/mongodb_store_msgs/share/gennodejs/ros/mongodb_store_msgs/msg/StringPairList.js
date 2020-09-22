// Auto-generated. Do not edit!

// (in-package mongodb_store_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StringPair = require('./StringPair.js');

//-----------------------------------------------------------

class StringPairList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pairs = null;
    }
    else {
      if (initObj.hasOwnProperty('pairs')) {
        this.pairs = initObj.pairs
      }
      else {
        this.pairs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StringPairList
    // Serialize message field [pairs]
    // Serialize the length for message field [pairs]
    bufferOffset = _serializer.uint32(obj.pairs.length, buffer, bufferOffset);
    obj.pairs.forEach((val) => {
      bufferOffset = StringPair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StringPairList
    let len;
    let data = new StringPairList(null);
    // Deserialize message field [pairs]
    // Deserialize array length for message field [pairs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pairs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pairs[i] = StringPair.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pairs.forEach((val) => {
      length += StringPair.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mongodb_store_msgs/StringPairList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50c368c0f345d8de86876a3bada40aad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    StringPair[] pairs
    
    ================================================================================
    MSG: mongodb_store_msgs/StringPair
    string first
    string second
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StringPairList(null);
    if (msg.pairs !== undefined) {
      resolved.pairs = new Array(msg.pairs.length);
      for (let i = 0; i < resolved.pairs.length; ++i) {
        resolved.pairs[i] = StringPair.Resolve(msg.pairs[i]);
      }
    }
    else {
      resolved.pairs = []
    }

    return resolved;
    }
};

module.exports = StringPairList;
