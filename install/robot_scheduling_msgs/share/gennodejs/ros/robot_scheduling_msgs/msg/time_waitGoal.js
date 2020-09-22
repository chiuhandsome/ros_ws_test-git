// Auto-generated. Do not edit!

// (in-package robot_scheduling_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class time_waitGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.cmd_time = null;
      this.time_wait_ac_name = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('cmd_time')) {
        this.cmd_time = initObj.cmd_time
      }
      else {
        this.cmd_time = 0.0;
      }
      if (initObj.hasOwnProperty('time_wait_ac_name')) {
        this.time_wait_ac_name = initObj.time_wait_ac_name
      }
      else {
        this.time_wait_ac_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type time_waitGoal
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [cmd_time]
    bufferOffset = _serializer.float32(obj.cmd_time, buffer, bufferOffset);
    // Serialize message field [time_wait_ac_name]
    bufferOffset = _serializer.string(obj.time_wait_ac_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type time_waitGoal
    let len;
    let data = new time_waitGoal(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_time]
    data.cmd_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_wait_ac_name]
    data.time_wait_ac_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.time_wait_ac_name.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scheduling_msgs/time_waitGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe11ba37038c6ebc8694fd608ddc333f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the goal
    uint8 NORMAL=1
    uint8 PARAMETER=2
    uint8 cmd_type
    float32 cmd_time	
    string time_wait_ac_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new time_waitGoal(null);
    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.cmd_time !== undefined) {
      resolved.cmd_time = msg.cmd_time;
    }
    else {
      resolved.cmd_time = 0.0
    }

    if (msg.time_wait_ac_name !== undefined) {
      resolved.time_wait_ac_name = msg.time_wait_ac_name;
    }
    else {
      resolved.time_wait_ac_name = ''
    }

    return resolved;
    }
};

// Constants for message
time_waitGoal.Constants = {
  NORMAL: 1,
  PARAMETER: 2,
}

module.exports = time_waitGoal;