// Auto-generated. Do not edit!

// (in-package botcmd_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bot_ultrasonic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.quantity = null;
      this.ranges = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('quantity')) {
        this.quantity = initObj.quantity
      }
      else {
        this.quantity = 0;
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_ultrasonic
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [quantity]
    bufferOffset = _serializer.int8(obj.quantity, buffer, bufferOffset);
    // Serialize message field [ranges]
    bufferOffset = _serializer.string(obj.ranges, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_ultrasonic
    let len;
    let data = new bot_ultrasonic(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [quantity]
    data.quantity = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ranges]
    data.ranges = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ranges.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'botcmd_msgs/bot_ultrasonic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb86edbddd862c6792e2bca43262c9f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    int8 quantity
    string ranges	#float32[] ranges	# 0:disable, -1:error , >0 :normal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_ultrasonic(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.quantity !== undefined) {
      resolved.quantity = msg.quantity;
    }
    else {
      resolved.quantity = 0
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = ''
    }

    return resolved;
    }
};

module.exports = bot_ultrasonic;
