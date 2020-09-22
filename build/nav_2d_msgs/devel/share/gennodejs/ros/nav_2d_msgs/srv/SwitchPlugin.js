// Auto-generated. Do not edit!

// (in-package nav_2d_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SwitchPluginRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_plugin = null;
    }
    else {
      if (initObj.hasOwnProperty('new_plugin')) {
        this.new_plugin = initObj.new_plugin
      }
      else {
        this.new_plugin = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchPluginRequest
    // Serialize message field [new_plugin]
    bufferOffset = _serializer.string(obj.new_plugin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchPluginRequest
    let len;
    let data = new SwitchPluginRequest(null);
    // Deserialize message field [new_plugin]
    data.new_plugin = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.new_plugin.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nav_2d_msgs/SwitchPluginRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd89ec9b6d29038f89e1e1ed70f9eeeeb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string new_plugin
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchPluginRequest(null);
    if (msg.new_plugin !== undefined) {
      resolved.new_plugin = msg.new_plugin;
    }
    else {
      resolved.new_plugin = ''
    }

    return resolved;
    }
};

class SwitchPluginResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchPluginResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchPluginResponse
    let len;
    let data = new SwitchPluginResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nav_2d_msgs/SwitchPluginResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchPluginResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SwitchPluginRequest,
  Response: SwitchPluginResponse,
  md5sum() { return '7e1da0f37c644e038a68b98eee3fb836'; },
  datatype() { return 'nav_2d_msgs/SwitchPlugin'; }
};
