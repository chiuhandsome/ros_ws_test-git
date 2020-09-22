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

class cell_base_operate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.base_name = null;
      this.base_desc_TC = null;
      this.base_desc_SC = null;
      this.base_desc_E = null;
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
      if (initObj.hasOwnProperty('base_desc_TC')) {
        this.base_desc_TC = initObj.base_desc_TC
      }
      else {
        this.base_desc_TC = '';
      }
      if (initObj.hasOwnProperty('base_desc_SC')) {
        this.base_desc_SC = initObj.base_desc_SC
      }
      else {
        this.base_desc_SC = '';
      }
      if (initObj.hasOwnProperty('base_desc_E')) {
        this.base_desc_E = initObj.base_desc_E
      }
      else {
        this.base_desc_E = '';
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
    // Serializes a message object of type cell_base_operate
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [base_name]
    bufferOffset = _serializer.string(obj.base_name, buffer, bufferOffset);
    // Serialize message field [base_desc_TC]
    bufferOffset = _serializer.string(obj.base_desc_TC, buffer, bufferOffset);
    // Serialize message field [base_desc_SC]
    bufferOffset = _serializer.string(obj.base_desc_SC, buffer, bufferOffset);
    // Serialize message field [base_desc_E]
    bufferOffset = _serializer.string(obj.base_desc_E, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_base_operate
    let len;
    let data = new cell_base_operate(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_name]
    data.base_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_desc_TC]
    data.base_desc_TC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_desc_SC]
    data.base_desc_SC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_desc_E]
    data.base_desc_E = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.unique_code.length;
    length += object.base_name.length;
    length += object.base_desc_TC.length;
    length += object.base_desc_SC.length;
    length += object.base_desc_E.length;
    length += object.update_time.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_base_operate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cae712ba514c2339344eb5e99f552cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX	
    string base_name		   
    string base_desc_TC 		 
    string base_desc_SC 		 
    string base_desc_E 		 
    string update_time			# must-have 	 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_base_operate(null);
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

    if (msg.base_desc_TC !== undefined) {
      resolved.base_desc_TC = msg.base_desc_TC;
    }
    else {
      resolved.base_desc_TC = ''
    }

    if (msg.base_desc_SC !== undefined) {
      resolved.base_desc_SC = msg.base_desc_SC;
    }
    else {
      resolved.base_desc_SC = ''
    }

    if (msg.base_desc_E !== undefined) {
      resolved.base_desc_E = msg.base_desc_E;
    }
    else {
      resolved.base_desc_E = ''
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

module.exports = cell_base_operate;
