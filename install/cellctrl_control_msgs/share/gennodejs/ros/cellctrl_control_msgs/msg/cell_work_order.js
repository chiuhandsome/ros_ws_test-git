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

class cell_work_order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.order_name = null;
      this.order_desc = null;
      this.order_timestamp = null;
      this.order_steps = null;
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
      if (initObj.hasOwnProperty('order_name')) {
        this.order_name = initObj.order_name
      }
      else {
        this.order_name = '';
      }
      if (initObj.hasOwnProperty('order_desc')) {
        this.order_desc = initObj.order_desc
      }
      else {
        this.order_desc = '';
      }
      if (initObj.hasOwnProperty('order_timestamp')) {
        this.order_timestamp = initObj.order_timestamp
      }
      else {
        this.order_timestamp = '';
      }
      if (initObj.hasOwnProperty('order_steps')) {
        this.order_steps = initObj.order_steps
      }
      else {
        this.order_steps = 0;
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
    // Serializes a message object of type cell_work_order
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [order_name]
    bufferOffset = _serializer.string(obj.order_name, buffer, bufferOffset);
    // Serialize message field [order_desc]
    bufferOffset = _serializer.string(obj.order_desc, buffer, bufferOffset);
    // Serialize message field [order_timestamp]
    bufferOffset = _serializer.string(obj.order_timestamp, buffer, bufferOffset);
    // Serialize message field [order_steps]
    bufferOffset = _serializer.uint8(obj.order_steps, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_work_order
    let len;
    let data = new cell_work_order(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_name]
    data.order_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_desc]
    data.order_desc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_timestamp]
    data.order_timestamp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_steps]
    data.order_steps = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.unique_code.length;
    length += object.order_name.length;
    length += object.order_desc.length;
    length += object.order_timestamp.length;
    length += object.update_time.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_work_order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e15f172cc427ffd50071829ee7dd15d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX	
    string order_name		   
    string order_desc 		 
    string order_timestamp 		 
    uint8  order_steps 		 
    string update_time			# must-have 	 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_work_order(null);
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

    if (msg.order_name !== undefined) {
      resolved.order_name = msg.order_name;
    }
    else {
      resolved.order_name = ''
    }

    if (msg.order_desc !== undefined) {
      resolved.order_desc = msg.order_desc;
    }
    else {
      resolved.order_desc = ''
    }

    if (msg.order_timestamp !== undefined) {
      resolved.order_timestamp = msg.order_timestamp;
    }
    else {
      resolved.order_timestamp = ''
    }

    if (msg.order_steps !== undefined) {
      resolved.order_steps = msg.order_steps;
    }
    else {
      resolved.order_steps = 0
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

module.exports = cell_work_order;
