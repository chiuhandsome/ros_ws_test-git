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

class robot_ctrl_roslog {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.system_id = null;
      this.roslog_level = null;
      this.roslog_node = null;
      this.roslog_content = null;
      this.occure_time = null;
      this.update_time = null;
    }
    else {
      if (initObj.hasOwnProperty('system_id')) {
        this.system_id = initObj.system_id
      }
      else {
        this.system_id = '';
      }
      if (initObj.hasOwnProperty('roslog_level')) {
        this.roslog_level = initObj.roslog_level
      }
      else {
        this.roslog_level = '';
      }
      if (initObj.hasOwnProperty('roslog_node')) {
        this.roslog_node = initObj.roslog_node
      }
      else {
        this.roslog_node = '';
      }
      if (initObj.hasOwnProperty('roslog_content')) {
        this.roslog_content = initObj.roslog_content
      }
      else {
        this.roslog_content = '';
      }
      if (initObj.hasOwnProperty('occure_time')) {
        this.occure_time = initObj.occure_time
      }
      else {
        this.occure_time = '';
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
    // Serializes a message object of type robot_ctrl_roslog
    // Serialize message field [system_id]
    bufferOffset = _serializer.string(obj.system_id, buffer, bufferOffset);
    // Serialize message field [roslog_level]
    bufferOffset = _serializer.string(obj.roslog_level, buffer, bufferOffset);
    // Serialize message field [roslog_node]
    bufferOffset = _serializer.string(obj.roslog_node, buffer, bufferOffset);
    // Serialize message field [roslog_content]
    bufferOffset = _serializer.string(obj.roslog_content, buffer, bufferOffset);
    // Serialize message field [occure_time]
    bufferOffset = _serializer.string(obj.occure_time, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_roslog
    let len;
    let data = new robot_ctrl_roslog(null);
    // Deserialize message field [system_id]
    data.system_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roslog_level]
    data.roslog_level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roslog_node]
    data.roslog_node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roslog_content]
    data.roslog_content = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [occure_time]
    data.occure_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.system_id.length;
    length += object.roslog_level.length;
    length += object.roslog_node.length;
    length += object.roslog_content.length;
    length += object.occure_time.length;
    length += object.update_time.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control_msgs/robot_ctrl_roslog';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fbe8c01a89f28f5cb406e90c253e0af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string system_id 
    string roslog_level 			 
    string roslog_node 			 
    string roslog_content 			 
    string occure_time 	 
    string update_time 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_roslog(null);
    if (msg.system_id !== undefined) {
      resolved.system_id = msg.system_id;
    }
    else {
      resolved.system_id = ''
    }

    if (msg.roslog_level !== undefined) {
      resolved.roslog_level = msg.roslog_level;
    }
    else {
      resolved.roslog_level = ''
    }

    if (msg.roslog_node !== undefined) {
      resolved.roslog_node = msg.roslog_node;
    }
    else {
      resolved.roslog_node = ''
    }

    if (msg.roslog_content !== undefined) {
      resolved.roslog_content = msg.roslog_content;
    }
    else {
      resolved.roslog_content = ''
    }

    if (msg.occure_time !== undefined) {
      resolved.occure_time = msg.occure_time;
    }
    else {
      resolved.occure_time = ''
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

module.exports = robot_ctrl_roslog;
