// Auto-generated. Do not edit!

// (in-package mongodb_store.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param_name = null;
    }
    else {
      if (initObj.hasOwnProperty('param_name')) {
        this.param_name = initObj.param_name
      }
      else {
        this.param_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetParamRequest
    // Serialize message field [param_name]
    bufferOffset = _serializer.string(obj.param_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetParamRequest
    let len;
    let data = new GetParamRequest(null);
    // Deserialize message field [param_name]
    data.param_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.param_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store/GetParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b381fd4edcffd7ff5b5a7e1630491a17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string param_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetParamRequest(null);
    if (msg.param_name !== undefined) {
      resolved.param_name = msg.param_name;
    }
    else {
      resolved.param_name = ''
    }

    return resolved;
    }
};

class GetParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.param_value = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('param_value')) {
        this.param_value = initObj.param_value
      }
      else {
        this.param_value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetParamResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [param_value]
    bufferOffset = _serializer.string(obj.param_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetParamResponse
    let len;
    let data = new GetParamResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [param_value]
    data.param_value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.param_value.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store/GetParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfcec4af20d6b267ef6ee8d3934547c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string param_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetParamResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.param_value !== undefined) {
      resolved.param_value = msg.param_value;
    }
    else {
      resolved.param_value = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetParamRequest,
  Response: GetParamResponse,
  md5sum() { return 'add0a9ca8505353703e4f0dfd366c0c2'; },
  datatype() { return 'mongodb_store/GetParam'; }
};
