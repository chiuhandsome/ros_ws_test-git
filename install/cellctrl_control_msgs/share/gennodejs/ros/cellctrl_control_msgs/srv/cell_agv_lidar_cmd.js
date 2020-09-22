// Auto-generated. Do not edit!

// (in-package cellctrl_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let cell_agv_lidar = require('../msg/cell_agv_lidar.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class cell_agv_lidar_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_id = null;
      this.query_base_index = null;
      this.query_opt_index = null;
      this.query_parameter = null;
      this.request_data = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_id')) {
        this.cmd_id = initObj.cmd_id
      }
      else {
        this.cmd_id = 0;
      }
      if (initObj.hasOwnProperty('query_base_index')) {
        this.query_base_index = initObj.query_base_index
      }
      else {
        this.query_base_index = '';
      }
      if (initObj.hasOwnProperty('query_opt_index')) {
        this.query_opt_index = initObj.query_opt_index
      }
      else {
        this.query_opt_index = '';
      }
      if (initObj.hasOwnProperty('query_parameter')) {
        this.query_parameter = initObj.query_parameter
      }
      else {
        this.query_parameter = '';
      }
      if (initObj.hasOwnProperty('request_data')) {
        this.request_data = initObj.request_data
      }
      else {
        this.request_data = new cell_agv_lidar();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cell_agv_lidar_cmdRequest
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [query_base_index]
    bufferOffset = _serializer.string(obj.query_base_index, buffer, bufferOffset);
    // Serialize message field [query_opt_index]
    bufferOffset = _serializer.string(obj.query_opt_index, buffer, bufferOffset);
    // Serialize message field [query_parameter]
    bufferOffset = _serializer.string(obj.query_parameter, buffer, bufferOffset);
    // Serialize message field [request_data]
    bufferOffset = cell_agv_lidar.serialize(obj.request_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_agv_lidar_cmdRequest
    let len;
    let data = new cell_agv_lidar_cmdRequest(null);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [query_base_index]
    data.query_base_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_opt_index]
    data.query_opt_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_parameter]
    data.query_parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [request_data]
    data.request_data = cell_agv_lidar.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.query_base_index.length;
    length += object.query_opt_index.length;
    length += object.query_parameter.length;
    length += cell_agv_lidar.getMessageSize(object.request_data);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cellctrl_control_msgs/cell_agv_lidar_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e89104b8f96e405c022dbd17d1c4ecf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:query , 5:refresh	 		
    string query_base_index 	
    string query_opt_index
    string query_parameter 
    cell_agv_lidar request_data	 
    
    ================================================================================
    MSG: cellctrl_control_msgs/cell_agv_lidar
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
    const resolved = new cell_agv_lidar_cmdRequest(null);
    if (msg.cmd_id !== undefined) {
      resolved.cmd_id = msg.cmd_id;
    }
    else {
      resolved.cmd_id = 0
    }

    if (msg.query_base_index !== undefined) {
      resolved.query_base_index = msg.query_base_index;
    }
    else {
      resolved.query_base_index = ''
    }

    if (msg.query_opt_index !== undefined) {
      resolved.query_opt_index = msg.query_opt_index;
    }
    else {
      resolved.query_opt_index = ''
    }

    if (msg.query_parameter !== undefined) {
      resolved.query_parameter = msg.query_parameter;
    }
    else {
      resolved.query_parameter = ''
    }

    if (msg.request_data !== undefined) {
      resolved.request_data = cell_agv_lidar.Resolve(msg.request_data)
    }
    else {
      resolved.request_data = new cell_agv_lidar()
    }

    return resolved;
    }
};

class cell_agv_lidar_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.primary_id = null;
      this.update_time = null;
      this.response_data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = '';
      }
      if (initObj.hasOwnProperty('primary_id')) {
        this.primary_id = initObj.primary_id
      }
      else {
        this.primary_id = '';
      }
      if (initObj.hasOwnProperty('update_time')) {
        this.update_time = initObj.update_time
      }
      else {
        this.update_time = '';
      }
      if (initObj.hasOwnProperty('response_data')) {
        this.response_data = initObj.response_data
      }
      else {
        this.response_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cell_agv_lidar_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    // Serialize message field [response_data]
    // Serialize the length for message field [response_data]
    bufferOffset = _serializer.uint32(obj.response_data.length, buffer, bufferOffset);
    obj.response_data.forEach((val) => {
      bufferOffset = cell_agv_lidar.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_agv_lidar_cmdResponse
    let len;
    let data = new cell_agv_lidar_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [response_data]
    // Deserialize array length for message field [response_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.response_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.response_data[i] = cell_agv_lidar.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_code.length;
    length += object.primary_id.length;
    length += object.update_time.length;
    object.response_data.forEach((val) => {
      length += cell_agv_lidar.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cellctrl_control_msgs/cell_agv_lidar_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3d863d7a6e5e617a9ff8a50a6d53ab9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string error_code
    string primary_id
    string update_time
    cell_agv_lidar[] response_data
    
    
    ================================================================================
    MSG: cellctrl_control_msgs/cell_agv_lidar
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
    const resolved = new cell_agv_lidar_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = ''
    }

    if (msg.primary_id !== undefined) {
      resolved.primary_id = msg.primary_id;
    }
    else {
      resolved.primary_id = ''
    }

    if (msg.update_time !== undefined) {
      resolved.update_time = msg.update_time;
    }
    else {
      resolved.update_time = ''
    }

    if (msg.response_data !== undefined) {
      resolved.response_data = new Array(msg.response_data.length);
      for (let i = 0; i < resolved.response_data.length; ++i) {
        resolved.response_data[i] = cell_agv_lidar.Resolve(msg.response_data[i]);
      }
    }
    else {
      resolved.response_data = []
    }

    return resolved;
    }
};

module.exports = {
  Request: cell_agv_lidar_cmdRequest,
  Response: cell_agv_lidar_cmdResponse,
  md5sum() { return '5b06aeba6c9560a399222d693fe7ca2c'; },
  datatype() { return 'cellctrl_control_msgs/cell_agv_lidar_cmd'; }
};
