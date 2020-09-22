// Auto-generated. Do not edit!

// (in-package car_db_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WorkSheetItems {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.unique_code = null;
      this.base_item_name = null;
      this.item_ser_no = null;
      this.occur_time = null;
      this.target_pose_id = null;
      this.action_function_id = null;
      this.action_function_params = null;
      this.remark = null;
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
      if (initObj.hasOwnProperty('base_item_name')) {
        this.base_item_name = initObj.base_item_name
      }
      else {
        this.base_item_name = '';
      }
      if (initObj.hasOwnProperty('item_ser_no')) {
        this.item_ser_no = initObj.item_ser_no
      }
      else {
        this.item_ser_no = 0;
      }
      if (initObj.hasOwnProperty('occur_time')) {
        this.occur_time = initObj.occur_time
      }
      else {
        this.occur_time = '';
      }
      if (initObj.hasOwnProperty('target_pose_id')) {
        this.target_pose_id = initObj.target_pose_id
      }
      else {
        this.target_pose_id = '';
      }
      if (initObj.hasOwnProperty('action_function_id')) {
        this.action_function_id = initObj.action_function_id
      }
      else {
        this.action_function_id = '';
      }
      if (initObj.hasOwnProperty('action_function_params')) {
        this.action_function_params = initObj.action_function_params
      }
      else {
        this.action_function_params = '';
      }
      if (initObj.hasOwnProperty('remark')) {
        this.remark = initObj.remark
      }
      else {
        this.remark = '';
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
    // Serializes a message object of type WorkSheetItems
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [base_item_name]
    bufferOffset = _serializer.string(obj.base_item_name, buffer, bufferOffset);
    // Serialize message field [item_ser_no]
    bufferOffset = _serializer.uint8(obj.item_ser_no, buffer, bufferOffset);
    // Serialize message field [occur_time]
    bufferOffset = _serializer.string(obj.occur_time, buffer, bufferOffset);
    // Serialize message field [target_pose_id]
    bufferOffset = _serializer.string(obj.target_pose_id, buffer, bufferOffset);
    // Serialize message field [action_function_id]
    bufferOffset = _serializer.string(obj.action_function_id, buffer, bufferOffset);
    // Serialize message field [action_function_params]
    bufferOffset = _serializer.string(obj.action_function_params, buffer, bufferOffset);
    // Serialize message field [remark]
    bufferOffset = _serializer.string(obj.remark, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorkSheetItems
    let len;
    let data = new WorkSheetItems(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_item_name]
    data.base_item_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [item_ser_no]
    data.item_ser_no = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [occur_time]
    data.occur_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_pose_id]
    data.target_pose_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_function_id]
    data.action_function_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_function_params]
    data.action_function_params = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remark]
    data.remark = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.unique_code.length;
    length += object.base_item_name.length;
    length += object.occur_time.length;
    length += object.target_pose_id.length;
    length += object.action_function_id.length;
    length += object.action_function_params.length;
    length += object.remark.length;
    length += object.update_time.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_db_manager_msgs/WorkSheetItems';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8d3fc07cc4a98eb22e8a4eb5ef819bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id			# must-have,UUID : primary_key(system_id)		
    string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
    string base_item_name
    uint8 item_ser_no
    string occur_time
    string target_pose_id
    string action_function_id
    string action_function_params
    string remark
    string update_time			# must-have 	 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WorkSheetItems(null);
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

    if (msg.base_item_name !== undefined) {
      resolved.base_item_name = msg.base_item_name;
    }
    else {
      resolved.base_item_name = ''
    }

    if (msg.item_ser_no !== undefined) {
      resolved.item_ser_no = msg.item_ser_no;
    }
    else {
      resolved.item_ser_no = 0
    }

    if (msg.occur_time !== undefined) {
      resolved.occur_time = msg.occur_time;
    }
    else {
      resolved.occur_time = ''
    }

    if (msg.target_pose_id !== undefined) {
      resolved.target_pose_id = msg.target_pose_id;
    }
    else {
      resolved.target_pose_id = ''
    }

    if (msg.action_function_id !== undefined) {
      resolved.action_function_id = msg.action_function_id;
    }
    else {
      resolved.action_function_id = ''
    }

    if (msg.action_function_params !== undefined) {
      resolved.action_function_params = msg.action_function_params;
    }
    else {
      resolved.action_function_params = ''
    }

    if (msg.remark !== undefined) {
      resolved.remark = msg.remark;
    }
    else {
      resolved.remark = ''
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

module.exports = WorkSheetItems;
