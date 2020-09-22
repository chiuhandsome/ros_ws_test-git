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

class samsung_work_id {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_id = null;
      this.work_id = null;
      this.target_station_id = null;
      this.work_type_id = null;
      this.next_station_id = null;
      this.update_time = null;
    }
    else {
      if (initObj.hasOwnProperty('key_id')) {
        this.key_id = initObj.key_id
      }
      else {
        this.key_id = '';
      }
      if (initObj.hasOwnProperty('work_id')) {
        this.work_id = initObj.work_id
      }
      else {
        this.work_id = 0;
      }
      if (initObj.hasOwnProperty('target_station_id')) {
        this.target_station_id = initObj.target_station_id
      }
      else {
        this.target_station_id = 0;
      }
      if (initObj.hasOwnProperty('work_type_id')) {
        this.work_type_id = initObj.work_type_id
      }
      else {
        this.work_type_id = 0;
      }
      if (initObj.hasOwnProperty('next_station_id')) {
        this.next_station_id = initObj.next_station_id
      }
      else {
        this.next_station_id = 0;
      }
      if (initObj.hasOwnProperty('update_time')) {
        this.update_time = initObj.update_time
      }
      else {
        this.update_time = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type samsung_work_id
    // Serialize message field [key_id]
    bufferOffset = _serializer.string(obj.key_id, buffer, bufferOffset);
    // Serialize message field [work_id]
    bufferOffset = _serializer.uint16(obj.work_id, buffer, bufferOffset);
    // Serialize message field [target_station_id]
    bufferOffset = _serializer.uint16(obj.target_station_id, buffer, bufferOffset);
    // Serialize message field [work_type_id]
    bufferOffset = _serializer.uint8(obj.work_type_id, buffer, bufferOffset);
    // Serialize message field [next_station_id]
    bufferOffset = _serializer.uint16(obj.next_station_id, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type samsung_work_id
    let len;
    let data = new samsung_work_id(null);
    // Deserialize message field [key_id]
    data.key_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [work_id]
    data.work_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [target_station_id]
    data.target_station_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [work_type_id]
    data.work_type_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [next_station_id]
    data.next_station_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key_id.length;
    length += object.update_time.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'samsungcmd_msgs/samsung_work_id';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56eb78950956dc0347226dcaeda29115';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string key_id
    uint16 work_id
    uint16 target_station_id	 
    uint8  work_type_id		# 0:loader-loading 1:loader-unloading 2:unloader-loading 3:unloader-unloading
    uint16 next_station_id
    string 	update_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new samsung_work_id(null);
    if (msg.key_id !== undefined) {
      resolved.key_id = msg.key_id;
    }
    else {
      resolved.key_id = ''
    }

    if (msg.work_id !== undefined) {
      resolved.work_id = msg.work_id;
    }
    else {
      resolved.work_id = 0
    }

    if (msg.target_station_id !== undefined) {
      resolved.target_station_id = msg.target_station_id;
    }
    else {
      resolved.target_station_id = 0
    }

    if (msg.work_type_id !== undefined) {
      resolved.work_type_id = msg.work_type_id;
    }
    else {
      resolved.work_type_id = 0
    }

    if (msg.next_station_id !== undefined) {
      resolved.next_station_id = msg.next_station_id;
    }
    else {
      resolved.next_station_id = 0
    }

    if (msg.update_time !== undefined) {
      resolved.update_time = msg.update_time;
    }
    else {
      resolved.update_time = ''
    }

    return resolved;
    }
};

module.exports = samsung_work_id;
