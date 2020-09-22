// Auto-generated. Do not edit!

// (in-package cellctrl_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class base_cell_controller {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.base_name = null;
      this.base_desc_TC = null;
      this.base_desc_SC = null;
      this.base_desc_E = null;
      this.map_filename = null;
      this.map_resolution = null;
      this.map_width = null;
      this.map_height = null;
      this.map_origin = null;
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
      if (initObj.hasOwnProperty('base_name')) {
        this.base_name = initObj.base_name
      }
      else {
        this.base_name = '';
      }
      if (initObj.hasOwnProperty('base_desc_TC')) {
        this.base_desc_TC = initObj.base_desc_TC
      }
      else {
        this.base_desc_TC = '';
      }
      if (initObj.hasOwnProperty('base_desc_SC')) {
        this.base_desc_SC = initObj.base_desc_SC
      }
      else {
        this.base_desc_SC = '';
      }
      if (initObj.hasOwnProperty('base_desc_E')) {
        this.base_desc_E = initObj.base_desc_E
      }
      else {
        this.base_desc_E = '';
      }
      if (initObj.hasOwnProperty('map_filename')) {
        this.map_filename = initObj.map_filename
      }
      else {
        this.map_filename = '';
      }
      if (initObj.hasOwnProperty('map_resolution')) {
        this.map_resolution = initObj.map_resolution
      }
      else {
        this.map_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('map_width')) {
        this.map_width = initObj.map_width
      }
      else {
        this.map_width = 0;
      }
      if (initObj.hasOwnProperty('map_height')) {
        this.map_height = initObj.map_height
      }
      else {
        this.map_height = 0;
      }
      if (initObj.hasOwnProperty('map_origin')) {
        this.map_origin = initObj.map_origin
      }
      else {
        this.map_origin = new geometry_msgs.msg.Pose();
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
    // Serializes a message object of type base_cell_controller
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [base_name]
    bufferOffset = _serializer.string(obj.base_name, buffer, bufferOffset);
    // Serialize message field [base_desc_TC]
    bufferOffset = _serializer.string(obj.base_desc_TC, buffer, bufferOffset);
    // Serialize message field [base_desc_SC]
    bufferOffset = _serializer.string(obj.base_desc_SC, buffer, bufferOffset);
    // Serialize message field [base_desc_E]
    bufferOffset = _serializer.string(obj.base_desc_E, buffer, bufferOffset);
    // Serialize message field [map_filename]
    bufferOffset = _serializer.string(obj.map_filename, buffer, bufferOffset);
    // Serialize message field [map_resolution]
    bufferOffset = _serializer.float32(obj.map_resolution, buffer, bufferOffset);
    // Serialize message field [map_width]
    bufferOffset = _serializer.uint32(obj.map_width, buffer, bufferOffset);
    // Serialize message field [map_height]
    bufferOffset = _serializer.uint32(obj.map_height, buffer, bufferOffset);
    // Serialize message field [map_origin]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.map_origin, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type base_cell_controller
    let len;
    let data = new base_cell_controller(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_name]
    data.base_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_desc_TC]
    data.base_desc_TC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_desc_SC]
    data.base_desc_SC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_desc_E]
    data.base_desc_E = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_filename]
    data.map_filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_resolution]
    data.map_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [map_width]
    data.map_width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [map_height]
    data.map_height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [map_origin]
    data.map_origin = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.unique_code.length;
    length += object.base_name.length;
    length += object.base_desc_TC.length;
    length += object.base_desc_SC.length;
    length += object.base_desc_E.length;
    length += object.map_filename.length;
    length += object.update_time.length;
    return length + 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/base_cell_controller';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1c018323d24ed001e8bac4437bffe2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new base_cell_controller(null);
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

    if (msg.base_name !== undefined) {
      resolved.base_name = msg.base_name;
    }
    else {
      resolved.base_name = ''
    }

    if (msg.base_desc_TC !== undefined) {
      resolved.base_desc_TC = msg.base_desc_TC;
    }
    else {
      resolved.base_desc_TC = ''
    }

    if (msg.base_desc_SC !== undefined) {
      resolved.base_desc_SC = msg.base_desc_SC;
    }
    else {
      resolved.base_desc_SC = ''
    }

    if (msg.base_desc_E !== undefined) {
      resolved.base_desc_E = msg.base_desc_E;
    }
    else {
      resolved.base_desc_E = ''
    }

    if (msg.map_filename !== undefined) {
      resolved.map_filename = msg.map_filename;
    }
    else {
      resolved.map_filename = ''
    }

    if (msg.map_resolution !== undefined) {
      resolved.map_resolution = msg.map_resolution;
    }
    else {
      resolved.map_resolution = 0.0
    }

    if (msg.map_width !== undefined) {
      resolved.map_width = msg.map_width;
    }
    else {
      resolved.map_width = 0
    }

    if (msg.map_height !== undefined) {
      resolved.map_height = msg.map_height;
    }
    else {
      resolved.map_height = 0
    }

    if (msg.map_origin !== undefined) {
      resolved.map_origin = geometry_msgs.msg.Pose.Resolve(msg.map_origin)
    }
    else {
      resolved.map_origin = new geometry_msgs.msg.Pose()
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

module.exports = base_cell_controller;
