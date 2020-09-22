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

class cell_battery_remain {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.remain_name = null;
      this.remain_ser = null;
      this.ctrl_seg_capacity = null;
      this.ctrl_seg_efficiency = null;
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
      if (initObj.hasOwnProperty('remain_name')) {
        this.remain_name = initObj.remain_name
      }
      else {
        this.remain_name = '';
      }
      if (initObj.hasOwnProperty('remain_ser')) {
        this.remain_ser = initObj.remain_ser
      }
      else {
        this.remain_ser = 0;
      }
      if (initObj.hasOwnProperty('ctrl_seg_capacity')) {
        this.ctrl_seg_capacity = initObj.ctrl_seg_capacity
      }
      else {
        this.ctrl_seg_capacity = 0.0;
      }
      if (initObj.hasOwnProperty('ctrl_seg_efficiency')) {
        this.ctrl_seg_efficiency = initObj.ctrl_seg_efficiency
      }
      else {
        this.ctrl_seg_efficiency = 0.0;
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
    // Serializes a message object of type cell_battery_remain
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [remain_name]
    bufferOffset = _serializer.string(obj.remain_name, buffer, bufferOffset);
    // Serialize message field [remain_ser]
    bufferOffset = _serializer.uint8(obj.remain_ser, buffer, bufferOffset);
    // Serialize message field [ctrl_seg_capacity]
    bufferOffset = _serializer.float32(obj.ctrl_seg_capacity, buffer, bufferOffset);
    // Serialize message field [ctrl_seg_efficiency]
    bufferOffset = _serializer.float32(obj.ctrl_seg_efficiency, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_battery_remain
    let len;
    let data = new cell_battery_remain(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remain_name]
    data.remain_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remain_ser]
    data.remain_ser = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ctrl_seg_capacity]
    data.ctrl_seg_capacity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ctrl_seg_efficiency]
    data.ctrl_seg_efficiency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.remain_name.length;
    length += object.update_time.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_battery_remain';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abd07889143305d736d12035e783fbc9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string foreign_key
    string unique_code 		        # must-have,UNIQUE INDEX	
    string remain_name	
    uint8 remain_ser	   
    float32 ctrl_seg_capacity 		 
    float32 ctrl_seg_efficiency 
    string update_time			# must-have 		 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_battery_remain(null);
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

    if (msg.remain_name !== undefined) {
      resolved.remain_name = msg.remain_name;
    }
    else {
      resolved.remain_name = ''
    }

    if (msg.remain_ser !== undefined) {
      resolved.remain_ser = msg.remain_ser;
    }
    else {
      resolved.remain_ser = 0
    }

    if (msg.ctrl_seg_capacity !== undefined) {
      resolved.ctrl_seg_capacity = msg.ctrl_seg_capacity;
    }
    else {
      resolved.ctrl_seg_capacity = 0.0
    }

    if (msg.ctrl_seg_efficiency !== undefined) {
      resolved.ctrl_seg_efficiency = msg.ctrl_seg_efficiency;
    }
    else {
      resolved.ctrl_seg_efficiency = 0.0
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

module.exports = cell_battery_remain;
