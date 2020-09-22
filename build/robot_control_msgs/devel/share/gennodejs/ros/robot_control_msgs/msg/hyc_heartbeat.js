// Auto-generated. Do not edit!

// (in-package robot_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class hyc_heartbeat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hb_status = null;
      this.hb_stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('hb_status')) {
        this.hb_status = initObj.hb_status
      }
      else {
        this.hb_status = 0;
      }
      if (initObj.hasOwnProperty('hb_stamp')) {
        this.hb_stamp = initObj.hb_stamp
      }
      else {
        this.hb_stamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hyc_heartbeat
    // Serialize message field [hb_status]
    bufferOffset = _serializer.int8(obj.hb_status, buffer, bufferOffset);
    // Serialize message field [hb_stamp]
    bufferOffset = _serializer.int16(obj.hb_stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hyc_heartbeat
    let len;
    let data = new hyc_heartbeat(null);
    // Deserialize message field [hb_status]
    data.hb_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [hb_stamp]
    data.hb_stamp = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control_msgs/hyc_heartbeat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df9efe1397ef4d3891140ed1e523817f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## heart_beat message
    #################################################################
    int8 hb_status
    int16 hb_stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hyc_heartbeat(null);
    if (msg.hb_status !== undefined) {
      resolved.hb_status = msg.hb_status;
    }
    else {
      resolved.hb_status = 0
    }

    if (msg.hb_stamp !== undefined) {
      resolved.hb_stamp = msg.hb_stamp;
    }
    else {
      resolved.hb_stamp = 0
    }

    return resolved;
    }
};

module.exports = hyc_heartbeat;
