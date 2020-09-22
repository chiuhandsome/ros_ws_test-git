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

class robot_ctrl_alarmCode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.system_id = null;
      this.alarm_id = null;
      this.alarm_code = null;
      this.alarm_level = null;
      this.alarm_Desc_E = null;
      this.alarm_Desc_TC = null;
      this.alarm_Desc_SC = null;
      this.alarm_version = null;
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
      if (initObj.hasOwnProperty('alarm_Desc_E')) {
        this.alarm_Desc_E = initObj.alarm_Desc_E
      }
      else {
        this.alarm_Desc_E = '';
      }
      if (initObj.hasOwnProperty('alarm_Desc_TC')) {
        this.alarm_Desc_TC = initObj.alarm_Desc_TC
      }
      else {
        this.alarm_Desc_TC = '';
      }
      if (initObj.hasOwnProperty('alarm_Desc_SC')) {
        this.alarm_Desc_SC = initObj.alarm_Desc_SC
      }
      else {
        this.alarm_Desc_SC = '';
      }
      if (initObj.hasOwnProperty('alarm_version')) {
        this.alarm_version = initObj.alarm_version
      }
      else {
        this.alarm_version = '';
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
    // Serializes a message object of type robot_ctrl_alarmCode
    // Serialize message field [system_id]
    bufferOffset = _serializer.string(obj.system_id, buffer, bufferOffset);
    // Serialize message field [alarm_id]
    bufferOffset = _serializer.string(obj.alarm_id, buffer, bufferOffset);
    // Serialize message field [alarm_code]
    bufferOffset = _serializer.string(obj.alarm_code, buffer, bufferOffset);
    // Serialize message field [alarm_level]
    bufferOffset = _serializer.string(obj.alarm_level, buffer, bufferOffset);
    // Serialize message field [alarm_Desc_E]
    bufferOffset = _serializer.string(obj.alarm_Desc_E, buffer, bufferOffset);
    // Serialize message field [alarm_Desc_TC]
    bufferOffset = _serializer.string(obj.alarm_Desc_TC, buffer, bufferOffset);
    // Serialize message field [alarm_Desc_SC]
    bufferOffset = _serializer.string(obj.alarm_Desc_SC, buffer, bufferOffset);
    // Serialize message field [alarm_version]
    bufferOffset = _serializer.string(obj.alarm_version, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_ctrl_alarmCode
    let len;
    let data = new robot_ctrl_alarmCode(null);
    // Deserialize message field [system_id]
    data.system_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_id]
    data.alarm_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_code]
    data.alarm_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_level]
    data.alarm_level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_Desc_E]
    data.alarm_Desc_E = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_Desc_TC]
    data.alarm_Desc_TC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_Desc_SC]
    data.alarm_Desc_SC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_version]
    data.alarm_version = _deserializer.string(buffer, bufferOffset);
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
    length += object.alarm_Desc_E.length;
    length += object.alarm_Desc_TC.length;
    length += object.alarm_Desc_SC.length;
    length += object.alarm_version.length;
    length += object.update_time.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control_msgs/robot_ctrl_alarmCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bae755048a38830c24c3ddbc4bcb4411';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string system_id 			
    string alarm_id 		# module_no(3) + module alarm code(3)	
    string alarm_code 		# same as alarm_id,preper for special requirement
    string alarm_level 		# level of ararm: 1:alart 2:alarm	
    string alarm_Desc_E 		# English description of alarm	
    string alarm_Desc_TC 		# Traditional chinese description of alarm	
    string alarm_Desc_SC 		# Sample chinese description of alarm
    string alarm_version 		# version of alarm
    string update_time 		# version time of alarm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_ctrl_alarmCode(null);
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

    if (msg.alarm_Desc_E !== undefined) {
      resolved.alarm_Desc_E = msg.alarm_Desc_E;
    }
    else {
      resolved.alarm_Desc_E = ''
    }

    if (msg.alarm_Desc_TC !== undefined) {
      resolved.alarm_Desc_TC = msg.alarm_Desc_TC;
    }
    else {
      resolved.alarm_Desc_TC = ''
    }

    if (msg.alarm_Desc_SC !== undefined) {
      resolved.alarm_Desc_SC = msg.alarm_Desc_SC;
    }
    else {
      resolved.alarm_Desc_SC = ''
    }

    if (msg.alarm_version !== undefined) {
      resolved.alarm_version = msg.alarm_version;
    }
    else {
      resolved.alarm_version = ''
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

module.exports = robot_ctrl_alarmCode;
