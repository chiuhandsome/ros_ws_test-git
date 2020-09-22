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

class cell_agv_basetypeitems {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primary_id = null;
      this.foreign_key = null;
      this.device_code = null;
      this.device_serno = null;
      this.unique_code = null;
      this.device_tagname = null;
      this.device_tagdesc_TC = null;
      this.device_tagdesc_SC = null;
      this.device_tagdesc_E = null;
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
      if (initObj.hasOwnProperty('device_code')) {
        this.device_code = initObj.device_code
      }
      else {
        this.device_code = '';
      }
      if (initObj.hasOwnProperty('device_serno')) {
        this.device_serno = initObj.device_serno
      }
      else {
        this.device_serno = 0;
      }
      if (initObj.hasOwnProperty('unique_code')) {
        this.unique_code = initObj.unique_code
      }
      else {
        this.unique_code = '';
      }
      if (initObj.hasOwnProperty('device_tagname')) {
        this.device_tagname = initObj.device_tagname
      }
      else {
        this.device_tagname = '';
      }
      if (initObj.hasOwnProperty('device_tagdesc_TC')) {
        this.device_tagdesc_TC = initObj.device_tagdesc_TC
      }
      else {
        this.device_tagdesc_TC = '';
      }
      if (initObj.hasOwnProperty('device_tagdesc_SC')) {
        this.device_tagdesc_SC = initObj.device_tagdesc_SC
      }
      else {
        this.device_tagdesc_SC = '';
      }
      if (initObj.hasOwnProperty('device_tagdesc_E')) {
        this.device_tagdesc_E = initObj.device_tagdesc_E
      }
      else {
        this.device_tagdesc_E = '';
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
    // Serializes a message object of type cell_agv_basetypeitems
    // Serialize message field [primary_id]
    bufferOffset = _serializer.string(obj.primary_id, buffer, bufferOffset);
    // Serialize message field [foreign_key]
    bufferOffset = _serializer.string(obj.foreign_key, buffer, bufferOffset);
    // Serialize message field [device_code]
    bufferOffset = _serializer.string(obj.device_code, buffer, bufferOffset);
    // Serialize message field [device_serno]
    bufferOffset = _serializer.uint8(obj.device_serno, buffer, bufferOffset);
    // Serialize message field [unique_code]
    bufferOffset = _serializer.string(obj.unique_code, buffer, bufferOffset);
    // Serialize message field [device_tagname]
    bufferOffset = _serializer.string(obj.device_tagname, buffer, bufferOffset);
    // Serialize message field [device_tagdesc_TC]
    bufferOffset = _serializer.string(obj.device_tagdesc_TC, buffer, bufferOffset);
    // Serialize message field [device_tagdesc_SC]
    bufferOffset = _serializer.string(obj.device_tagdesc_SC, buffer, bufferOffset);
    // Serialize message field [device_tagdesc_E]
    bufferOffset = _serializer.string(obj.device_tagdesc_E, buffer, bufferOffset);
    // Serialize message field [update_time]
    bufferOffset = _serializer.string(obj.update_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cell_agv_basetypeitems
    let len;
    let data = new cell_agv_basetypeitems(null);
    // Deserialize message field [primary_id]
    data.primary_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [foreign_key]
    data.foreign_key = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_code]
    data.device_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_serno]
    data.device_serno = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unique_code]
    data.unique_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_tagname]
    data.device_tagname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_tagdesc_TC]
    data.device_tagdesc_TC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_tagdesc_SC]
    data.device_tagdesc_SC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [device_tagdesc_E]
    data.device_tagdesc_E = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [update_time]
    data.update_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.primary_id.length;
    length += object.foreign_key.length;
    length += object.device_code.length;
    length += object.unique_code.length;
    length += object.device_tagname.length;
    length += object.device_tagdesc_TC.length;
    length += object.device_tagdesc_SC.length;
    length += object.device_tagdesc_E.length;
    length += object.update_time.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cellctrl_control_msgs/cell_agv_basetypeitems';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b98f1617feb9698e8478fb3dda2fb17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string primary_id 			# must-have,UUID : primary_key(system_id)			
    string foreign_key 		       	# foreign-key	
    string device_code		   
    uint8  device_serno 
    string unique_code			# must-have,UNIQUE INDEX		 
    string device_tagname 		 
    string device_tagdesc_TC 	
    string device_tagdesc_SC 
    string device_tagdesc_E 	 
    string update_time 			# must-have		 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cell_agv_basetypeitems(null);
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

    if (msg.device_code !== undefined) {
      resolved.device_code = msg.device_code;
    }
    else {
      resolved.device_code = ''
    }

    if (msg.device_serno !== undefined) {
      resolved.device_serno = msg.device_serno;
    }
    else {
      resolved.device_serno = 0
    }

    if (msg.unique_code !== undefined) {
      resolved.unique_code = msg.unique_code;
    }
    else {
      resolved.unique_code = ''
    }

    if (msg.device_tagname !== undefined) {
      resolved.device_tagname = msg.device_tagname;
    }
    else {
      resolved.device_tagname = ''
    }

    if (msg.device_tagdesc_TC !== undefined) {
      resolved.device_tagdesc_TC = msg.device_tagdesc_TC;
    }
    else {
      resolved.device_tagdesc_TC = ''
    }

    if (msg.device_tagdesc_SC !== undefined) {
      resolved.device_tagdesc_SC = msg.device_tagdesc_SC;
    }
    else {
      resolved.device_tagdesc_SC = ''
    }

    if (msg.device_tagdesc_E !== undefined) {
      resolved.device_tagdesc_E = msg.device_tagdesc_E;
    }
    else {
      resolved.device_tagdesc_E = ''
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

module.exports = cell_agv_basetypeitems;
