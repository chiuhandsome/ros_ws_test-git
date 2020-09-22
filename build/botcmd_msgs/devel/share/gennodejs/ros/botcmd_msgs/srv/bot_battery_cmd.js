// Auto-generated. Do not edit!

// (in-package botcmd_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class bot_battery_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_battery_cmdRequest
    // Serialize message field [command]
    bufferOffset = _serializer.int8(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_battery_cmdRequest
    let len;
    let data = new bot_battery_cmdRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_battery_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '481ac5a494c3140a2539020bd74c82c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_battery_cmdRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

class bot_battery_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.Command_Params = null;
      this.stamp = null;
      this.gen_alarmcode = null;
      this.emg_alarmcode = null;
      this.chargstate_code = null;
      this.cell_balance_code = null;
      this.cell_volt_min = null;
      this.cell_volt_max = null;
      this.chargcurrent_code = null;
      this.full_capacity = null;
      this.loop_counter = null;
      this.cell_temp_min = null;
      this.cell_temp_max = null;
      this.Pack_tol_volt = null;
      this.Pack_resistance = null;
      this.total_discharge = null;
      this.ASOC_code = null;
      this.scaleunit_code = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('Command_Params')) {
        this.Command_Params = initObj.Command_Params
      }
      else {
        this.Command_Params = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('gen_alarmcode')) {
        this.gen_alarmcode = initObj.gen_alarmcode
      }
      else {
        this.gen_alarmcode = 0;
      }
      if (initObj.hasOwnProperty('emg_alarmcode')) {
        this.emg_alarmcode = initObj.emg_alarmcode
      }
      else {
        this.emg_alarmcode = 0;
      }
      if (initObj.hasOwnProperty('chargstate_code')) {
        this.chargstate_code = initObj.chargstate_code
      }
      else {
        this.chargstate_code = 0;
      }
      if (initObj.hasOwnProperty('cell_balance_code')) {
        this.cell_balance_code = initObj.cell_balance_code
      }
      else {
        this.cell_balance_code = 0;
      }
      if (initObj.hasOwnProperty('cell_volt_min')) {
        this.cell_volt_min = initObj.cell_volt_min
      }
      else {
        this.cell_volt_min = 0;
      }
      if (initObj.hasOwnProperty('cell_volt_max')) {
        this.cell_volt_max = initObj.cell_volt_max
      }
      else {
        this.cell_volt_max = 0;
      }
      if (initObj.hasOwnProperty('chargcurrent_code')) {
        this.chargcurrent_code = initObj.chargcurrent_code
      }
      else {
        this.chargcurrent_code = 0;
      }
      if (initObj.hasOwnProperty('full_capacity')) {
        this.full_capacity = initObj.full_capacity
      }
      else {
        this.full_capacity = 0;
      }
      if (initObj.hasOwnProperty('loop_counter')) {
        this.loop_counter = initObj.loop_counter
      }
      else {
        this.loop_counter = 0;
      }
      if (initObj.hasOwnProperty('cell_temp_min')) {
        this.cell_temp_min = initObj.cell_temp_min
      }
      else {
        this.cell_temp_min = 0;
      }
      if (initObj.hasOwnProperty('cell_temp_max')) {
        this.cell_temp_max = initObj.cell_temp_max
      }
      else {
        this.cell_temp_max = 0;
      }
      if (initObj.hasOwnProperty('Pack_tol_volt')) {
        this.Pack_tol_volt = initObj.Pack_tol_volt
      }
      else {
        this.Pack_tol_volt = 0;
      }
      if (initObj.hasOwnProperty('Pack_resistance')) {
        this.Pack_resistance = initObj.Pack_resistance
      }
      else {
        this.Pack_resistance = 0;
      }
      if (initObj.hasOwnProperty('total_discharge')) {
        this.total_discharge = initObj.total_discharge
      }
      else {
        this.total_discharge = 0;
      }
      if (initObj.hasOwnProperty('ASOC_code')) {
        this.ASOC_code = initObj.ASOC_code
      }
      else {
        this.ASOC_code = 0;
      }
      if (initObj.hasOwnProperty('scaleunit_code')) {
        this.scaleunit_code = initObj.scaleunit_code
      }
      else {
        this.scaleunit_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bot_battery_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [Command_Params]
    bufferOffset = _serializer.int8(obj.Command_Params, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [gen_alarmcode]
    bufferOffset = _serializer.int16(obj.gen_alarmcode, buffer, bufferOffset);
    // Serialize message field [emg_alarmcode]
    bufferOffset = _serializer.int16(obj.emg_alarmcode, buffer, bufferOffset);
    // Serialize message field [chargstate_code]
    bufferOffset = _serializer.int16(obj.chargstate_code, buffer, bufferOffset);
    // Serialize message field [cell_balance_code]
    bufferOffset = _serializer.int16(obj.cell_balance_code, buffer, bufferOffset);
    // Serialize message field [cell_volt_min]
    bufferOffset = _serializer.int16(obj.cell_volt_min, buffer, bufferOffset);
    // Serialize message field [cell_volt_max]
    bufferOffset = _serializer.int16(obj.cell_volt_max, buffer, bufferOffset);
    // Serialize message field [chargcurrent_code]
    bufferOffset = _serializer.int16(obj.chargcurrent_code, buffer, bufferOffset);
    // Serialize message field [full_capacity]
    bufferOffset = _serializer.int16(obj.full_capacity, buffer, bufferOffset);
    // Serialize message field [loop_counter]
    bufferOffset = _serializer.int16(obj.loop_counter, buffer, bufferOffset);
    // Serialize message field [cell_temp_min]
    bufferOffset = _serializer.int8(obj.cell_temp_min, buffer, bufferOffset);
    // Serialize message field [cell_temp_max]
    bufferOffset = _serializer.int8(obj.cell_temp_max, buffer, bufferOffset);
    // Serialize message field [Pack_tol_volt]
    bufferOffset = _serializer.int16(obj.Pack_tol_volt, buffer, bufferOffset);
    // Serialize message field [Pack_resistance]
    bufferOffset = _serializer.int16(obj.Pack_resistance, buffer, bufferOffset);
    // Serialize message field [total_discharge]
    bufferOffset = _serializer.int32(obj.total_discharge, buffer, bufferOffset);
    // Serialize message field [ASOC_code]
    bufferOffset = _serializer.int16(obj.ASOC_code, buffer, bufferOffset);
    // Serialize message field [scaleunit_code]
    bufferOffset = _serializer.int16(obj.scaleunit_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bot_battery_cmdResponse
    let len;
    let data = new bot_battery_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Command_Params]
    data.Command_Params = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [gen_alarmcode]
    data.gen_alarmcode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [emg_alarmcode]
    data.emg_alarmcode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [chargstate_code]
    data.chargstate_code = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cell_balance_code]
    data.cell_balance_code = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cell_volt_min]
    data.cell_volt_min = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cell_volt_max]
    data.cell_volt_max = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [chargcurrent_code]
    data.chargcurrent_code = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [full_capacity]
    data.full_capacity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [loop_counter]
    data.loop_counter = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cell_temp_min]
    data.cell_temp_min = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cell_temp_max]
    data.cell_temp_max = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Pack_tol_volt]
    data.Pack_tol_volt = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Pack_resistance]
    data.Pack_resistance = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [total_discharge]
    data.total_discharge = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ASOC_code]
    data.ASOC_code = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [scaleunit_code]
    data.scaleunit_code = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 42;
  }

  static datatype() {
    // Returns string type for a service object
    return 'botcmd_msgs/bot_battery_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd94744c0df16401b1a4e02ed7b3c83cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool  result
    int8 Command_Params
    time stamp
    int16 gen_alarmcode		#address : 0x60
    int16 emg_alarmcode		#address : 0x61
    int16 chargstate_code	#address : 0x62
    int16 cell_balance_code	#address : 0x63
    int16 cell_volt_min		#address : 0x64 (mV/unit)
    int16 cell_volt_max		#address : 0x65 (mV/unit)
    int16 chargcurrent_code	#address : 0x66 (10mA/unit or mA/unit)
    int16 full_capacity  	#address : 0x67 (mAH)
    int16 loop_counter  	#address : 0x68 (times)
    int8  cell_temp_min  	#address : 0x69-L (deg C)
    int8  cell_temp_max  	#address : 0x69-H (deg C)
    int16 Pack_tol_volt		#address : 0x6A (10mV/unit or mV/unit)
    int16 Pack_resistance	#address : 0x6B (uOhm)
    int32 total_discharge	#address : 0x6C_D (uAH)
    int16 ASOC_code     	#address : 0x6E (%,absolute (remaining) capacity percentage of the battery pack)
    int16 scaleunit_code	#address : 0x6F (conversion unit for voltage ,current and temperature)
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bot_battery_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.Command_Params !== undefined) {
      resolved.Command_Params = msg.Command_Params;
    }
    else {
      resolved.Command_Params = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.gen_alarmcode !== undefined) {
      resolved.gen_alarmcode = msg.gen_alarmcode;
    }
    else {
      resolved.gen_alarmcode = 0
    }

    if (msg.emg_alarmcode !== undefined) {
      resolved.emg_alarmcode = msg.emg_alarmcode;
    }
    else {
      resolved.emg_alarmcode = 0
    }

    if (msg.chargstate_code !== undefined) {
      resolved.chargstate_code = msg.chargstate_code;
    }
    else {
      resolved.chargstate_code = 0
    }

    if (msg.cell_balance_code !== undefined) {
      resolved.cell_balance_code = msg.cell_balance_code;
    }
    else {
      resolved.cell_balance_code = 0
    }

    if (msg.cell_volt_min !== undefined) {
      resolved.cell_volt_min = msg.cell_volt_min;
    }
    else {
      resolved.cell_volt_min = 0
    }

    if (msg.cell_volt_max !== undefined) {
      resolved.cell_volt_max = msg.cell_volt_max;
    }
    else {
      resolved.cell_volt_max = 0
    }

    if (msg.chargcurrent_code !== undefined) {
      resolved.chargcurrent_code = msg.chargcurrent_code;
    }
    else {
      resolved.chargcurrent_code = 0
    }

    if (msg.full_capacity !== undefined) {
      resolved.full_capacity = msg.full_capacity;
    }
    else {
      resolved.full_capacity = 0
    }

    if (msg.loop_counter !== undefined) {
      resolved.loop_counter = msg.loop_counter;
    }
    else {
      resolved.loop_counter = 0
    }

    if (msg.cell_temp_min !== undefined) {
      resolved.cell_temp_min = msg.cell_temp_min;
    }
    else {
      resolved.cell_temp_min = 0
    }

    if (msg.cell_temp_max !== undefined) {
      resolved.cell_temp_max = msg.cell_temp_max;
    }
    else {
      resolved.cell_temp_max = 0
    }

    if (msg.Pack_tol_volt !== undefined) {
      resolved.Pack_tol_volt = msg.Pack_tol_volt;
    }
    else {
      resolved.Pack_tol_volt = 0
    }

    if (msg.Pack_resistance !== undefined) {
      resolved.Pack_resistance = msg.Pack_resistance;
    }
    else {
      resolved.Pack_resistance = 0
    }

    if (msg.total_discharge !== undefined) {
      resolved.total_discharge = msg.total_discharge;
    }
    else {
      resolved.total_discharge = 0
    }

    if (msg.ASOC_code !== undefined) {
      resolved.ASOC_code = msg.ASOC_code;
    }
    else {
      resolved.ASOC_code = 0
    }

    if (msg.scaleunit_code !== undefined) {
      resolved.scaleunit_code = msg.scaleunit_code;
    }
    else {
      resolved.scaleunit_code = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: bot_battery_cmdRequest,
  Response: bot_battery_cmdResponse,
  md5sum() { return 'bb7196b469ef39d4a1eb0aca82ca76e3'; },
  datatype() { return 'botcmd_msgs/bot_battery_cmd'; }
};