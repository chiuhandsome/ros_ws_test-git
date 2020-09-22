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

class robot_ctrl_alarmHistory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.system_id = null;
      this.alarm_id = null;
      this.alarm_code = null;
      this.alarm_level = null;
      this.alarm_occure_time = null;
      this.update_time = null;
    }
    else {
      if (initObj.hasOwnProperty('system_id')) {
        this.system_id = initObj.system_id
      }
      else {
        this.system_id = '';
      }
      if (initObj.hasOwnProperty('alarm_id')) {
        this.alarm_id = initObj.alarm_id
      }
      else {
        this.alarm_id = '';
      }
      if (initObj.hasOwnProperty('alarm_code')) {
        this.alarm_code = initObj.alarm_code
      }
      else {
        this.alarm_code = '';
      }
      if (initObj.hasOwnProperty('alarm_level')) {
        this.alarm_level = initObj.alarm_level
      }
      else {
        this.alarm_level = '';
      }
      if (initObj.hasOwnProperty('alarm_occure_time')) {
        this.alarm_occure_time = initObj.alarm_occure_time
      }
      else {
        this.alarm_occure_time = '';
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
    // Serializes a message object of type robot_ctrl_alarmHistory
    // Serialize message field [system_id]
    bufferOffset = _serializer.string(obj.system_id, buffer, bufferOffset);
    // Serialize message field [alarm_id]
    bufferOffset = _serializer.string(obj.alarm_id, buffer, bufferOffset);
    // Serialize message field [alarm_code]
    bufferOffset = _serializer.string(obj.alarm_code, buffer, bufferOffset);
    // Serialize message field [alarm_level]
    bufferOffset = _serializer.string(obj.alarm_level, buffer, bufferOffset);
    // Serialize message field [alarm_occure_time]
    bufferOffset = _serializer.string(obj.alarm_occure_time, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_alarmHistory
    let len;
    let data = new robot_ctrl_alarmHistory(null);
    // Deserialize message field [system_id]
    data.system_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_id]
    data.alarm_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_code]
    data.alarm_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_level]
    data.alarm_level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_occure_time]
    data.alarm_occure_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.system_id.length;
    length += object.alarm_id.length;
    length += object.alarm_code.length;
    length += object.alarm_level.length;
    length += object.alarm_occure_time.length;
    length += object.update_time.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control_msgs/robot_ctrl_alarmHistory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b1377e9612e5919160e7b5630dcb6dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string system_id 
    string alarm_id 			# module_no(3) + module alarm code(3)	
    string alarm_code 			# same as alarm_id,preper for special requirement
    string alarm_level 			# level of ararm: 1:alart 2:alarm	
    string alarm_occure_time 	# occure time of alarm
    string update_time 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_alarmHistory(null);
    if (msg.system_id !== undefined) {
      resolved.system_id = msg.system_id;
    }
    else {
      resolved.system_id = ''
    }

    if (msg.alarm_id !== undefined) {
      resolved.alarm_id = msg.alarm_id;
    }
    else {
      resolved.alarm_id = ''
    }

    if (msg.alarm_code !== undefined) {
      resolved.alarm_code = msg.alarm_code;
    }
    else {
      resolved.alarm_code = ''
    }

    if (msg.alarm_level !== undefined) {
      resolved.alarm_level = msg.alarm_level;
    }
    else {
      resolved.alarm_level = ''
    }

    if (msg.alarm_occure_time !== undefined) {
      resolved.alarm_occure_time = msg.alarm_occure_time;
    }
    else {
      resolved.alarm_occure_time = ''
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

module.exports = robot_ctrl_alarmHistory;
