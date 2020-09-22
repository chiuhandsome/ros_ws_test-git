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

class CheckParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.base_name = null;
      this.out_of_times = null;
      this.timeout = null;
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
      if (initObj.hasOwnProperty('out_of_times')) {
        this.out_of_times = initObj.out_of_times
      }
      else {
        this.out_of_times = 0;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
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
    // Serializes a message object of type CheckParameters
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [base_name]
    bufferOffset = _serializer.string(obj.base_name, buffer, bufferOffset);
    // Serialize message field [out_of_times]
    bufferOffset = _serializer.uint8(obj.out_of_times, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float32(obj.timeout, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckParameters
    let len;
    let data = new CheckParameters(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_name]
    data.base_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [out_of_times]
    data.out_of_times = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.unique_code.length;
    length += object.base_name.length;
    length += object.update_time.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_db_manager_msgs/CheckParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee0ef2f32ee4790a4809922f38c58783';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
    string base_name
    uint8 out_of_times	
    float32 timeout	
    string update_time			# must-have 	  	
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckParameters(null);
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

    if (msg.out_of_times !== undefined) {
      resolved.out_of_times = msg.out_of_times;
    }
    else {
      resolved.out_of_times = 0
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
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

module.exports = CheckParameters;
