// Auto-generated. Do not edit!

// (in-package botcmd_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bot_pubstatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seq = null;
      this.stamp = null;
      this.device_ID = null;
      this.status = null;
      this.error_code = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('device_ID')) {
        this.device_ID = initObj.device_ID
      }
      else {
        this.device_ID = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = [];
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_pubstatus
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [device_ID]
    bufferOffset = _arraySerializer.int8(obj.device_ID, buffer, bufferOffset, null);
    // Serialize message field [status]
    bufferOffset = _arraySerializer.int8(obj.status, buffer, bufferOffset, null);
    // Serialize message field [error_code]
    bufferOffset = _arraySerializer.int8(obj.error_code, buffer, bufferOffset, null);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.string(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_pubstatus
    let len;
    let data = new bot_pubstatus(null);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [device_ID]
    data.device_ID = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [status]
    data.status = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [error_code]
    data.error_code = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [data]
    data.data = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.device_ID.length;
    length += object.status.length;
    length += object.error_code.length;
    object.data.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'botcmd_msgs/bot_pubstatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1817e5d1572e2f529a3329b34502065';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 seq
    time stamp
    int8[] device_ID
    int8[] status
    int8[] error_code
    string[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_pubstatus(null);
    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.device_ID !== undefined) {
      resolved.device_ID = msg.device_ID;
    }
    else {
      resolved.device_ID = []
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = []
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = bot_pubstatus;
