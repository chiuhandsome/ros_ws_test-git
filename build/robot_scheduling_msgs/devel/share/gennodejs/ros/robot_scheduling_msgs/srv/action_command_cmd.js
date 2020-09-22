// Auto-generated. Do not edit!

// (in-package robot_scheduling_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class action_command_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_set_type = null;
      this.cmd_type = null;
      this.cmd_id = null;
      this.cmd_seq = null;
      this.cmd_data = null;
      this.set_data = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_set_type')) {
        this.cmd_set_type = initObj.cmd_set_type
      }
      else {
        this.cmd_set_type = 0;
      }
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('cmd_id')) {
        this.cmd_id = initObj.cmd_id
      }
      else {
        this.cmd_id = 0;
      }
      if (initObj.hasOwnProperty('cmd_seq')) {
        this.cmd_seq = initObj.cmd_seq
      }
      else {
        this.cmd_seq = 0;
      }
      if (initObj.hasOwnProperty('cmd_data')) {
        this.cmd_data = initObj.cmd_data
      }
      else {
        this.cmd_data = '';
      }
      if (initObj.hasOwnProperty('set_data')) {
        this.set_data = initObj.set_data
      }
      else {
        this.set_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type action_command_cmdRequest
    // Serialize message field [cmd_set_type]
    bufferOffset = _serializer.uint8(obj.cmd_set_type, buffer, bufferOffset);
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.uint8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [cmd_seq]
    bufferOffset = _serializer.uint8(obj.cmd_seq, buffer, bufferOffset);
    // Serialize message field [cmd_data]
    bufferOffset = _serializer.string(obj.cmd_data, buffer, bufferOffset);
    // Serialize message field [set_data]
    bufferOffset = _serializer.string(obj.set_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type action_command_cmdRequest
    let len;
    let data = new action_command_cmdRequest(null);
    // Deserialize message field [cmd_set_type]
    data.cmd_set_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_seq]
    data.cmd_seq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_data]
    data.cmd_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [set_data]
    data.set_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_data.length;
    length += object.set_data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_scheduling_msgs/action_command_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ad91ca6197731088167bf0e882243ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # set command type and its data 
    uint8 cmd_set_type	 	
    uint8 cmd_type		      
    uint8 cmd_id    
    uint8 cmd_seq 	 	
    string cmd_data
    string set_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new action_command_cmdRequest(null);
    if (msg.cmd_set_type !== undefined) {
      resolved.cmd_set_type = msg.cmd_set_type;
    }
    else {
      resolved.cmd_set_type = 0
    }

    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.cmd_id !== undefined) {
      resolved.cmd_id = msg.cmd_id;
    }
    else {
      resolved.cmd_id = 0
    }

    if (msg.cmd_seq !== undefined) {
      resolved.cmd_seq = msg.cmd_seq;
    }
    else {
      resolved.cmd_seq = 0
    }

    if (msg.cmd_data !== undefined) {
      resolved.cmd_data = msg.cmd_data;
    }
    else {
      resolved.cmd_data = ''
    }

    if (msg.set_data !== undefined) {
      resolved.set_data = msg.set_data;
    }
    else {
      resolved.set_data = ''
    }

    return resolved;
    }
};

class action_command_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.result_state = null;
      this.result_data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('result_state')) {
        this.result_state = initObj.result_state
      }
      else {
        this.result_state = 0;
      }
      if (initObj.hasOwnProperty('result_data')) {
        this.result_data = initObj.result_data
      }
      else {
        this.result_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type action_command_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [result_state]
    bufferOffset = _serializer.uint8(obj.result_state, buffer, bufferOffset);
    // Serialize message field [result_data]
    bufferOffset = _serializer.string(obj.result_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type action_command_cmdResponse
    let len;
    let data = new action_command_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result_state]
    data.result_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [result_data]
    data.result_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result_data.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_scheduling_msgs/action_command_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de0c734fcaa62aa2760bdef74bd97097';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    uint8 result_state
    string result_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new action_command_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.result_state !== undefined) {
      resolved.result_state = msg.result_state;
    }
    else {
      resolved.result_state = 0
    }

    if (msg.result_data !== undefined) {
      resolved.result_data = msg.result_data;
    }
    else {
      resolved.result_data = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: action_command_cmdRequest,
  Response: action_command_cmdResponse,
  md5sum() { return 'c70509ca0082e9e32c4734aad4c091af'; },
  datatype() { return 'robot_scheduling_msgs/action_command_cmd'; }
};
