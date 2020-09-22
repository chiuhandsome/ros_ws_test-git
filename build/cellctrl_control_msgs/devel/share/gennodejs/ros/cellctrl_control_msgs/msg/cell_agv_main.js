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

class cell_agv_main {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.agv_standtype = null;
      this.agv_model_no = null;
      this.agv_name = null;
      this.agv_shape = null;
      this.agv_shape_para0 = null;
      this.agv_shape_para1 = null;
      this.agv_shape_para2 = null;
      this.agv_candidate = null;
      this.agv_transfer_type = null;
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
      if (initObj.hasOwnProperty('unique_code')) {
        this.unique_code = initObj.unique_code
      }
      else {
        this.unique_code = '';
      }
      if (initObj.hasOwnProperty('agv_standtype')) {
        this.agv_standtype = initObj.agv_standtype
      }
      else {
        this.agv_standtype = '';
      }
      if (initObj.hasOwnProperty('agv_model_no')) {
        this.agv_model_no = initObj.agv_model_no
      }
      else {
        this.agv_model_no = '';
      }
      if (initObj.hasOwnProperty('agv_name')) {
        this.agv_name = initObj.agv_name
      }
      else {
        this.agv_name = '';
      }
      if (initObj.hasOwnProperty('agv_shape')) {
        this.agv_shape = initObj.agv_shape
      }
      else {
        this.agv_shape = 0;
      }
      if (initObj.hasOwnProperty('agv_shape_para0')) {
        this.agv_shape_para0 = initObj.agv_shape_para0
      }
      else {
        this.agv_shape_para0 = 0.0;
      }
      if (initObj.hasOwnProperty('agv_shape_para1')) {
        this.agv_shape_para1 = initObj.agv_shape_para1
      }
      else {
        this.agv_shape_para1 = 0.0;
      }
      if (initObj.hasOwnProperty('agv_shape_para2')) {
        this.agv_shape_para2 = initObj.agv_shape_para2
      }
      else {
        this.agv_shape_para2 = 0.0;
      }
      if (initObj.hasOwnProperty('agv_candidate')) {
        this.agv_candidate = initObj.agv_candidate
      }
      else {
        this.agv_candidate = 0;
      }
      if (initObj.hasOwnProperty('agv_transfer_type')) {
        this.agv_transfer_type = initObj.agv_transfer_type
      }
      else {
        this.agv_transfer_type = 0;
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
    // Serializes a message object of type cell_agv_main
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [agv_standtype]
    bufferOffset = _serializer.string(obj.agv_standtype, buffer, bufferOffset);
    // Serialize message field [agv_model_no]
    bufferOffset = _serializer.string(obj.agv_model_no, buffer, bufferOffset);
    // Serialize message field [agv_name]
    bufferOffset = _serializer.string(obj.agv_name, buffer, bufferOffset);
    // Serialize message field [agv_shape]
    bufferOffset = _serializer.uint8(obj.agv_shape, buffer, bufferOffset);
    // Serialize message field [agv_shape_para0]
    bufferOffset = _serializer.float32(obj.agv_shape_para0, buffer, bufferOffset);
    // Serialize message field [agv_shape_para1]
    bufferOffset = _serializer.float32(obj.agv_shape_para1, buffer, bufferOffset);
    // Serialize message field [agv_shape_para2]
    bufferOffset = _serializer.float32(obj.agv_shape_para2, buffer, bufferOffset);
    // Serialize message field [agv_candidate]
    bufferOffset = _serializer.uint8(obj.agv_candidate, buffer, bufferOffset);
    // Serialize message field [agv_transfer_type]
    bufferOffset = _serializer.uint8(obj.agv_transfer_type, buffer, bufferOffset);
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
    //deserializes a message object of type cell_agv_main
    let len;
    let data = new cell_agv_main(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [agv_standtype]
    data.agv_standtype = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [agv_model_no]
    data.agv_model_no = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [agv_name]
    data.agv_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [agv_shape]
    data.agv_shape = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [agv_shape_para0]
    data.agv_shape_para0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agv_shape_para1]
    data.agv_shape_para1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agv_shape_para2]
    data.agv_shape_para2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agv_candidate]
    data.agv_candidate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [agv_transfer_type]
    data.agv_transfer_type = _deserializer.uint8(buffer, bufferOffset);
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
    length += object.unique_code.length;
    length += object.agv_standtype.length;
    length += object.agv_model_no.length;
    length += object.agv_name.length;
    length += object.put_in_service_date.length;
    length += object.update_time.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_agv_main';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'feec446d0776ec569e61a0ea7c5875f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)
    string unique_code 		        # must-have,UNIQUE INDEX	
    string agv_standtype		   
    string agv_model_no 		 
    string agv_name 		 
    uint8  agv_shape 	
    float32 agv_shape_para0 
    float32 agv_shape_para1 
    float32 agv_shape_para2 	
    uint8  agv_candidate 
    uint8  agv_transfer_type
    string put_in_service_date
    float32 work_comulative_time
    uint8 current_status
    string update_time			# must-have 	 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_agv_main(null);
    if (msg.primary_id !== undefined) {
      resolved.primary_id = msg.primary_id;
    }
    else {
      resolved.primary_id = ''
    }

    if (msg.unique_code !== undefined) {
      resolved.unique_code = msg.unique_code;
    }
    else {
      resolved.unique_code = ''
    }

    if (msg.agv_standtype !== undefined) {
      resolved.agv_standtype = msg.agv_standtype;
    }
    else {
      resolved.agv_standtype = ''
    }

    if (msg.agv_model_no !== undefined) {
      resolved.agv_model_no = msg.agv_model_no;
    }
    else {
      resolved.agv_model_no = ''
    }

    if (msg.agv_name !== undefined) {
      resolved.agv_name = msg.agv_name;
    }
    else {
      resolved.agv_name = ''
    }

    if (msg.agv_shape !== undefined) {
      resolved.agv_shape = msg.agv_shape;
    }
    else {
      resolved.agv_shape = 0
    }

    if (msg.agv_shape_para0 !== undefined) {
      resolved.agv_shape_para0 = msg.agv_shape_para0;
    }
    else {
      resolved.agv_shape_para0 = 0.0
    }

    if (msg.agv_shape_para1 !== undefined) {
      resolved.agv_shape_para1 = msg.agv_shape_para1;
    }
    else {
      resolved.agv_shape_para1 = 0.0
    }

    if (msg.agv_shape_para2 !== undefined) {
      resolved.agv_shape_para2 = msg.agv_shape_para2;
    }
    else {
      resolved.agv_shape_para2 = 0.0
    }

    if (msg.agv_candidate !== undefined) {
      resolved.agv_candidate = msg.agv_candidate;
    }
    else {
      resolved.agv_candidate = 0
    }

    if (msg.agv_transfer_type !== undefined) {
      resolved.agv_transfer_type = msg.agv_transfer_type;
    }
    else {
      resolved.agv_transfer_type = 0
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

module.exports = cell_agv_main;
