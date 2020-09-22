// Auto-generated. Do not edit!

// (in-package car_db_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OperatecodeParameters = require('../msg/OperatecodeParameters.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class OperatecodeParametersCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_id = null;
      this.query_base_index = null;
      this.query_opt_index = null;
      this.query_parameter = null;
      this.req_operatecode_parameters = null;
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
      if (initObj.hasOwnProperty('req_operatecode_parameters')) {
        this.req_operatecode_parameters = initObj.req_operatecode_parameters
      }
      else {
        this.req_operatecode_parameters = new OperatecodeParameters();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OperatecodeParametersCmdRequest
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [query_base_index]
    bufferOffset = _serializer.string(obj.query_base_index, buffer, bufferOffset);
    // Serialize message field [query_opt_index]
    bufferOffset = _serializer.string(obj.query_opt_index, buffer, bufferOffset);
    // Serialize message field [query_parameter]
    bufferOffset = _serializer.string(obj.query_parameter, buffer, bufferOffset);
    // Serialize message field [req_operatecode_parameters]
    bufferOffset = OperatecodeParameters.serialize(obj.req_operatecode_parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperatecodeParametersCmdRequest
    let len;
    let data = new OperatecodeParametersCmdRequest(null);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [query_base_index]
    data.query_base_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_opt_index]
    data.query_opt_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_parameter]
    data.query_parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [req_operatecode_parameters]
    data.req_operatecode_parameters = OperatecodeParameters.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.query_base_index.length;
    length += object.query_opt_index.length;
    length += object.query_parameter.length;
    length += OperatecodeParameters.getMessageSize(object.req_operatecode_parameters);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'car_db_manager_msgs/OperatecodeParametersCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '491c0afbdfaf0c5da4d02144b2264763';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
    string query_base_index 	
    string query_opt_index
    string query_parameter 
    OperatecodeParameters req_operatecode_parameters
    
    ================================================================================
    MSG: car_db_manager_msgs/OperatecodeParameters
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
    string base_name
    uint8 operate_level	
    string operate_desc_eng
    string operate_desc_tc
    string operate_desc_sc
    string update_time			# must-have 	  	
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OperatecodeParametersCmdRequest(null);
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

    if (msg.req_operatecode_parameters !== undefined) {
      resolved.req_operatecode_parameters = OperatecodeParameters.Resolve(msg.req_operatecode_parameters)
    }
    else {
      resolved.req_operatecode_parameters = new OperatecodeParameters()
    }

    return resolved;
    }
};

class OperatecodeParametersCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.primary_id = null;
      this.update_time = null;
      this.result_operatecode_parameters = null;
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
      if (initObj.hasOwnProperty('result_operatecode_parameters')) {
        this.result_operatecode_parameters = initObj.result_operatecode_parameters
      }
      else {
        this.result_operatecode_parameters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OperatecodeParametersCmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    // Serialize message field [result_operatecode_parameters]
    // Serialize the length for message field [result_operatecode_parameters]
    bufferOffset = _serializer.uint32(obj.result_operatecode_parameters.length, buffer, bufferOffset);
    obj.result_operatecode_parameters.forEach((val) => {
      bufferOffset = OperatecodeParameters.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperatecodeParametersCmdResponse
    let len;
    let data = new OperatecodeParametersCmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result_operatecode_parameters]
    // Deserialize array length for message field [result_operatecode_parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result_operatecode_parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result_operatecode_parameters[i] = OperatecodeParameters.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_code.length;
    length += object.primary_id.length;
    length += object.update_time.length;
    object.result_operatecode_parameters.forEach((val) => {
      length += OperatecodeParameters.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'car_db_manager_msgs/OperatecodeParametersCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7584287dbfe90539de9a0fdff12a969';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string error_code
    string primary_id
    string update_time
    OperatecodeParameters[] result_operatecode_parameters
    
    
    ================================================================================
    MSG: car_db_manager_msgs/OperatecodeParameters
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
    string base_name
    uint8 operate_level	
    string operate_desc_eng
    string operate_desc_tc
    string operate_desc_sc
    string update_time			# must-have 	  	
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OperatecodeParametersCmdResponse(null);
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

    if (msg.result_operatecode_parameters !== undefined) {
      resolved.result_operatecode_parameters = new Array(msg.result_operatecode_parameters.length);
      for (let i = 0; i < resolved.result_operatecode_parameters.length; ++i) {
        resolved.result_operatecode_parameters[i] = OperatecodeParameters.Resolve(msg.result_operatecode_parameters[i]);
      }
    }
    else {
      resolved.result_operatecode_parameters = []
    }

    return resolved;
    }
};

module.exports = {
  Request: OperatecodeParametersCmdRequest,
  Response: OperatecodeParametersCmdResponse,
  md5sum() { return 'ec84223821ba3e0cc79a157eb397d22d'; },
  datatype() { return 'car_db_manager_msgs/OperatecodeParametersCmd'; }
};
