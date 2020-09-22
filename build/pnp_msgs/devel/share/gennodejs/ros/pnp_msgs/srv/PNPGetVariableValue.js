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

class PNPGetVariableValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.variable = null;
    }
    else {
      if (initObj.hasOwnProperty('variable')) {
        this.variable = initObj.variable
      }
      else {
        this.variable = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPGetVariableValueRequest
    // Serialize message field [variable]
    bufferOffset = _serializer.string(obj.variable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPGetVariableValueRequest
    let len;
    let data = new PNPGetVariableValueRequest(null);
    // Deserialize message field [variable]
    data.variable = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.variable.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pnp_msgs/PNPGetVariableValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0025523f25a3be72b81a4752d8b3914';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string variable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPGetVariableValueRequest(null);
    if (msg.variable !== undefined) {
      resolved.variable = msg.variable;
    }
    else {
      resolved.variable = ''
    }

    return resolved;
    }
};

class PNPGetVariableValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.answer = null;
    }
    else {
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPGetVariableValueResponse
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPGetVariableValueResponse
    let len;
    let data = new PNPGetVariableValueResponse(null);
    // Deserialize message field [answer]
    data.answer = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.answer.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pnp_msgs/PNPGetVariableValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7e708f879c94bb931716d8f4f130f30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string answer
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPGetVariableValueResponse(null);
    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PNPGetVariableValueRequest,
  Response: PNPGetVariableValueResponse,
  md5sum() { return '2cb822bc826e5843de6b96ba6e683d4b'; },
  datatype() { return 'pnp_msgs/PNPGetVariableValue'; }
};
