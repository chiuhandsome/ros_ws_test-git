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

class cell_work_stationitems {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.unique_code = null;
      this.station_name = null;
      this.station_ser = null;
      this.cellcontroller_code = null;
      this.positioned_pose = null;
      this.mc_func_code = null;
      this.transfer_code = null;
      this.transfer_state = null;
      this.align_type = null;
      this.align_metadata = null;
      this.pre_positioned_pose = null;
      this.Identify_id = null;
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
      if (initObj.hasOwnProperty('station_name')) {
        this.station_name = initObj.station_name
      }
      else {
        this.station_name = '';
      }
      if (initObj.hasOwnProperty('station_ser')) {
        this.station_ser = initObj.station_ser
      }
      else {
        this.station_ser = 0;
      }
      if (initObj.hasOwnProperty('cellcontroller_code')) {
        this.cellcontroller_code = initObj.cellcontroller_code
      }
      else {
        this.cellcontroller_code = '';
      }
      if (initObj.hasOwnProperty('positioned_pose')) {
        this.positioned_pose = initObj.positioned_pose
      }
      else {
        this.positioned_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('mc_func_code')) {
        this.mc_func_code = initObj.mc_func_code
      }
      else {
        this.mc_func_code = 0;
      }
      if (initObj.hasOwnProperty('transfer_code')) {
        this.transfer_code = initObj.transfer_code
      }
      else {
        this.transfer_code = 0;
      }
      if (initObj.hasOwnProperty('transfer_state')) {
        this.transfer_state = initObj.transfer_state
      }
      else {
        this.transfer_state = 0;
      }
      if (initObj.hasOwnProperty('align_type')) {
        this.align_type = initObj.align_type
      }
      else {
        this.align_type = 0;
      }
      if (initObj.hasOwnProperty('align_metadata')) {
        this.align_metadata = initObj.align_metadata
      }
      else {
        this.align_metadata = '';
      }
      if (initObj.hasOwnProperty('pre_positioned_pose')) {
        this.pre_positioned_pose = initObj.pre_positioned_pose
      }
      else {
        this.pre_positioned_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('Identify_id')) {
        this.Identify_id = initObj.Identify_id
      }
      else {
        this.Identify_id = '';
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
    // Serializes a message object of type cell_work_stationitems
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [station_name]
    bufferOffset = _serializer.string(obj.station_name, buffer, bufferOffset);
    // Serialize message field [station_ser]
    bufferOffset = _serializer.uint8(obj.station_ser, buffer, bufferOffset);
    // Serialize message field [cellcontroller_code]
    bufferOffset = _serializer.string(obj.cellcontroller_code, buffer, bufferOffset);
    // Serialize message field [positioned_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.positioned_pose, buffer, bufferOffset);
    // Serialize message field [mc_func_code]
    bufferOffset = _serializer.uint8(obj.mc_func_code, buffer, bufferOffset);
    // Serialize message field [transfer_code]
    bufferOffset = _serializer.uint8(obj.transfer_code, buffer, bufferOffset);
    // Serialize message field [transfer_state]
    bufferOffset = _serializer.uint8(obj.transfer_state, buffer, bufferOffset);
    // Serialize message field [align_type]
    bufferOffset = _serializer.uint8(obj.align_type, buffer, bufferOffset);
    // Serialize message field [align_metadata]
    bufferOffset = _serializer.string(obj.align_metadata, buffer, bufferOffset);
    // Serialize message field [pre_positioned_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pre_positioned_pose, buffer, bufferOffset);
    // Serialize message field [Identify_id]
    bufferOffset = _serializer.string(obj.Identify_id, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_work_stationitems
    let len;
    let data = new cell_work_stationitems(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [station_name]
    data.station_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [station_ser]
    data.station_ser = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cellcontroller_code]
    data.cellcontroller_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [positioned_pose]
    data.positioned_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [mc_func_code]
    data.mc_func_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [transfer_code]
    data.transfer_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [transfer_state]
    data.transfer_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [align_type]
    data.align_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [align_metadata]
    data.align_metadata = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pre_positioned_pose]
    data.pre_positioned_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [Identify_id]
    data.Identify_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.unique_code.length;
    length += object.station_name.length;
    length += object.cellcontroller_code.length;
    length += object.align_metadata.length;
    length += object.Identify_id.length;
    length += object.update_time.length;
    return length + 149;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_work_stationitems';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fa12b8714fb4a13b138a13c3f297691';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)
    string foreign_key
    string unique_code 		        # must-have,UNIQUE INDEX	
    string station_name		   
    uint8  station_ser
    string cellcontroller_code 		 
    geometry_msgs/Pose positioned_pose 		 
    uint8  mc_func_code 	
    uint8  transfer_code 	
    uint8  transfer_state 
    uint8  align_type
    string align_metadata
    geometry_msgs/Pose pre_positioned_pose
    string Identify_id
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
    const resolved = new cell_work_stationitems(null);
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

    if (msg.station_name !== undefined) {
      resolved.station_name = msg.station_name;
    }
    else {
      resolved.station_name = ''
    }

    if (msg.station_ser !== undefined) {
      resolved.station_ser = msg.station_ser;
    }
    else {
      resolved.station_ser = 0
    }

    if (msg.cellcontroller_code !== undefined) {
      resolved.cellcontroller_code = msg.cellcontroller_code;
    }
    else {
      resolved.cellcontroller_code = ''
    }

    if (msg.positioned_pose !== undefined) {
      resolved.positioned_pose = geometry_msgs.msg.Pose.Resolve(msg.positioned_pose)
    }
    else {
      resolved.positioned_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.mc_func_code !== undefined) {
      resolved.mc_func_code = msg.mc_func_code;
    }
    else {
      resolved.mc_func_code = 0
    }

    if (msg.transfer_code !== undefined) {
      resolved.transfer_code = msg.transfer_code;
    }
    else {
      resolved.transfer_code = 0
    }

    if (msg.transfer_state !== undefined) {
      resolved.transfer_state = msg.transfer_state;
    }
    else {
      resolved.transfer_state = 0
    }

    if (msg.align_type !== undefined) {
      resolved.align_type = msg.align_type;
    }
    else {
      resolved.align_type = 0
    }

    if (msg.align_metadata !== undefined) {
      resolved.align_metadata = msg.align_metadata;
    }
    else {
      resolved.align_metadata = ''
    }

    if (msg.pre_positioned_pose !== undefined) {
      resolved.pre_positioned_pose = geometry_msgs.msg.Pose.Resolve(msg.pre_positioned_pose)
    }
    else {
      resolved.pre_positioned_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.Identify_id !== undefined) {
      resolved.Identify_id = msg.Identify_id;
    }
    else {
      resolved.Identify_id = ''
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

module.exports = cell_work_stationitems;
