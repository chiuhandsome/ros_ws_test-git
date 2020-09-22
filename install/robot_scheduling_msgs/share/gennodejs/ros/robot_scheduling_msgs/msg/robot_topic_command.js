// Auto-generated. Do not edit!

// (in-package robot_scheduling_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class robot_topic_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.cmd_type = null;
      this.cmd_id = null;
      this.cmd_data = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('cmd_id')) {
        this.cmd_id = initObj.cmd_id
      }
      else {
        this.cmd_id = 0;
      }
      if (initObj.hasOwnProperty('cmd_data')) {
        this.cmd_data = initObj.cmd_data
      }
      else {
        this.cmd_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_topic_command
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [cmd_id]
    bufferOffset = _serializer.uint16(obj.cmd_id, buffer, bufferOffset);
    // Serialize message field [cmd_data]
    bufferOffset = _serializer.string(obj.cmd_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_topic_command
    let len;
    let data = new robot_topic_command(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_id]
    data.cmd_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cmd_data]
    data.cmd_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_name.length;
    length += object.cmd_data.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scheduling_msgs/robot_topic_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69f0d27f0773a518111335f643914c01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # set command type and its data 
    string robot_name                        # the name of the robot (used in preconditions and topics)
    #--------------------------
    uint8 GET_STATUS=1
    uint8 SET_COMMAND=2
    uint8 cmd_type
    #--------------------------	
    uint16 STATUS=1	 
    uint16 MODE_STANDBY=3	
    uint16 MODE_MANUAL=4	 
    uint16 MODE_REMOTE=5
    uint16 MODE_MANU_ACT=40	
    uint16 MODE_MANU_SET=41
    uint16 MODE_MANU_NONE=400
    uint16 MODE_MANU_PLANTOEXEC=410	
    uint16 MODE_MANU_PLANTOEXEC_RUN=411
    uint16 MODE_MANU_PLANTOEXEC_END=412	
    uint16 MODE_MANU_MOVEINT=420	
    uint16 MODE_MANU_MOVE=430	
    uint16 MODE_MANU_TURN=440
    uint16 MODE_MANU_WORKSHEET=450	
    uint16 MODE_MANU_SAVE=460
    
    uint16 MODE_REMOTE_ACT=50	
    uint16 MODE_REMOTE_SET=51
    uint16 MODE_REMOTE_NONE=500
    uint16 MODE_REMOTEP_WORKSHEET=510
    uint16 MODE_REMOTEP_WORKSHEET_CONT_TEST=520
    
    #uint16 MODE_REMOTE_WORKSHEET_ACT=50
    #uint16 MODE_REMOTE_WORKSHEET_NO=51
    #uint16 ALARM_CONF=61	
    uint16 ALARM_RESET=60	
    uint16 ALARM_RECOVERY_ACT=70
    uint16 ALARM_RECOVERY_SET=71
    uint16 ALARM_RECOVERY_NONE=700
    uint16 ALARM_RECOVERY_PLANTOEXEC=710	
    uint16 SYSTEM_RESTART=80	
    uint16 cmd_id  	
    #--------------------------
    string cmd_data
    #--------------------------
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_topic_command(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.cmd_id !== undefined) {
      resolved.cmd_id = msg.cmd_id;
    }
    else {
      resolved.cmd_id = 0
    }

    if (msg.cmd_data !== undefined) {
      resolved.cmd_data = msg.cmd_data;
    }
    else {
      resolved.cmd_data = ''
    }

    return resolved;
    }
};

// Constants for message
robot_topic_command.Constants = {
  GET_STATUS: 1,
  SET_COMMAND: 2,
  STATUS: 1,
  MODE_STANDBY: 3,
  MODE_MANUAL: 4,
  MODE_REMOTE: 5,
  MODE_MANU_ACT: 40,
  MODE_MANU_SET: 41,
  MODE_MANU_NONE: 400,
  MODE_MANU_PLANTOEXEC: 410,
  MODE_MANU_PLANTOEXEC_RUN: 411,
  MODE_MANU_PLANTOEXEC_END: 412,
  MODE_MANU_MOVEINT: 420,
  MODE_MANU_MOVE: 430,
  MODE_MANU_TURN: 440,
  MODE_MANU_WORKSHEET: 450,
  MODE_MANU_SAVE: 460,
  MODE_REMOTE_ACT: 50,
  MODE_REMOTE_SET: 51,
  MODE_REMOTE_NONE: 500,
  MODE_REMOTEP_WORKSHEET: 510,
  MODE_REMOTEP_WORKSHEET_CONT_TEST: 520,
  ALARM_RESET: 60,
  ALARM_RECOVERY_ACT: 70,
  ALARM_RECOVERY_SET: 71,
  ALARM_RECOVERY_NONE: 700,
  ALARM_RECOVERY_PLANTOEXEC: 710,
  SYSTEM_RESTART: 80,
}

module.exports = robot_topic_command;
