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

class PidCtrlParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.base_name = null;
      this.target = null;
      this.tolerance = null;
      this.min_bound = null;
      this.max_bound = null;
      this.d_KP = null;
      this.d_KI = null;
      this.d_KD = null;
      this.b_compensation = null;
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
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = 0.0;
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = 0.0;
      }
      if (initObj.hasOwnProperty('min_bound')) {
        this.min_bound = initObj.min_bound
      }
      else {
        this.min_bound = 0.0;
      }
      if (initObj.hasOwnProperty('max_bound')) {
        this.max_bound = initObj.max_bound
      }
      else {
        this.max_bound = 0.0;
      }
      if (initObj.hasOwnProperty('d_KP')) {
        this.d_KP = initObj.d_KP
      }
      else {
        this.d_KP = 0.0;
      }
      if (initObj.hasOwnProperty('d_KI')) {
        this.d_KI = initObj.d_KI
      }
      else {
        this.d_KI = 0.0;
      }
      if (initObj.hasOwnProperty('d_KD')) {
        this.d_KD = initObj.d_KD
      }
      else {
        this.d_KD = 0.0;
      }
      if (initObj.hasOwnProperty('b_compensation')) {
        this.b_compensation = initObj.b_compensation
      }
      else {
        this.b_compensation = false;
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
    // Serializes a message object of type PidCtrlParameters
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [base_name]
    bufferOffset = _serializer.string(obj.base_name, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = _serializer.float32(obj.target, buffer, bufferOffset);
    // Serialize message field [tolerance]
    bufferOffset = _serializer.float32(obj.tolerance, buffer, bufferOffset);
    // Serialize message field [min_bound]
    bufferOffset = _serializer.float32(obj.min_bound, buffer, bufferOffset);
    // Serialize message field [max_bound]
    bufferOffset = _serializer.float32(obj.max_bound, buffer, bufferOffset);
    // Serialize message field [d_KP]
    bufferOffset = _serializer.float64(obj.d_KP, buffer, bufferOffset);
    // Serialize message field [d_KI]
    bufferOffset = _serializer.float64(obj.d_KI, buffer, bufferOffset);
    // Serialize message field [d_KD]
    bufferOffset = _serializer.float64(obj.d_KD, buffer, bufferOffset);
    // Serialize message field [b_compensation]
    bufferOffset = _serializer.bool(obj.b_compensation, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidCtrlParameters
    let len;
    let data = new PidCtrlParameters(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_name]
    data.base_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tolerance]
    data.tolerance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_bound]
    data.min_bound = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_bound]
    data.max_bound = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d_KP]
    data.d_KP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_KI]
    data.d_KI = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_KD]
    data.d_KD = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [b_compensation]
    data.b_compensation = _deserializer.bool(buffer, bufferOffset);
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
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_db_manager_msgs/PidCtrlParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09b2214d7f8d0d3330776009fda8ce8f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
    string base_name
    float32 target		   
    float32 tolerance	
    float32 min_bound	
    float32 max_bound
    float64 d_KP	
    float64 d_KI	
    float64 d_KD
    bool b_compensation
    string update_time			# must-have 	 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PidCtrlParameters(null);
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

    if (msg.target !== undefined) {
      resolved.target = msg.target;
    }
    else {
      resolved.target = 0.0
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = 0.0
    }

    if (msg.min_bound !== undefined) {
      resolved.min_bound = msg.min_bound;
    }
    else {
      resolved.min_bound = 0.0
    }

    if (msg.max_bound !== undefined) {
      resolved.max_bound = msg.max_bound;
    }
    else {
      resolved.max_bound = 0.0
    }

    if (msg.d_KP !== undefined) {
      resolved.d_KP = msg.d_KP;
    }
    else {
      resolved.d_KP = 0.0
    }

    if (msg.d_KI !== undefined) {
      resolved.d_KI = msg.d_KI;
    }
    else {
      resolved.d_KI = 0.0
    }

    if (msg.d_KD !== undefined) {
      resolved.d_KD = msg.d_KD;
    }
    else {
      resolved.d_KD = 0.0
    }

    if (msg.b_compensation !== undefined) {
      resolved.b_compensation = msg.b_compensation;
    }
    else {
      resolved.b_compensation = false
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

module.exports = PidCtrlParameters;
