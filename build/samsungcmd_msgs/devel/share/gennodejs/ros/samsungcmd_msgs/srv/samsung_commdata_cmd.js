// Auto-generated. Do not edit!

// (in-package samsungcmd_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class samsung_commdata_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.req_comm_ID = null;
      this.req_func_code = null;
      this.req_comm_data = null;
      this.req_comm_data_1 = null;
      this.req_comm_data_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('req_comm_ID')) {
        this.req_comm_ID = initObj.req_comm_ID
      }
      else {
        this.req_comm_ID = '';
      }
      if (initObj.hasOwnProperty('req_func_code')) {
        this.req_func_code = initObj.req_func_code
      }
      else {
        this.req_func_code = '';
      }
      if (initObj.hasOwnProperty('req_comm_data')) {
        this.req_comm_data = initObj.req_comm_data
      }
      else {
        this.req_comm_data = '';
      }
      if (initObj.hasOwnProperty('req_comm_data_1')) {
        this.req_comm_data_1 = initObj.req_comm_data_1
      }
      else {
        this.req_comm_data_1 = '';
      }
      if (initObj.hasOwnProperty('req_comm_data_2')) {
        this.req_comm_data_2 = initObj.req_comm_data_2
      }
      else {
        this.req_comm_data_2 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type samsung_commdata_cmdRequest
    // Serialize message field [req_comm_ID]
    bufferOffset = _serializer.string(obj.req_comm_ID, buffer, bufferOffset);
    // Serialize message field [req_func_code]
    bufferOffset = _serializer.string(obj.req_func_code, buffer, bufferOffset);
    // Serialize message field [req_comm_data]
    bufferOffset = _serializer.string(obj.req_comm_data, buffer, bufferOffset);
    // Serialize message field [req_comm_data_1]
    bufferOffset = _serializer.string(obj.req_comm_data_1, buffer, bufferOffset);
    // Serialize message field [req_comm_data_2]
    bufferOffset = _serializer.string(obj.req_comm_data_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type samsung_commdata_cmdRequest
    let len;
    let data = new samsung_commdata_cmdRequest(null);
    // Deserialize message field [req_comm_ID]
    data.req_comm_ID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [req_func_code]
    data.req_func_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [req_comm_data]
    data.req_comm_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [req_comm_data_1]
    data.req_comm_data_1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [req_comm_data_2]
    data.req_comm_data_2 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.req_comm_ID.length;
    length += object.req_func_code.length;
    length += object.req_comm_data.length;
    length += object.req_comm_data_1.length;
    length += object.req_comm_data_2.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'samsungcmd_msgs/samsung_commdata_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '696dc8def84f577b37c5b3f6d1d54ac3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string 	req_comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]
    string  req_func_code		#1 byte :C,T,R
    string 	req_comm_data		#2 byte
    string 	req_comm_data_1		#2 byte
    string 	req_comm_data_2		#2 byte
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new samsung_commdata_cmdRequest(null);
    if (msg.req_comm_ID !== undefined) {
      resolved.req_comm_ID = msg.req_comm_ID;
    }
    else {
      resolved.req_comm_ID = ''
    }

    if (msg.req_func_code !== undefined) {
      resolved.req_func_code = msg.req_func_code;
    }
    else {
      resolved.req_func_code = ''
    }

    if (msg.req_comm_data !== undefined) {
      resolved.req_comm_data = msg.req_comm_data;
    }
    else {
      resolved.req_comm_data = ''
    }

    if (msg.req_comm_data_1 !== undefined) {
      resolved.req_comm_data_1 = msg.req_comm_data_1;
    }
    else {
      resolved.req_comm_data_1 = ''
    }

    if (msg.req_comm_data_2 !== undefined) {
      resolved.req_comm_data_2 = msg.req_comm_data_2;
    }
    else {
      resolved.req_comm_data_2 = ''
    }

    return resolved;
    }
};

class samsung_commdata_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.comm_ID = null;
      this.func_code = null;
      this.comm_data = null;
      this.comm_data_1 = null;
      this.comm_data_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('comm_ID')) {
        this.comm_ID = initObj.comm_ID
      }
      else {
        this.comm_ID = '';
      }
      if (initObj.hasOwnProperty('func_code')) {
        this.func_code = initObj.func_code
      }
      else {
        this.func_code = '';
      }
      if (initObj.hasOwnProperty('comm_data')) {
        this.comm_data = initObj.comm_data
      }
      else {
        this.comm_data = '';
      }
      if (initObj.hasOwnProperty('comm_data_1')) {
        this.comm_data_1 = initObj.comm_data_1
      }
      else {
        this.comm_data_1 = '';
      }
      if (initObj.hasOwnProperty('comm_data_2')) {
        this.comm_data_2 = initObj.comm_data_2
      }
      else {
        this.comm_data_2 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type samsung_commdata_cmdResponse
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [comm_ID]
    bufferOffset = _serializer.string(obj.comm_ID, buffer, bufferOffset);
    // Serialize message field [func_code]
    bufferOffset = _serializer.string(obj.func_code, buffer, bufferOffset);
    // Serialize message field [comm_data]
    bufferOffset = _serializer.string(obj.comm_data, buffer, bufferOffset);
    // Serialize message field [comm_data_1]
    bufferOffset = _serializer.string(obj.comm_data_1, buffer, bufferOffset);
    // Serialize message field [comm_data_2]
    bufferOffset = _serializer.string(obj.comm_data_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type samsung_commdata_cmdResponse
    let len;
    let data = new samsung_commdata_cmdResponse(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [comm_ID]
    data.comm_ID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [func_code]
    data.func_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [comm_data]
    data.comm_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [comm_data_1]
    data.comm_data_1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [comm_data_2]
    data.comm_data_2 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.comm_ID.length;
    length += object.func_code.length;
    length += object.comm_data.length;
    length += object.comm_data_1.length;
    length += object.comm_data_2.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'samsungcmd_msgs/samsung_commdata_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '688c11db53a0af4f57afcf5ca5ec4c46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time 	stamp
    string 	comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]
    string 	func_code		#1 byte :C,T,R
    string 	comm_data		#2 byte
    string 	comm_data_1		#2 byte
    string 	comm_data_2		#2 byte
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new samsung_commdata_cmdResponse(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.comm_ID !== undefined) {
      resolved.comm_ID = msg.comm_ID;
    }
    else {
      resolved.comm_ID = ''
    }

    if (msg.func_code !== undefined) {
      resolved.func_code = msg.func_code;
    }
    else {
      resolved.func_code = ''
    }

    if (msg.comm_data !== undefined) {
      resolved.comm_data = msg.comm_data;
    }
    else {
      resolved.comm_data = ''
    }

    if (msg.comm_data_1 !== undefined) {
      resolved.comm_data_1 = msg.comm_data_1;
    }
    else {
      resolved.comm_data_1 = ''
    }

    if (msg.comm_data_2 !== undefined) {
      resolved.comm_data_2 = msg.comm_data_2;
    }
    else {
      resolved.comm_data_2 = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: samsung_commdata_cmdRequest,
  Response: samsung_commdata_cmdResponse,
  md5sum() { return '242fd30b82c2183869504aaf92fdf73a'; },
  datatype() { return 'samsungcmd_msgs/samsung_commdata_cmd'; }
};
