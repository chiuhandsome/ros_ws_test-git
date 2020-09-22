// Auto-generated. Do not edit!

// (in-package mongodb_store_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MoveEntriesFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.completed = null;
    }
    else {
      if (initObj.hasOwnProperty('completed')) {
        this.completed = initObj.completed
      }
      else {
        this.completed = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveEntriesFeedback
    // Serialize message field [completed]
    bufferOffset = _arraySerializer.string(obj.completed, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveEntriesFeedback
    let len;
    let data = new MoveEntriesFeedback(null);
    // Deserialize message field [completed]
    data.completed = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.completed.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mongodb_store_msgs/MoveEntriesFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a62bad29223cd7da9d6f04397aee5b94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # the collections which have been operated on so far
    string[] completed
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveEntriesFeedback(null);
    if (msg.completed !== undefined) {
      resolved.completed = msg.completed;
    }
    else {
      resolved.completed = []
    }

    return resolved;
    }
};

module.exports = MoveEntriesFeedback;