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

class power_chargeGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.charge_type = null;
      this.charge_id = null;
    }
    else {
      if (initObj.hasOwnProperty('charge_type')) {
        this.charge_type = initObj.charge_type
      }
      else {
        this.charge_type = 0;
      }
      if (initObj.hasOwnProperty('charge_id')) {
        this.charge_id = initObj.charge_id
      }
      else {
        this.charge_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type power_chargeGoal
    // Serialize message field [charge_type]
    bufferOffset = _serializer.uint8(obj.charge_type, buffer, bufferOffset);
    // Serialize message field [charge_id]
    bufferOffset = _serializer.string(obj.charge_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type power_chargeGoal
    let len;
    let data = new power_chargeGoal(null);
    // Deserialize message field [charge_type]
    data.charge_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [charge_id]
    data.charge_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.charge_id.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scheduling_msgs/power_chargeGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7604456ed04cceb2245c8a19dc8c3af7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the goal
    uint8 CHARGE_IO=1
    uint8 charge_type
    string charge_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new power_chargeGoal(null);
    if (msg.charge_type !== undefined) {
      resolved.charge_type = msg.charge_type;
    }
    else {
      resolved.charge_type = 0
    }

    if (msg.charge_id !== undefined) {
      resolved.charge_id = msg.charge_id;
    }
    else {
      resolved.charge_id = ''
    }

    return resolved;
    }
};

// Constants for message
power_chargeGoal.Constants = {
  CHARGE_IO: 1,
}

module.exports = power_chargeGoal;