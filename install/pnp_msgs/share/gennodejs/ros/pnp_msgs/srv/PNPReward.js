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

class PNPRewardRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rewardRequest = null;
    }
    else {
      if (initObj.hasOwnProperty('rewardRequest')) {
        this.rewardRequest = initObj.rewardRequest
      }
      else {
        this.rewardRequest = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPRewardRequest
    // Serialize message field [rewardRequest]
    bufferOffset = _serializer.string(obj.rewardRequest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPRewardRequest
    let len;
    let data = new PNPRewardRequest(null);
    // Deserialize message field [rewardRequest]
    data.rewardRequest = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.rewardRequest.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pnp_msgs/PNPRewardRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '390763284c6018ac6c753bce01d183a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string rewardRequest
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPRewardRequest(null);
    if (msg.rewardRequest !== undefined) {
      resolved.rewardRequest = msg.rewardRequest;
    }
    else {
      resolved.rewardRequest = ''
    }

    return resolved;
    }
};

class PNPRewardResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reward = null;
    }
    else {
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PNPRewardResponse
    // Serialize message field [reward]
    bufferOffset = _serializer.float32(obj.reward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PNPRewardResponse
    let len;
    let data = new PNPRewardResponse(null);
    // Deserialize message field [reward]
    data.reward = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pnp_msgs/PNPRewardResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c5a2bbc277e822b80ec2fb352dd1efe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 reward
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PNPRewardResponse(null);
    if (msg.reward !== undefined) {
      resolved.reward = msg.reward;
    }
    else {
      resolved.reward = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: PNPRewardRequest,
  Response: PNPRewardResponse,
  md5sum() { return 'd6bac371d18603a2d7685bb5dacec7cb'; },
  datatype() { return 'pnp_msgs/PNPReward'; }
};
