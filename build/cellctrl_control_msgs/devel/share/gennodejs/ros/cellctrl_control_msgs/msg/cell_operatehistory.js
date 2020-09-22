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

class cell_operatehistory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.operate_name = null;
      this.operate_type = null;
      this.operate_code = null;
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
      if (initObj.hasOwnProperty('operate_name')) {
        this.operate_name = initObj.operate_name
      }
      else {
        this.operate_name = '';
      }
      if (initObj.hasOwnProperty('operate_type')) {
        this.operate_type = initObj.operate_type
      }
      else {
        this.operate_type = 0;
      }
      if (initObj.hasOwnProperty('operate_code')) {
        this.operate_code = initObj.operate_code
      }
      else {
        this.operate_code = '';
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
    // Serializes a message object of type cell_operatehistory
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [operate_name]
    bufferOffset = _serializer.string(obj.operate_name, buffer, bufferOffset);
    // Serialize message field [operate_type]
    bufferOffset = _serializer.uint8(obj.operate_type, buffer, bufferOffset);
    // Serialize message field [operate_code]
    bufferOffset = _serializer.string(obj.operate_code, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_operatehistory
    let len;
    let data = new cell_operatehistory(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operate_name]
    data.operate_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operate_type]
    data.operate_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [operate_code]
    data.operate_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.operate_name.length;
    length += object.operate_code.length;
    length += object.update_time.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_operatehistory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1975cdd97c6f9c940606465108aaaf21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string foreign_key
    string unique_code 		        # must-have,UNIQUE INDEX	
    string operate_name		   
    uint8 operate_type 		 
    string operate_code 	
    string update_time			# must-have 		 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_operatehistory(null);
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

    if (msg.operate_name !== undefined) {
      resolved.operate_name = msg.operate_name;
    }
    else {
      resolved.operate_name = ''
    }

    if (msg.operate_type !== undefined) {
      resolved.operate_type = msg.operate_type;
    }
    else {
      resolved.operate_type = 0
    }

    if (msg.operate_code !== undefined) {
      resolved.operate_code = msg.operate_code;
    }
    else {
      resolved.operate_code = ''
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

module.exports = cell_operatehistory;
