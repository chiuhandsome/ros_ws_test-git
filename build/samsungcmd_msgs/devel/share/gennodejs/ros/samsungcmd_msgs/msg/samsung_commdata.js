// Auto-generated. Do not edit!

// (in-package samsungcmd_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class samsung_commdata {
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
    // Serializes a message object of type samsung_commdata
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
    //deserializes a message object of type samsung_commdata
    let len;
    let data = new samsung_commdata(null);
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
    // Returns string type for a message object
    return 'samsungcmd_msgs/samsung_commdata';
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
    string 	func_code		#1 byte :E,S,L,U,M
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
    const resolved = new samsung_commdata(null);
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

module.exports = samsung_commdata;
