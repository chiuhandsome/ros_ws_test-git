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

class cell_maintainhistory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.maintain_name = null;
      this.maintain_type = null;
      this.maintain_code = null;
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
      if (initObj.hasOwnProperty('maintain_name')) {
        this.maintain_name = initObj.maintain_name
      }
      else {
        this.maintain_name = '';
      }
      if (initObj.hasOwnProperty('maintain_type')) {
        this.maintain_type = initObj.maintain_type
      }
      else {
        this.maintain_type = 0;
      }
      if (initObj.hasOwnProperty('maintain_code')) {
        this.maintain_code = initObj.maintain_code
      }
      else {
        this.maintain_code = '';
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
    // Serializes a message object of type cell_maintainhistory
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [maintain_name]
    bufferOffset = _serializer.string(obj.maintain_name, buffer, bufferOffset);
    // Serialize message field [maintain_type]
    bufferOffset = _serializer.uint8(obj.maintain_type, buffer, bufferOffset);
    // Serialize message field [maintain_code]
    bufferOffset = _serializer.string(obj.maintain_code, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_maintainhistory
    let len;
    let data = new cell_maintainhistory(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [maintain_name]
    data.maintain_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [maintain_type]
    data.maintain_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maintain_code]
    data.maintain_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.maintain_name.length;
    length += object.maintain_code.length;
    length += object.update_time.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_maintainhistory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bea5986a227efb1d37ca40187bb9a02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string foreign_key
    string unique_code 		        # must-have,UNIQUE INDEX	
    string maintain_name		   
    uint8 maintain_type 		 
    string maintain_code 	
    string update_time			# must-have 		 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_maintainhistory(null);
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

    if (msg.maintain_name !== undefined) {
      resolved.maintain_name = msg.maintain_name;
    }
    else {
      resolved.maintain_name = ''
    }

    if (msg.maintain_type !== undefined) {
      resolved.maintain_type = msg.maintain_type;
    }
    else {
      resolved.maintain_type = 0
    }

    if (msg.maintain_code !== undefined) {
      resolved.maintain_code = msg.maintain_code;
    }
    else {
      resolved.maintain_code = ''
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

module.exports = cell_maintainhistory;
