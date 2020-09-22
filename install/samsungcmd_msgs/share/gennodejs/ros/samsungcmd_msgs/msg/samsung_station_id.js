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

class samsung_station_id {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_id = null;
      this.station_id = null;
      this.station_type = null;
      this.delay_time = null;
      this.timeout_value = null;
      this.start_turn_right = null;
      this.end_turn_right = null;
      this.start_straight = null;
      this.end_straight = null;
      this.start_turn_left = null;
      this.end_turn_left = null;
      this.update_time = null;
    }
    else {
      if (initObj.hasOwnProperty('key_id')) {
        this.key_id = initObj.key_id
      }
      else {
        this.key_id = '';
      }
      if (initObj.hasOwnProperty('station_id')) {
        this.station_id = initObj.station_id
      }
      else {
        this.station_id = 0;
      }
      if (initObj.hasOwnProperty('station_type')) {
        this.station_type = initObj.station_type
      }
      else {
        this.station_type = 0;
      }
      if (initObj.hasOwnProperty('delay_time')) {
        this.delay_time = initObj.delay_time
      }
      else {
        this.delay_time = 0;
      }
      if (initObj.hasOwnProperty('timeout_value')) {
        this.timeout_value = initObj.timeout_value
      }
      else {
        this.timeout_value = 0;
      }
      if (initObj.hasOwnProperty('start_turn_right')) {
        this.start_turn_right = initObj.start_turn_right
      }
      else {
        this.start_turn_right = 0;
      }
      if (initObj.hasOwnProperty('end_turn_right')) {
        this.end_turn_right = initObj.end_turn_right
      }
      else {
        this.end_turn_right = 0;
      }
      if (initObj.hasOwnProperty('start_straight')) {
        this.start_straight = initObj.start_straight
      }
      else {
        this.start_straight = 0;
      }
      if (initObj.hasOwnProperty('end_straight')) {
        this.end_straight = initObj.end_straight
      }
      else {
        this.end_straight = 0;
      }
      if (initObj.hasOwnProperty('start_turn_left')) {
        this.start_turn_left = initObj.start_turn_left
      }
      else {
        this.start_turn_left = 0;
      }
      if (initObj.hasOwnProperty('end_turn_left')) {
        this.end_turn_left = initObj.end_turn_left
      }
      else {
        this.end_turn_left = 0;
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
    // Serializes a message object of type samsung_station_id
    // Serialize message field [key_id]
    bufferOffset = _serializer.string(obj.key_id, buffer, bufferOffset);
    // Serialize message field [station_id]
    bufferOffset = _serializer.uint16(obj.station_id, buffer, bufferOffset);
    // Serialize message field [station_type]
    bufferOffset = _serializer.uint8(obj.station_type, buffer, bufferOffset);
    // Serialize message field [delay_time]
    bufferOffset = _serializer.uint16(obj.delay_time, buffer, bufferOffset);
    // Serialize message field [timeout_value]
    bufferOffset = _serializer.uint16(obj.timeout_value, buffer, bufferOffset);
    // Serialize message field [start_turn_right]
    bufferOffset = _serializer.uint16(obj.start_turn_right, buffer, bufferOffset);
    // Serialize message field [end_turn_right]
    bufferOffset = _serializer.uint16(obj.end_turn_right, buffer, bufferOffset);
    // Serialize message field [start_straight]
    bufferOffset = _serializer.uint16(obj.start_straight, buffer, bufferOffset);
    // Serialize message field [end_straight]
    bufferOffset = _serializer.uint16(obj.end_straight, buffer, bufferOffset);
    // Serialize message field [start_turn_left]
    bufferOffset = _serializer.uint16(obj.start_turn_left, buffer, bufferOffset);
    // Serialize message field [end_turn_left]
    bufferOffset = _serializer.uint16(obj.end_turn_left, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type samsung_station_id
    let len;
    let data = new samsung_station_id(null);
    // Deserialize message field [key_id]
    data.key_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [station_id]
    data.station_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [station_type]
    data.station_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [delay_time]
    data.delay_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [timeout_value]
    data.timeout_value = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_turn_right]
    data.start_turn_right = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [end_turn_right]
    data.end_turn_right = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_straight]
    data.start_straight = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [end_straight]
    data.end_straight = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_turn_left]
    data.start_turn_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [end_turn_left]
    data.end_turn_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.key_id.length;
    length += object.update_time.length;
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'samsungcmd_msgs/samsung_station_id';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f001fc825a44832e3c37deefba7596b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string 	key_id
    uint16  station_id
    uint8 	station_type		# 0: sAnti-collision/1:direction-id
    uint16 	delay_time		    # 0: - /1:keep time for straight-run
    uint16 	timeout_value  		# 0: no respone for sAnti-collision/ 1:check out codition of turn	
    uint16 	start_turn_right 	# 0: - /1:range start for turn-right	
    uint16 	end_turn_right 		# 0: - /1:range end for turn-right
    uint16 	start_straight 		# 0: - /1:range start for straight	
    uint16 	end_straight 		# 0: - /1:range end for straight
    uint16 	start_turn_left 	# 0: - /1:range start for turn-left	
    uint16 	end_turn_left 		# 0: - /1:range end for turn-left
    string 	update_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new samsung_station_id(null);
    if (msg.key_id !== undefined) {
      resolved.key_id = msg.key_id;
    }
    else {
      resolved.key_id = ''
    }

    if (msg.station_id !== undefined) {
      resolved.station_id = msg.station_id;
    }
    else {
      resolved.station_id = 0
    }

    if (msg.station_type !== undefined) {
      resolved.station_type = msg.station_type;
    }
    else {
      resolved.station_type = 0
    }

    if (msg.delay_time !== undefined) {
      resolved.delay_time = msg.delay_time;
    }
    else {
      resolved.delay_time = 0
    }

    if (msg.timeout_value !== undefined) {
      resolved.timeout_value = msg.timeout_value;
    }
    else {
      resolved.timeout_value = 0
    }

    if (msg.start_turn_right !== undefined) {
      resolved.start_turn_right = msg.start_turn_right;
    }
    else {
      resolved.start_turn_right = 0
    }

    if (msg.end_turn_right !== undefined) {
      resolved.end_turn_right = msg.end_turn_right;
    }
    else {
      resolved.end_turn_right = 0
    }

    if (msg.start_straight !== undefined) {
      resolved.start_straight = msg.start_straight;
    }
    else {
      resolved.start_straight = 0
    }

    if (msg.end_straight !== undefined) {
      resolved.end_straight = msg.end_straight;
    }
    else {
      resolved.end_straight = 0
    }

    if (msg.start_turn_left !== undefined) {
      resolved.start_turn_left = msg.start_turn_left;
    }
    else {
      resolved.start_turn_left = 0
    }

    if (msg.end_turn_left !== undefined) {
      resolved.end_turn_left = msg.end_turn_left;
    }
    else {
      resolved.end_turn_left = 0
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

module.exports = samsung_station_id;
