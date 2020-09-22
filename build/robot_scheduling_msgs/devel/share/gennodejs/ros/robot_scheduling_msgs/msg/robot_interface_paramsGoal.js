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

class robot_interface_paramsGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.dtat_type = null;
      this.set_data = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('dtat_type')) {
        this.dtat_type = initObj.dtat_type
      }
      else {
        this.dtat_type = 0;
      }
      if (initObj.hasOwnProperty('set_data')) {
        this.set_data = initObj.set_data
      }
      else {
        this.set_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_interface_paramsGoal
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [dtat_type]
    bufferOffset = _serializer.uint8(obj.dtat_type, buffer, bufferOffset);
    // Serialize message field [set_data]
    bufferOffset = _arraySerializer.string(obj.set_data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_interface_paramsGoal
    let len;
    let data = new robot_interface_paramsGoal(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dtat_type]
    data.dtat_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [set_data]
    data.set_data = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.set_data.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scheduling_msgs/robot_interface_paramsGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eeed664b49bae3b13358e0c01a468ef7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the goal
    uint8 GET=1
    uint8 SET=2
    uint8 cmd_type
    uint8 TARGET_POSE=1
    uint8 STATUS_CODE=2
    uint8 FUNCTION_ID=3
    uint8 PARAMETER=4
    uint8 dtat_type
    string[] set_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_interface_paramsGoal(null);
    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.dtat_type !== undefined) {
      resolved.dtat_type = msg.dtat_type;
    }
    else {
      resolved.dtat_type = 0
    }

    if (msg.set_data !== undefined) {
      resolved.set_data = msg.set_data;
    }
    else {
      resolved.set_data = []
    }

    return resolved;
    }
};

// Constants for message
robot_interface_paramsGoal.Constants = {
  GET: 1,
  SET: 2,
  TARGET_POSE: 1,
  STATUS_CODE: 2,
  FUNCTION_ID: 3,
  PARAMETER: 4,
}

module.exports = robot_interface_paramsGoal;