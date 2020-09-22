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

class cell_battery_caculate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.segment_name = null;
      this.segment_ser = null;
      this.ctrl_seg_capacity = null;
      this.ctrl_seg_distance = null;
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
      if (initObj.hasOwnProperty('segment_name')) {
        this.segment_name = initObj.segment_name
      }
      else {
        this.segment_name = '';
      }
      if (initObj.hasOwnProperty('segment_ser')) {
        this.segment_ser = initObj.segment_ser
      }
      else {
        this.segment_ser = 0;
      }
      if (initObj.hasOwnProperty('ctrl_seg_capacity')) {
        this.ctrl_seg_capacity = initObj.ctrl_seg_capacity
      }
      else {
        this.ctrl_seg_capacity = 0.0;
      }
      if (initObj.hasOwnProperty('ctrl_seg_distance')) {
        this.ctrl_seg_distance = initObj.ctrl_seg_distance
      }
      else {
        this.ctrl_seg_distance = 0.0;
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
    // Serializes a message object of type cell_battery_caculate
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [segment_name]
    bufferOffset = _serializer.string(obj.segment_name, buffer, bufferOffset);
    // Serialize message field [segment_ser]
    bufferOffset = _serializer.uint8(obj.segment_ser, buffer, bufferOffset);
    // Serialize message field [ctrl_seg_capacity]
    bufferOffset = _serializer.float32(obj.ctrl_seg_capacity, buffer, bufferOffset);
    // Serialize message field [ctrl_seg_distance]
    bufferOffset = _serializer.float32(obj.ctrl_seg_distance, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_battery_caculate
    let len;
    let data = new cell_battery_caculate(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [segment_name]
    data.segment_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [segment_ser]
    data.segment_ser = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ctrl_seg_capacity]
    data.ctrl_seg_capacity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ctrl_seg_distance]
    data.ctrl_seg_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.segment_name.length;
    length += object.update_time.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_battery_caculate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1951b95a49378539c2b7dc33b9be78f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string foreign_key
    string unique_code 		        # must-have,UNIQUE INDEX	
    string segment_name	
    uint8 segment_ser	   
    float32 ctrl_seg_capacity 		 
    float32 ctrl_seg_distance 
    string update_time			# must-have 		 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_battery_caculate(null);
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

    if (msg.segment_name !== undefined) {
      resolved.segment_name = msg.segment_name;
    }
    else {
      resolved.segment_name = ''
    }

    if (msg.segment_ser !== undefined) {
      resolved.segment_ser = msg.segment_ser;
    }
    else {
      resolved.segment_ser = 0
    }

    if (msg.ctrl_seg_capacity !== undefined) {
      resolved.ctrl_seg_capacity = msg.ctrl_seg_capacity;
    }
    else {
      resolved.ctrl_seg_capacity = 0.0
    }

    if (msg.ctrl_seg_distance !== undefined) {
      resolved.ctrl_seg_distance = msg.ctrl_seg_distance;
    }
    else {
      resolved.ctrl_seg_distance = 0.0
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

module.exports = cell_battery_caculate;
