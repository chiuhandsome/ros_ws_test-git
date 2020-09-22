// Auto-generated. Do not edit!

// (in-package pnp_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PNPConditionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cond = null;
    }
    else {
      if (initObj.hasOwnProperty('cond')) {
        this.cond = initObj.cond
      }
      else {
        this.cond = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPConditionRequest
    // Serialize message field [cond]
    bufferOffset = _serializer.string(obj.cond, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPConditionRequest
    let len;
    let data = new PNPConditionRequest(null);
    // Deserialize message field [cond]
    data.cond = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cond.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pnp_msgs/PNPConditionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae73c3f52927beed1a1deae4df67effb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string cond
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPConditionRequest(null);
    if (msg.cond !== undefined) {
      resolved.cond = msg.cond;
    }
    else {
      resolved.cond = ''
    }

    return resolved;
    }
};

class PNPConditionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.truth_value = null;
    }
    else {
      if (initObj.hasOwnProperty('truth_value')) {
        this.truth_value = initObj.truth_value
      }
      else {
        this.truth_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPConditionResponse
    // Serialize message field [truth_value]
    bufferOffset = _serializer.int8(obj.truth_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPConditionResponse
    let len;
    let data = new PNPConditionResponse(null);
    // Deserialize message field [truth_value]
    data.truth_value = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pnp_msgs/PNPConditionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ccfd81cc49add05d2909fac38ce1665';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 truth_value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPConditionResponse(null);
    if (msg.truth_value !== undefined) {
      resolved.truth_value = msg.truth_value;
    }
    else {
      resolved.truth_value = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: PNPConditionRequest,
  Response: PNPConditionResponse,
  md5sum() { return '1ecc39f814c627a69987379b4f614f10'; },
  datatype() { return 'pnp_msgs/PNPCondition'; }
};
