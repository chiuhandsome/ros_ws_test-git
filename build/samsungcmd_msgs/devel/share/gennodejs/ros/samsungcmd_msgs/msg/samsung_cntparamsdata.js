// Auto-generated. Do not edit!

// (in-package samsungcmd_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class samsung_cntparamsdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Mag_center_analog = null;
      this.Mag_center_digital = null;
      this.car_roller_status = null;
      this.car_velrpm_left = null;
      this.car_velrpm_right = null;
      this.car_control_code = null;
      this.car_Status_code = null;
      this.car_Command_code = null;
      this.car_Error_code = null;
      this.car_SetCommand = null;
      this.roller_SetCommand = null;
    }
    else {
      if (initObj.hasOwnProperty('Mag_center_analog')) {
        this.Mag_center_analog = initObj.Mag_center_analog
      }
      else {
        this.Mag_center_analog = 0.0;
      }
      if (initObj.hasOwnProperty('Mag_center_digital')) {
        this.Mag_center_digital = initObj.Mag_center_digital
      }
      else {
        this.Mag_center_digital = 0;
      }
      if (initObj.hasOwnProperty('car_roller_status')) {
        this.car_roller_status = initObj.car_roller_status
      }
      else {
        this.car_roller_status = 0;
      }
      if (initObj.hasOwnProperty('car_velrpm_left')) {
        this.car_velrpm_left = initObj.car_velrpm_left
      }
      else {
        this.car_velrpm_left = 0.0;
      }
      if (initObj.hasOwnProperty('car_velrpm_right')) {
        this.car_velrpm_right = initObj.car_velrpm_right
      }
      else {
        this.car_velrpm_right = 0.0;
      }
      if (initObj.hasOwnProperty('car_control_code')) {
        this.car_control_code = initObj.car_control_code
      }
      else {
        this.car_control_code = 0;
      }
      if (initObj.hasOwnProperty('car_Status_code')) {
        this.car_Status_code = initObj.car_Status_code
      }
      else {
        this.car_Status_code = 0;
      }
      if (initObj.hasOwnProperty('car_Command_code')) {
        this.car_Command_code = initObj.car_Command_code
      }
      else {
        this.car_Command_code = 0;
      }
      if (initObj.hasOwnProperty('car_Error_code')) {
        this.car_Error_code = initObj.car_Error_code
      }
      else {
        this.car_Error_code = 0;
      }
      if (initObj.hasOwnProperty('car_SetCommand')) {
        this.car_SetCommand = initObj.car_SetCommand
      }
      else {
        this.car_SetCommand = 0;
      }
      if (initObj.hasOwnProperty('roller_SetCommand')) {
        this.roller_SetCommand = initObj.roller_SetCommand
      }
      else {
        this.roller_SetCommand = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type samsung_cntparamsdata
    // Serialize message field [Mag_center_analog]
    bufferOffset = _serializer.float32(obj.Mag_center_analog, buffer, bufferOffset);
    // Serialize message field [Mag_center_digital]
    bufferOffset = _serializer.int32(obj.Mag_center_digital, buffer, bufferOffset);
    // Serialize message field [car_roller_status]
    bufferOffset = _serializer.int8(obj.car_roller_status, buffer, bufferOffset);
    // Serialize message field [car_velrpm_left]
    bufferOffset = _serializer.float32(obj.car_velrpm_left, buffer, bufferOffset);
    // Serialize message field [car_velrpm_right]
    bufferOffset = _serializer.float32(obj.car_velrpm_right, buffer, bufferOffset);
    // Serialize message field [car_control_code]
    bufferOffset = _serializer.int8(obj.car_control_code, buffer, bufferOffset);
    // Serialize message field [car_Status_code]
    bufferOffset = _serializer.int8(obj.car_Status_code, buffer, bufferOffset);
    // Serialize message field [car_Command_code]
    bufferOffset = _serializer.int8(obj.car_Command_code, buffer, bufferOffset);
    // Serialize message field [car_Error_code]
    bufferOffset = _serializer.int16(obj.car_Error_code, buffer, bufferOffset);
    // Serialize message field [car_SetCommand]
    bufferOffset = _serializer.int32(obj.car_SetCommand, buffer, bufferOffset);
    // Serialize message field [roller_SetCommand]
    bufferOffset = _serializer.int32(obj.roller_SetCommand, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type samsung_cntparamsdata
    let len;
    let data = new samsung_cntparamsdata(null);
    // Deserialize message field [Mag_center_analog]
    data.Mag_center_analog = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Mag_center_digital]
    data.Mag_center_digital = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [car_roller_status]
    data.car_roller_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [car_velrpm_left]
    data.car_velrpm_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [car_velrpm_right]
    data.car_velrpm_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [car_control_code]
    data.car_control_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [car_Status_code]
    data.car_Status_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [car_Command_code]
    data.car_Command_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [car_Error_code]
    data.car_Error_code = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [car_SetCommand]
    data.car_SetCommand = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [roller_SetCommand]
    data.roller_SetCommand = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'samsungcmd_msgs/samsung_cntparamsdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '028fc3da18d39088df04b2e5220a67fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Mag_center_analog
    int32 	Mag_center_digital
    int8 	car_roller_status 
    float32 car_velrpm_left
    float32 car_velrpm_right
    int8 	car_control_code 
    int8 	car_Status_code 
    int8 	car_Command_code
    int16 	car_Error_code 
    int32 	car_SetCommand 
    int32 	roller_SetCommand
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new samsung_cntparamsdata(null);
    if (msg.Mag_center_analog !== undefined) {
      resolved.Mag_center_analog = msg.Mag_center_analog;
    }
    else {
      resolved.Mag_center_analog = 0.0
    }

    if (msg.Mag_center_digital !== undefined) {
      resolved.Mag_center_digital = msg.Mag_center_digital;
    }
    else {
      resolved.Mag_center_digital = 0
    }

    if (msg.car_roller_status !== undefined) {
      resolved.car_roller_status = msg.car_roller_status;
    }
    else {
      resolved.car_roller_status = 0
    }

    if (msg.car_velrpm_left !== undefined) {
      resolved.car_velrpm_left = msg.car_velrpm_left;
    }
    else {
      resolved.car_velrpm_left = 0.0
    }

    if (msg.car_velrpm_right !== undefined) {
      resolved.car_velrpm_right = msg.car_velrpm_right;
    }
    else {
      resolved.car_velrpm_right = 0.0
    }

    if (msg.car_control_code !== undefined) {
      resolved.car_control_code = msg.car_control_code;
    }
    else {
      resolved.car_control_code = 0
    }

    if (msg.car_Status_code !== undefined) {
      resolved.car_Status_code = msg.car_Status_code;
    }
    else {
      resolved.car_Status_code = 0
    }

    if (msg.car_Command_code !== undefined) {
      resolved.car_Command_code = msg.car_Command_code;
    }
    else {
      resolved.car_Command_code = 0
    }

    if (msg.car_Error_code !== undefined) {
      resolved.car_Error_code = msg.car_Error_code;
    }
    else {
      resolved.car_Error_code = 0
    }

    if (msg.car_SetCommand !== undefined) {
      resolved.car_SetCommand = msg.car_SetCommand;
    }
    else {
      resolved.car_SetCommand = 0
    }

    if (msg.roller_SetCommand !== undefined) {
      resolved.roller_SetCommand = msg.roller_SetCommand;
    }
    else {
      resolved.roller_SetCommand = 0
    }

    return resolved;
    }
};

module.exports = samsung_cntparamsdata;
