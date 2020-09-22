// Auto-generated. Do not edit!

// (in-package cellctrl_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let cell_base_device = require('../msg/cell_base_device.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class cell_base_device_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_id = null;
      this.query_base_index = null;
      this.query_opt_index = null;
      this.query_parameter = null;
      this.req_base_device = null;
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
      if (initObj.hasOwnProperty('req_base_device')) {
        this.req_base_device = initObj.req_base_device
      }
      else {
        this.req_base_device = new cell_base_device();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cell_base_device_cmdRequest
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [query_base_index]
    bufferOffset = _serializer.string(obj.query_base_index, buffer, bufferOffset);
    // Serialize message field [query_opt_index]
    bufferOffset = _serializer.string(obj.query_opt_index, buffer, bufferOffset);
    // Serialize message field [query_parameter]
    bufferOffset = _serializer.string(obj.query_parameter, buffer, bufferOffset);
    // Serialize message field [req_base_device]
    bufferOffset = cell_base_device.serialize(obj.req_base_device, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_base_device_cmdRequest
    let len;
    let data = new cell_base_device_cmdRequest(null);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [query_base_index]
    data.query_base_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_opt_index]
    data.query_opt_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_parameter]
    data.query_parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [req_base_device]
    data.req_base_device = cell_base_device.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.query_base_index.length;
    length += object.query_opt_index.length;
    length += object.query_parameter.length;
    length += cell_base_device.getMessageSize(object.req_base_device);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cellctrl_control_msgs/cell_base_device_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e07b0c5f5a002b9e358cd336076f2ef4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:query , 5:refresh	 		
    string query_base_index 	
    string query_opt_index
    string query_parameter 
    cell_base_device req_base_device	 
    
    ================================================================================
    MSG: cellctrl_control_msgs/cell_base_device
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX	
    string base_name
    string factory 		 
    string modelno 			   
    string base_desc_TC 		 
    string base_desc_SC 		 
    string base_desc_E 		 
    string update_time			# must-have 		 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_base_device_cmdRequest(null);
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

    if (msg.req_base_device !== undefined) {
      resolved.req_base_device = cell_base_device.Resolve(msg.req_base_device)
    }
    else {
      resolved.req_base_device = new cell_base_device()
    }

    return resolved;
    }
};

class cell_base_device_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.primary_id = null;
      this.update_time = null;
      this.result_base_device = null;
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
      if (initObj.hasOwnProperty('result_base_device')) {
        this.result_base_device = initObj.result_base_device
      }
      else {
        this.result_base_device = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cell_base_device_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    // Serialize message field [result_base_device]
    // Serialize the length for message field [result_base_device]
    bufferOffset = _serializer.uint32(obj.result_base_device.length, buffer, bufferOffset);
    obj.result_base_device.forEach((val) => {
      bufferOffset = cell_base_device.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_base_device_cmdResponse
    let len;
    let data = new cell_base_device_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result_base_device]
    // Deserialize array length for message field [result_base_device]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result_base_device = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result_base_device[i] = cell_base_device.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_code.length;
    length += object.primary_id.length;
    length += object.update_time.length;
    object.result_base_device.forEach((val) => {
      length += cell_base_device.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cellctrl_control_msgs/cell_base_device_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ea2c3bc01fe009435b8c7ab488163cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string error_code
    string primary_id
    string update_time
    cell_base_device[] result_base_device
    
    
    ================================================================================
    MSG: cellctrl_control_msgs/cell_base_device
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX	
    string base_name
    string factory 		 
    string modelno 			   
    string base_desc_TC 		 
    string base_desc_SC 		 
    string base_desc_E 		 
    string update_time			# must-have 		 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_base_device_cmdResponse(null);
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

    if (msg.result_base_device !== undefined) {
      resolved.result_base_device = new Array(msg.result_base_device.length);
      for (let i = 0; i < resolved.result_base_device.length; ++i) {
        resolved.result_base_device[i] = cell_base_device.Resolve(msg.result_base_device[i]);
      }
    }
    else {
      resolved.result_base_device = []
    }

    return resolved;
    }
};

module.exports = {
  Request: cell_base_device_cmdRequest,
  Response: cell_base_device_cmdResponse,
  md5sum() { return '0224d44992df1fdde3ffbcb803d3f92d'; },
  datatype() { return 'cellctrl_control_msgs/cell_base_device_cmd'; }
};
