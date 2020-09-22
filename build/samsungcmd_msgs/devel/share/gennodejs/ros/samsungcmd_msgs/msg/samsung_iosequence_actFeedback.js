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

class samsung_iosequence_actFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.io_seq_id = null;
      this.io_seq_desc = null;
    }
    else {
      if (initObj.hasOwnProperty('io_seq_id')) {
        this.io_seq_id = initObj.io_seq_id
      }
      else {
        this.io_seq_id = 0;
      }
      if (initObj.hasOwnProperty('io_seq_desc')) {
        this.io_seq_desc = initObj.io_seq_desc
      }
      else {
        this.io_seq_desc = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type samsung_iosequence_actFeedback
    // Serialize message field [io_seq_id]
    bufferOffset = _serializer.int8(obj.io_seq_id, buffer, bufferOffset);
    // Serialize message field [io_seq_desc]
    bufferOffset = _serializer.string(obj.io_seq_desc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type samsung_iosequence_actFeedback
    let len;
    let data = new samsung_iosequence_actFeedback(null);
    // Deserialize message field [io_seq_id]
    data.io_seq_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [io_seq_desc]
    data.io_seq_desc = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.io_seq_desc.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'samsungcmd_msgs/samsung_iosequence_actFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5dafefe2131129cfe8b0f8c08bebafd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Feedback
    int8    io_seq_id
    string  io_seq_desc
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new samsung_iosequence_actFeedback(null);
    if (msg.io_seq_id !== undefined) {
      resolved.io_seq_id = msg.io_seq_id;
    }
    else {
      resolved.io_seq_id = 0
    }

    if (msg.io_seq_desc !== undefined) {
      resolved.io_seq_desc = msg.io_seq_desc;
    }
    else {
      resolved.io_seq_desc = ''
    }

    return resolved;
    }
};

module.exports = samsung_iosequence_actFeedback;