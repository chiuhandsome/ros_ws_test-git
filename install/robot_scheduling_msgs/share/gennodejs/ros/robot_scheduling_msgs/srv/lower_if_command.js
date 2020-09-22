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

class lower_if_commandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.cmd_id = null;
      this.cmd_data = null;
    }
    else {
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
      if (initObj.hasOwnProperty('cmd_data')) {
        this.cmd_data = initObj.cmd_data
      }
      else {
        this.cmd_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lower_if_commandRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.uint8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [cmd_data]
    bufferOffset = _serializer.string(obj.cmd_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lower_if_commandRequest
    let len;
    let data = new lower_if_commandRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_data]
    data.cmd_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_data.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_scheduling_msgs/lower_if_commandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e6e7b9d944e8b26071ae1c34c433441';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # set command type and its data 
    uint8 GET_STATUS=1
    uint8 SET_COMMAND=2
    uint8 cmd_type	
    uint8 STATUS=1	 
    uint8 BASE_CONNECT=2   
    uint8 BASE_READY=3  
    uint8 BASE_PROC=4   
    uint8 LED=5	 
    uint8 MUSIC=6	    
    uint8 BATTERY=7	   
    uint8 UTRASONIC=8	  
    uint8 POWERCHARGE=9
    uint8 cmd_id  
    string cmd_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lower_if_commandRequest(null);
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

    if (msg.cmd_data !== undefined) {
      resolved.cmd_data = msg.cmd_data;
    }
    else {
      resolved.cmd_data = ''
    }

    return resolved;
    }
};

// Constants for message
lower_if_commandRequest.Constants = {
  GET_STATUS: 1,
  SET_COMMAND: 2,
  STATUS: 1,
  BASE_CONNECT: 2,
  BASE_READY: 3,
  BASE_PROC: 4,
  LED: 5,
  MUSIC: 6,
  BATTERY: 7,
  UTRASONIC: 8,
  POWERCHARGE: 9,
}

class lower_if_commandResponse {
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
    // Serializes a message object of type lower_if_commandResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [result_state]
    bufferOffset = _serializer.uint8(obj.result_state, buffer, bufferOffset);
    // Serialize message field [result_data]
    bufferOffset = _serializer.string(obj.result_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lower_if_commandResponse
    let len;
    let data = new lower_if_commandResponse(null);
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
    return 'robot_scheduling_msgs/lower_if_commandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a0189a3df6e9b1777ecbbecbc6f0332';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    uint8 OK=1
    uint8 NOT_OK=2
    uint8 TIMED_OUT=3
    uint8 OUT_OF_TIMES=4
    uint8 result_state
    string result_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lower_if_commandResponse(null);
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

// Constants for message
lower_if_commandResponse.Constants = {
  OK: 1,
  NOT_OK: 2,
  TIMED_OUT: 3,
  OUT_OF_TIMES: 4,
}

module.exports = {
  Request: lower_if_commandRequest,
  Response: lower_if_commandResponse,
  md5sum() { return '441a58e5dfae63962fb07d2ec8a5ac33'; },
  datatype() { return 'robot_scheduling_msgs/lower_if_command'; }
};
