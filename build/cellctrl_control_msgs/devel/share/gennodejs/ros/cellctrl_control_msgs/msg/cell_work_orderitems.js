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

class cell_work_orderitems {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.detail_name = null;
      this.station_code = null;
      this.order_step = null;
      this.order_status = null;
      this.start_time = null;
      this.end_time = null;
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
      if (initObj.hasOwnProperty('detail_name')) {
        this.detail_name = initObj.detail_name
      }
      else {
        this.detail_name = '';
      }
      if (initObj.hasOwnProperty('station_code')) {
        this.station_code = initObj.station_code
      }
      else {
        this.station_code = '';
      }
      if (initObj.hasOwnProperty('order_step')) {
        this.order_step = initObj.order_step
      }
      else {
        this.order_step = 0;
      }
      if (initObj.hasOwnProperty('order_status')) {
        this.order_status = initObj.order_status
      }
      else {
        this.order_status = 0;
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = '';
      }
      if (initObj.hasOwnProperty('end_time')) {
        this.end_time = initObj.end_time
      }
      else {
        this.end_time = '';
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
    // Serializes a message object of type cell_work_orderitems
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [detail_name]
    bufferOffset = _serializer.string(obj.detail_name, buffer, bufferOffset);
    // Serialize message field [station_code]
    bufferOffset = _serializer.string(obj.station_code, buffer, bufferOffset);
    // Serialize message field [order_step]
    bufferOffset = _serializer.uint8(obj.order_step, buffer, bufferOffset);
    // Serialize message field [order_status]
    bufferOffset = _serializer.uint8(obj.order_status, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.string(obj.start_time, buffer, bufferOffset);
    // Serialize message field [end_time]
    bufferOffset = _serializer.string(obj.end_time, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_work_orderitems
    let len;
    let data = new cell_work_orderitems(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detail_name]
    data.detail_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [station_code]
    data.station_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order_step]
    data.order_step = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [order_status]
    data.order_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_time]
    data.end_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.detail_name.length;
    length += object.station_code.length;
    length += object.start_time.length;
    length += object.end_time.length;
    length += object.update_time.length;
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_work_orderitems';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85fbac6d4d841525bc960da68aac4ed1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string foreign_key
    string unique_code 		        # must-have,UNIQUE INDEX	
    string detail_name
    string station_code		   
    uint8  order_step 		 
    uint8  order_status 		 
    string start_time 	
    string end_time 	 
    string update_time			# must-have 	 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_work_orderitems(null);
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

    if (msg.detail_name !== undefined) {
      resolved.detail_name = msg.detail_name;
    }
    else {
      resolved.detail_name = ''
    }

    if (msg.station_code !== undefined) {
      resolved.station_code = msg.station_code;
    }
    else {
      resolved.station_code = ''
    }

    if (msg.order_step !== undefined) {
      resolved.order_step = msg.order_step;
    }
    else {
      resolved.order_step = 0
    }

    if (msg.order_status !== undefined) {
      resolved.order_status = msg.order_status;
    }
    else {
      resolved.order_status = 0
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = ''
    }

    if (msg.end_time !== undefined) {
      resolved.end_time = msg.end_time;
    }
    else {
      resolved.end_time = ''
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

module.exports = cell_work_orderitems;
