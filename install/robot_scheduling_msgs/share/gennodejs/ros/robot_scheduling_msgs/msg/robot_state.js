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

class robot_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.shape = null;
      this.shape_variables = null;
      this.mode = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = 0;
      }
      if (initObj.hasOwnProperty('shape_variables')) {
        this.shape_variables = initObj.shape_variables
      }
      else {
        this.shape_variables = [];
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_state
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = _serializer.int32(obj.shape, buffer, bufferOffset);
    // Serialize message field [shape_variables]
    bufferOffset = _arraySerializer.float32(obj.shape_variables, buffer, bufferOffset, null);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_state
    let len;
    let data = new robot_state(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shape_variables]
    data.shape_variables = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_name.length;
    length += 4 * object.shape_variables.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scheduling_msgs/robot_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e76bc04491a1baa1d7d27f2cdd4d8c03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_name                        # the name of the robot (used in preconditions and topics)
    int32 shape                              # the shape of the robots (see enums)
    float32[] shape_variables                # shape variables to define width height, ...
    #RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
    int32   mode                             # the mode of operation
    int32   status                           # the status of the robot
    #int32   good_id                          # the good id attached to the robot
    #int32   order_id                         # the order id scheduled to this robot (-1: none)
    #int32   order_status                     # the status of the assigned order
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_state(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = 0
    }

    if (msg.shape_variables !== undefined) {
      resolved.shape_variables = msg.shape_variables;
    }
    else {
      resolved.shape_variables = []
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = robot_state;
