// Auto-generated. Do not edit!

// (in-package car_db_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AlarmcodeParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.base_name = null;
      this.alarm_level = null;
      this.alarm_desc_eng = null;
      this.alarm_desc_tc = null;
      this.alarm_desc_sc = null;
      this.update_time = null;
    }
    else {
      if (initObj.hasOwnProperty('primary_id')) {
        this.primary_id = initObj.primary_id
      }
      else {
        this.primary_id = '';
      }
      if (initObj.hasOwnProperty('unique_code')) {
        this.unique_code = initObj.unique_code
      }
      else {
        this.unique_code = '';
      }
      if (initObj.hasOwnProperty('base_name')) {
        this.base_name = initObj.base_name
      }
      else {
        this.base_name = '';
      }
      if (initObj.hasOwnProperty('alarm_level')) {
        this.alarm_level = initObj.alarm_level
      }
      else {
        this.alarm_level = 0;
      }
      if (initObj.hasOwnProperty('alarm_desc_eng')) {
        this.alarm_desc_eng = initObj.alarm_desc_eng
      }
      else {
        this.alarm_desc_eng = '';
      }
      if (initObj.hasOwnProperty('alarm_desc_tc')) {
        this.alarm_desc_tc = initObj.alarm_desc_tc
      }
      else {
        this.alarm_desc_tc = '';
      }
      if (initObj.hasOwnProperty('alarm_desc_sc')) {
        this.alarm_desc_sc = initObj.alarm_desc_sc
      }
      else {
        this.alarm_desc_sc = '';
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
    // Serializes a message object of type AlarmcodeParameters
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [base_name]
    bufferOffset = _serializer.string(obj.base_name, buffer, bufferOffset);
    // Serialize message field [alarm_level]
    bufferOffset = _serializer.uint8(obj.alarm_level, buffer, bufferOffset);
    // Serialize message field [alarm_desc_eng]
    bufferOffset = _serializer.string(obj.alarm_desc_eng, buffer, bufferOffset);
    // Serialize message field [alarm_desc_tc]
    bufferOffset = _serializer.string(obj.alarm_desc_tc, buffer, bufferOffset);
    // Serialize message field [alarm_desc_sc]
    bufferOffset = _serializer.string(obj.alarm_desc_sc, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AlarmcodeParameters
    let len;
    let data = new AlarmcodeParameters(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_name]
    data.base_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_level]
    data.alarm_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [alarm_desc_eng]
    data.alarm_desc_eng = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_desc_tc]
    data.alarm_desc_tc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_desc_sc]
    data.alarm_desc_sc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.unique_code.length;
    length += object.base_name.length;
    length += object.alarm_desc_eng.length;
    length += object.alarm_desc_tc.length;
    length += object.alarm_desc_sc.length;
    length += object.update_time.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_db_manager_msgs/AlarmcodeParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a54f2fb21b297ab49903c34acf8090f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
    string base_name
    uint8 alarm_level	
    string alarm_desc_eng
    string alarm_desc_tc
    string alarm_desc_sc
    string update_time			# must-have 	  	 	
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AlarmcodeParameters(null);
    if (msg.primary_id !== undefined) {
      resolved.primary_id = msg.primary_id;
    }
    else {
      resolved.primary_id = ''
    }

    if (msg.unique_code !== undefined) {
      resolved.unique_code = msg.unique_code;
    }
    else {
      resolved.unique_code = ''
    }

    if (msg.base_name !== undefined) {
      resolved.base_name = msg.base_name;
    }
    else {
      resolved.base_name = ''
    }

    if (msg.alarm_level !== undefined) {
      resolved.alarm_level = msg.alarm_level;
    }
    else {
      resolved.alarm_level = 0
    }

    if (msg.alarm_desc_eng !== undefined) {
      resolved.alarm_desc_eng = msg.alarm_desc_eng;
    }
    else {
      resolved.alarm_desc_eng = ''
    }

    if (msg.alarm_desc_tc !== undefined) {
      resolved.alarm_desc_tc = msg.alarm_desc_tc;
    }
    else {
      resolved.alarm_desc_tc = ''
    }

    if (msg.alarm_desc_sc !== undefined) {
      resolved.alarm_desc_sc = msg.alarm_desc_sc;
    }
    else {
      resolved.alarm_desc_sc = ''
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

module.exports = AlarmcodeParameters;
