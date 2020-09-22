// Auto-generated. Do not edit!

// (in-package cellctrl_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let base_cell_controller = require('../msg/base_cell_controller.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class base_cell_controller_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_id = null;
      this.query_base_index = null;
      this.query_opt_index = null;
      this.query_parameter = null;
      this.req_base_cellcontroller = null;
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
      if (initObj.hasOwnProperty('req_base_cellcontroller')) {
        this.req_base_cellcontroller = initObj.req_base_cellcontroller
      }
      else {
        this.req_base_cellcontroller = new base_cell_controller();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type base_cell_controller_cmdRequest
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.int8(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [query_base_index]
    bufferOffset = _serializer.string(obj.query_base_index, buffer, bufferOffset);
    // Serialize message field [query_opt_index]
    bufferOffset = _serializer.string(obj.query_opt_index, buffer, bufferOffset);
    // Serialize message field [query_parameter]
    bufferOffset = _serializer.string(obj.query_parameter, buffer, bufferOffset);
    // Serialize message field [req_base_cellcontroller]
    bufferOffset = base_cell_controller.serialize(obj.req_base_cellcontroller, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type base_cell_controller_cmdRequest
    let len;
    let data = new base_cell_controller_cmdRequest(null);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [query_base_index]
    data.query_base_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_opt_index]
    data.query_opt_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query_parameter]
    data.query_parameter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [req_base_cellcontroller]
    data.req_base_cellcontroller = base_cell_controller.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.query_base_index.length;
    length += object.query_opt_index.length;
    length += object.query_parameter.length;
    length += base_cell_controller.getMessageSize(object.req_base_cellcontroller);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cellctrl_control_msgs/base_cell_controller_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d1fbf0163211f3d5b1f4337d40a3b37';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
    string query_base_index 	
    string query_opt_index
    string query_parameter 
    base_cell_controller req_base_cellcontroller	 
    
    ================================================================================
    MSG: cellctrl_control_msgs/base_cell_controller
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX	
    string base_name		   
    string base_desc_TC 		 
    string base_desc_SC 		 
    string base_desc_E 
    string map_filename 
    float32 map_resolution	
    uint32 map_width
    uint32 map_height
    geometry_msgs/Pose map_origin	 
    string update_time			# must-have 	  		 
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new base_cell_controller_cmdRequest(null);
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

    if (msg.req_base_cellcontroller !== undefined) {
      resolved.req_base_cellcontroller = base_cell_controller.Resolve(msg.req_base_cellcontroller)
    }
    else {
      resolved.req_base_cellcontroller = new base_cell_controller()
    }

    return resolved;
    }
};

class base_cell_controller_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.primary_id = null;
      this.update_time = null;
      this.result_base_cellcontroller = null;
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
      if (initObj.hasOwnProperty('result_base_cellcontroller')) {
        this.result_base_cellcontroller = initObj.result_base_cellcontroller
      }
      else {
        this.result_base_cellcontroller = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type base_cell_controller_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    // Serialize message field [result_base_cellcontroller]
    // Serialize the length for message field [result_base_cellcontroller]
    bufferOffset = _serializer.uint32(obj.result_base_cellcontroller.length, buffer, bufferOffset);
    obj.result_base_cellcontroller.forEach((val) => {
      bufferOffset = base_cell_controller.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type base_cell_controller_cmdResponse
    let len;
    let data = new base_cell_controller_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result_base_cellcontroller]
    // Deserialize array length for message field [result_base_cellcontroller]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result_base_cellcontroller = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result_base_cellcontroller[i] = base_cell_controller.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_code.length;
    length += object.primary_id.length;
    length += object.update_time.length;
    object.result_base_cellcontroller.forEach((val) => {
      length += base_cell_controller.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cellctrl_control_msgs/base_cell_controller_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb7586f91acf71b404808b25d89b4aec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string error_code
    string primary_id
    string update_time
    base_cell_controller[] result_base_cellcontroller
    
    
    ================================================================================
    MSG: cellctrl_control_msgs/base_cell_controller
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX	
    string base_name		   
    string base_desc_TC 		 
    string base_desc_SC 		 
    string base_desc_E 
    string map_filename 
    float32 map_resolution	
    uint32 map_width
    uint32 map_height
    geometry_msgs/Pose map_origin	 
    string update_time			# must-have 	  		 
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new base_cell_controller_cmdResponse(null);
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

    if (msg.result_base_cellcontroller !== undefined) {
      resolved.result_base_cellcontroller = new Array(msg.result_base_cellcontroller.length);
      for (let i = 0; i < resolved.result_base_cellcontroller.length; ++i) {
        resolved.result_base_cellcontroller[i] = base_cell_controller.Resolve(msg.result_base_cellcontroller[i]);
      }
    }
    else {
      resolved.result_base_cellcontroller = []
    }

    return resolved;
    }
};

module.exports = {
  Request: base_cell_controller_cmdRequest,
  Response: base_cell_controller_cmdResponse,
  md5sum() { return 'b7e1c7df95127394e50315b692045601'; },
  datatype() { return 'cellctrl_control_msgs/base_cell_controller_cmd'; }
};
