// Auto-generated. Do not edit!

// (in-package cellctrl_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class cell_alarmhistory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.alarm_name = null;
      this.alarm_level = null;
      this.alarm_code = null;
      this.update_time = null;
    }
    else {
      if (initObj.hasOwnProperty('primary_id')) {
        this.primary_id = initObj.primary_id
      }
      else {
        this.primary_id = '';
      }
      if (initObj.hasOwnProperty('foreign_key')) {
        this.foreign_key = initObj.foreign_key
      }
      else {
        this.foreign_key = '';
      }
      if (initObj.hasOwnProperty('unique_code')) {
        this.unique_code = initObj.unique_code
      }
      else {
        this.unique_code = '';
      }
      if (initObj.hasOwnProperty('alarm_name')) {
        this.alarm_name = initObj.alarm_name
      }
      else {
        this.alarm_name = '';
      }
      if (initObj.hasOwnProperty('alarm_level')) {
        this.alarm_level = initObj.alarm_level
      }
      else {
        this.alarm_level = 0;
      }
      if (initObj.hasOwnProperty('alarm_code')) {
        this.alarm_code = initObj.alarm_code
      }
      else {
        this.alarm_code = '';
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
    // Serializes a message object of type cell_alarmhistory
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [alarm_name]
    bufferOffset = _serializer.string(obj.alarm_name, buffer, bufferOffset);
    // Serialize message field [alarm_level]
    bufferOffset = _serializer.uint8(obj.alarm_level, buffer, bufferOffset);
    // Serialize message field [alarm_code]
    bufferOffset = _serializer.string(obj.alarm_code, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_alarmhistory
    let len;
    let data = new cell_alarmhistory(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_name]
    data.alarm_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_level]
    data.alarm_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [alarm_code]
    data.alarm_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.alarm_name.length;
    length += object.alarm_code.length;
    length += object.update_time.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_alarmhistory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbee41032af067305af86fdfab0c31ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string foreign_key
    string unique_code 		        # must-have,UNIQUE INDEX	
    string alarm_name		   
    uint8 alarm_level 		 
    string alarm_code 	
    string update_time			# must-have 		 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_alarmhistory(null);
    if (msg.primary_id !== undefined) {
      resolved.primary_id = msg.primary_id;
    }
    else {
      resolved.primary_id = ''
    }

    if (msg.foreign_key !== undefined) {
      resolved.foreign_key = msg.foreign_key;
    }
    else {
      resolved.foreign_key = ''
    }

    if (msg.unique_code !== undefined) {
      resolved.unique_code = msg.unique_code;
    }
    else {
      resolved.unique_code = ''
    }

    if (msg.alarm_name !== undefined) {
      resolved.alarm_name = msg.alarm_name;
    }
    else {
      resolved.alarm_name = ''
    }

    if (msg.alarm_level !== undefined) {
      resolved.alarm_level = msg.alarm_level;
    }
    else {
      resolved.alarm_level = 0
    }

    if (msg.alarm_code !== undefined) {
      resolved.alarm_code = msg.alarm_code;
    }
    else {
      resolved.alarm_code = ''
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

module.exports = cell_alarmhistory;
