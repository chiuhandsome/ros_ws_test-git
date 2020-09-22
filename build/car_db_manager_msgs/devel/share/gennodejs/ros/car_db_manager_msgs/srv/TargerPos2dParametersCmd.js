// Auto-generated. Do not edit!

// (in-package car_db_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TargerPos2dParameters = require('../msg/TargerPos2dParameters.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TargerPos2dParametersCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_id = null;
      this.query_base_index = null;
      this.query_opt_index = null;
      this.query_parameter = null;
      this.req_targer_pos2d_parameters = null;
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
      if (initObj.hasOwnProperty('req_targer_pos2d_parameters')) {
        this.req_targer_pos2d_parameters = initObj.req_targer_pos2d_parameters
      }
      else {
        this.req_targer_pos2d_parameters = new TargerPos2dParameters();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargerPos2dParametersCmdRequest
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [query_base_index]
    bufferOffset = _serializer.string(obj.query_base_index, buffer, bufferOffset);
    // Serialize message field [query_opt_index]
    bufferOffset = _serializer.string(obj.query_opt_index, buffer, bufferOffset);
    // Serialize message field [query_parameter]
    bufferOffset = _serializer.string(obj.query_parameter, buffer, bufferOffset);
    // Serialize message field [req_targer_pos2d_parameters]
    bufferOffset = TargerPos2dParameters.serialize(obj.req_targer_pos2d_parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargerPos2dParametersCmdRequest
    let len;
    let data = new TargerPos2dParametersCmdRequest(null);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [query_base_index]
    data.query_base_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_opt_index]
    data.query_opt_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_parameter]
    data.query_parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [req_targer_pos2d_parameters]
    data.req_targer_pos2d_parameters = TargerPos2dParameters.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.query_base_index.length;
    length += object.query_opt_index.length;
    length += object.query_parameter.length;
    length += TargerPos2dParameters.getMessageSize(object.req_targer_pos2d_parameters);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'car_db_manager_msgs/TargerPos2dParametersCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc6d604682cc81bab4ebdb407db14126';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
    string query_base_index 	
    string query_opt_index
    string query_parameter 
    TargerPos2dParameters req_targer_pos2d_parameters
    
    ================================================================================
    MSG: car_db_manager_msgs/TargerPos2dParameters
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
    string base_name
    float32 pos_x		   
    float32 pos_y	
    float32 theta	
    bool rotate_flag
    string update_time			# must-have 	 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargerPos2dParametersCmdRequest(null);
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

    if (msg.req_targer_pos2d_parameters !== undefined) {
      resolved.req_targer_pos2d_parameters = TargerPos2dParameters.Resolve(msg.req_targer_pos2d_parameters)
    }
    else {
      resolved.req_targer_pos2d_parameters = new TargerPos2dParameters()
    }

    return resolved;
    }
};

class TargerPos2dParametersCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.primary_id = null;
      this.update_time = null;
      this.result_targer_pos2d_parameters = null;
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
      if (initObj.hasOwnProperty('result_targer_pos2d_parameters')) {
        this.result_targer_pos2d_parameters = initObj.result_targer_pos2d_parameters
      }
      else {
        this.result_targer_pos2d_parameters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargerPos2dParametersCmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    // Serialize message field [result_targer_pos2d_parameters]
    // Serialize the length for message field [result_targer_pos2d_parameters]
    bufferOffset = _serializer.uint32(obj.result_targer_pos2d_parameters.length, buffer, bufferOffset);
    obj.result_targer_pos2d_parameters.forEach((val) => {
      bufferOffset = TargerPos2dParameters.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargerPos2dParametersCmdResponse
    let len;
    let data = new TargerPos2dParametersCmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result_targer_pos2d_parameters]
    // Deserialize array length for message field [result_targer_pos2d_parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result_targer_pos2d_parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result_targer_pos2d_parameters[i] = TargerPos2dParameters.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_code.length;
    length += object.primary_id.length;
    length += object.update_time.length;
    object.result_targer_pos2d_parameters.forEach((val) => {
      length += TargerPos2dParameters.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'car_db_manager_msgs/TargerPos2dParametersCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '453d39015cb5dcb753bf232250f99dce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string error_code
    string primary_id
    string update_time
    TargerPos2dParameters[] result_targer_pos2d_parameters
    
    
    ================================================================================
    MSG: car_db_manager_msgs/TargerPos2dParameters
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
    string base_name
    float32 pos_x		   
    float32 pos_y	
    float32 theta	
    bool rotate_flag
    string update_time			# must-have 	 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargerPos2dParametersCmdResponse(null);
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

    if (msg.result_targer_pos2d_parameters !== undefined) {
      resolved.result_targer_pos2d_parameters = new Array(msg.result_targer_pos2d_parameters.length);
      for (let i = 0; i < resolved.result_targer_pos2d_parameters.length; ++i) {
        resolved.result_targer_pos2d_parameters[i] = TargerPos2dParameters.Resolve(msg.result_targer_pos2d_parameters[i]);
      }
    }
    else {
      resolved.result_targer_pos2d_parameters = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TargerPos2dParametersCmdRequest,
  Response: TargerPos2dParametersCmdResponse,
  md5sum() { return '3ff1a4c4627a08e7a68201f9c99a163a'; },
  datatype() { return 'car_db_manager_msgs/TargerPos2dParametersCmd'; }
};
