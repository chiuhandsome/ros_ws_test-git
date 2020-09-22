// Auto-generated. Do not edit!

// (in-package cellctrl_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class cell_agv_motor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.tagname = null;
      this.tag_ser = null;
      this.device_code = null;
      this.device_serialno = null;
      this.put_in_service_date = null;
      this.work_comulative_time = null;
      this.current_status = null;
      this.update_time = null;
    }
    else {
      if (initObj.hasOwnProperty('primary_id')) {
        this.primary_id = initObj.primary_id
      }
      else {
        this.primary_id = '';
      }
      if (initObj.hasOwnProperty('foreign_key')) {
        this.foreign_key = initObj.foreign_key
      }
      else {
        this.foreign_key = '';
      }
      if (initObj.hasOwnProperty('unique_code')) {
        this.unique_code = initObj.unique_code
      }
      else {
        this.unique_code = '';
      }
      if (initObj.hasOwnProperty('tagname')) {
        this.tagname = initObj.tagname
      }
      else {
        this.tagname = '';
      }
      if (initObj.hasOwnProperty('tag_ser')) {
        this.tag_ser = initObj.tag_ser
      }
      else {
        this.tag_ser = 0;
      }
      if (initObj.hasOwnProperty('device_code')) {
        this.device_code = initObj.device_code
      }
      else {
        this.device_code = '';
      }
      if (initObj.hasOwnProperty('device_serialno')) {
        this.device_serialno = initObj.device_serialno
      }
      else {
        this.device_serialno = '';
      }
      if (initObj.hasOwnProperty('put_in_service_date')) {
        this.put_in_service_date = initObj.put_in_service_date
      }
      else {
        this.put_in_service_date = '';
      }
      if (initObj.hasOwnProperty('work_comulative_time')) {
        this.work_comulative_time = initObj.work_comulative_time
      }
      else {
        this.work_comulative_time = 0.0;
      }
      if (initObj.hasOwnProperty('current_status')) {
        this.current_status = initObj.current_status
      }
      else {
        this.current_status = 0;
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
    // Serializes a message object of type cell_agv_motor
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [tagname]
    bufferOffset = _serializer.string(obj.tagname, buffer, bufferOffset);
    // Serialize message field [tag_ser]
    bufferOffset = _serializer.uint8(obj.tag_ser, buffer, bufferOffset);
    // Serialize message field [device_code]
    bufferOffset = _serializer.string(obj.device_code, buffer, bufferOffset);
    // Serialize message field [device_serialno]
    bufferOffset = _serializer.string(obj.device_serialno, buffer, bufferOffset);
    // Serialize message field [put_in_service_date]
    bufferOffset = _serializer.string(obj.put_in_service_date, buffer, bufferOffset);
    // Serialize message field [work_comulative_time]
    bufferOffset = _serializer.float32(obj.work_comulative_time, buffer, bufferOffset);
    // Serialize message field [current_status]
    bufferOffset = _serializer.uint8(obj.current_status, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_agv_motor
    let len;
    let data = new cell_agv_motor(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tagname]
    data.tagname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tag_ser]
    data.tag_ser = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [device_code]
    data.device_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_serialno]
    data.device_serialno = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [put_in_service_date]
    data.put_in_service_date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [work_comulative_time]
    data.work_comulative_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_status]
    data.current_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.tagname.length;
    length += object.device_code.length;
    length += object.device_serialno.length;
    length += object.put_in_service_date.length;
    length += object.update_time.length;
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_agv_motor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cc23869890ef4a0917ab02d7306f61e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)
    string foreign_key
    string unique_code 		        # must-have,UNIQUE INDEX	
    string tagname		   
    uint8 tag_ser 
    string device_code	
    string device_serialno	 
    string put_in_service_date 		 
    float32  work_comulative_time 	
    uint8  current_status 
    string update_time			# must-have 	 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_agv_motor(null);
    if (msg.primary_id !== undefined) {
      resolved.primary_id = msg.primary_id;
    }
    else {
      resolved.primary_id = ''
    }

    if (msg.foreign_key !== undefined) {
      resolved.foreign_key = msg.foreign_key;
    }
    else {
      resolved.foreign_key = ''
    }

    if (msg.unique_code !== undefined) {
      resolved.unique_code = msg.unique_code;
    }
    else {
      resolved.unique_code = ''
    }

    if (msg.tagname !== undefined) {
      resolved.tagname = msg.tagname;
    }
    else {
      resolved.tagname = ''
    }

    if (msg.tag_ser !== undefined) {
      resolved.tag_ser = msg.tag_ser;
    }
    else {
      resolved.tag_ser = 0
    }

    if (msg.device_code !== undefined) {
      resolved.device_code = msg.device_code;
    }
    else {
      resolved.device_code = ''
    }

    if (msg.device_serialno !== undefined) {
      resolved.device_serialno = msg.device_serialno;
    }
    else {
      resolved.device_serialno = ''
    }

    if (msg.put_in_service_date !== undefined) {
      resolved.put_in_service_date = msg.put_in_service_date;
    }
    else {
      resolved.put_in_service_date = ''
    }

    if (msg.work_comulative_time !== undefined) {
      resolved.work_comulative_time = msg.work_comulative_time;
    }
    else {
      resolved.work_comulative_time = 0.0
    }

    if (msg.current_status !== undefined) {
      resolved.current_status = msg.current_status;
    }
    else {
      resolved.current_status = 0
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

module.exports = cell_agv_motor;
