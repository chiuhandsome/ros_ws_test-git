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

class PNPLastEventRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.substring = null;
    }
    else {
      if (initObj.hasOwnProperty('substring')) {
        this.substring = initObj.substring
      }
      else {
        this.substring = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPLastEventRequest
    // Serialize message field [substring]
    bufferOffset = _serializer.string(obj.substring, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPLastEventRequest
    let len;
    let data = new PNPLastEventRequest(null);
    // Deserialize message field [substring]
    data.substring = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.substring.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pnp_msgs/PNPLastEventRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f2d4ddb9ea981e8d77b94aeb3927ad0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string substring
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPLastEventRequest(null);
    if (msg.substring !== undefined) {
      resolved.substring = msg.substring;
    }
    else {
      resolved.substring = ''
    }

    return resolved;
    }
};

class PNPLastEventResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.eventName = null;
    }
    else {
      if (initObj.hasOwnProperty('eventName')) {
        this.eventName = initObj.eventName
      }
      else {
        this.eventName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPLastEventResponse
    // Serialize message field [eventName]
    bufferOffset = _serializer.string(obj.eventName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPLastEventResponse
    let len;
    let data = new PNPLastEventResponse(null);
    // Deserialize message field [eventName]
    data.eventName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.eventName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pnp_msgs/PNPLastEventResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b541e0fa95bf5688e6ee3728f63ae2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string eventName
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPLastEventResponse(null);
    if (msg.eventName !== undefined) {
      resolved.eventName = msg.eventName;
    }
    else {
      resolved.eventName = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PNPLastEventRequest,
  Response: PNPLastEventResponse,
  md5sum() { return '0acea5ee5ed25bf28c97c4f649046fed'; },
  datatype() { return 'pnp_msgs/PNPLastEvent'; }
};
