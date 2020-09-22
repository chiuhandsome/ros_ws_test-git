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

class OperatecodeParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.base_name = null;
      this.operate_level = null;
      this.operate_desc_eng = null;
      this.operate_desc_tc = null;
      this.operate_desc_sc = null;
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
      if (initObj.hasOwnProperty('operate_level')) {
        this.operate_level = initObj.operate_level
      }
      else {
        this.operate_level = 0;
      }
      if (initObj.hasOwnProperty('operate_desc_eng')) {
        this.operate_desc_eng = initObj.operate_desc_eng
      }
      else {
        this.operate_desc_eng = '';
      }
      if (initObj.hasOwnProperty('operate_desc_tc')) {
        this.operate_desc_tc = initObj.operate_desc_tc
      }
      else {
        this.operate_desc_tc = '';
      }
      if (initObj.hasOwnProperty('operate_desc_sc')) {
        this.operate_desc_sc = initObj.operate_desc_sc
      }
      else {
        this.operate_desc_sc = '';
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
    // Serializes a message object of type OperatecodeParameters
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [base_name]
    bufferOffset = _serializer.string(obj.base_name, buffer, bufferOffset);
    // Serialize message field [operate_level]
    bufferOffset = _serializer.uint8(obj.operate_level, buffer, bufferOffset);
    // Serialize message field [operate_desc_eng]
    bufferOffset = _serializer.string(obj.operate_desc_eng, buffer, bufferOffset);
    // Serialize message field [operate_desc_tc]
    bufferOffset = _serializer.string(obj.operate_desc_tc, buffer, bufferOffset);
    // Serialize message field [operate_desc_sc]
    bufferOffset = _serializer.string(obj.operate_desc_sc, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperatecodeParameters
    let len;
    let data = new OperatecodeParameters(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_name]
    data.base_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operate_level]
    data.operate_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [operate_desc_eng]
    data.operate_desc_eng = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operate_desc_tc]
    data.operate_desc_tc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operate_desc_sc]
    data.operate_desc_sc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.unique_code.length;
    length += object.base_name.length;
    length += object.operate_desc_eng.length;
    length += object.operate_desc_tc.length;
    length += object.operate_desc_sc.length;
    length += object.update_time.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_db_manager_msgs/OperatecodeParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99946a2788db58b35079220bbedb8893';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
    string base_name
    uint8 operate_level	
    string operate_desc_eng
    string operate_desc_tc
    string operate_desc_sc
    string update_time			# must-have 	  	
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OperatecodeParameters(null);
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

    if (msg.operate_level !== undefined) {
      resolved.operate_level = msg.operate_level;
    }
    else {
      resolved.operate_level = 0
    }

    if (msg.operate_desc_eng !== undefined) {
      resolved.operate_desc_eng = msg.operate_desc_eng;
    }
    else {
      resolved.operate_desc_eng = ''
    }

    if (msg.operate_desc_tc !== undefined) {
      resolved.operate_desc_tc = msg.operate_desc_tc;
    }
    else {
      resolved.operate_desc_tc = ''
    }

    if (msg.operate_desc_sc !== undefined) {
      resolved.operate_desc_sc = msg.operate_desc_sc;
    }
    else {
      resolved.operate_desc_sc = ''
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

module.exports = OperatecodeParameters;
