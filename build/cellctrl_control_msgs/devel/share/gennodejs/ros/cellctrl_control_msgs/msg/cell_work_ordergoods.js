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

class cell_work_ordergoods {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.order_goods_name = null;
      this.order_goods_desc = null;
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
      if (initObj.hasOwnProperty('order_goods_name')) {
        this.order_goods_name = initObj.order_goods_name
      }
      else {
        this.order_goods_name = '';
      }
      if (initObj.hasOwnProperty('order_goods_desc')) {
        this.order_goods_desc = initObj.order_goods_desc
      }
      else {
        this.order_goods_desc = '';
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
    // Serializes a message object of type cell_work_ordergoods
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [order_goods_name]
    bufferOffset = _serializer.string(obj.order_goods_name, buffer, bufferOffset);
    // Serialize message field [order_goods_desc]
    bufferOffset = _serializer.string(obj.order_goods_desc, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_work_ordergoods
    let len;
    let data = new cell_work_ordergoods(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_goods_name]
    data.order_goods_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_goods_desc]
    data.order_goods_desc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.order_goods_name.length;
    length += object.order_goods_desc.length;
    length += object.update_time.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_work_ordergoods';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b36d2655024c1019213e7c3b275c1b81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)	
    string foreign_key	
    string unique_code 		        # must-have,UNIQUE INDEX	
    string order_goods_name		   
    string order_goods_desc 
    string update_time			# must-have 	 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_work_ordergoods(null);
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

    if (msg.order_goods_name !== undefined) {
      resolved.order_goods_name = msg.order_goods_name;
    }
    else {
      resolved.order_goods_name = ''
    }

    if (msg.order_goods_desc !== undefined) {
      resolved.order_goods_desc = msg.order_goods_desc;
    }
    else {
      resolved.order_goods_desc = ''
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

module.exports = cell_work_ordergoods;
