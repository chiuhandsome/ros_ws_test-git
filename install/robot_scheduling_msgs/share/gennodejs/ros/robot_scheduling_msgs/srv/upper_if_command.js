// Auto-generated. Do not edit!

// (in-package robot_scheduling_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robot_topic_command = require('../msg/robot_topic_command.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class upper_if_commandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.upper_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('upper_cmd')) {
        this.upper_cmd = initObj.upper_cmd
      }
      else {
        this.upper_cmd = new robot_topic_command();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type upper_if_commandRequest
    // Serialize message field [upper_cmd]
    bufferOffset = robot_topic_command.serialize(obj.upper_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type upper_if_commandRequest
    let len;
    let data = new upper_if_commandRequest(null);
    // Deserialize message field [upper_cmd]
    data.upper_cmd = robot_topic_command.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += robot_topic_command.getMessageSize(object.upper_cmd);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_scheduling_msgs/upper_if_commandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a0df7aa005700d206435b2924cf5a17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # set command type and its data 
    
    robot_topic_command upper_cmd
    
    ================================================================================
    MSG: robot_scheduling_msgs/robot_topic_command
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
    const resolved = new upper_if_commandRequest(null);
    if (msg.upper_cmd !== undefined) {
      resolved.upper_cmd = robot_topic_command.Resolve(msg.upper_cmd)
    }
    else {
      resolved.upper_cmd = new robot_topic_command()
    }

    return resolved;
    }
};

class upper_if_commandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.result_state = null;
      this.result_data = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('result_state')) {
        this.result_state = initObj.result_state
      }
      else {
        this.result_state = 0;
      }
      if (initObj.hasOwnProperty('result_data')) {
        this.result_data = initObj.result_data
      }
      else {
        this.result_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type upper_if_commandResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [result_state]
    bufferOffset = _serializer.uint8(obj.result_state, buffer, bufferOffset);
    // Serialize message field [result_data]
    bufferOffset = _serializer.string(obj.result_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type upper_if_commandResponse
    let len;
    let data = new upper_if_commandResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result_state]
    data.result_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [result_data]
    data.result_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result_data.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_scheduling_msgs/upper_if_commandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a0189a3df6e9b1777ecbbecbc6f0332';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    uint8 OK=1
    uint8 NOT_OK=2
    uint8 TIMED_OUT=3
    uint8 OUT_OF_TIMES=4
    uint8 result_state
    string result_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new upper_if_commandResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.result_state !== undefined) {
      resolved.result_state = msg.result_state;
    }
    else {
      resolved.result_state = 0
    }

    if (msg.result_data !== undefined) {
      resolved.result_data = msg.result_data;
    }
    else {
      resolved.result_data = ''
    }

    return resolved;
    }
};

// Constants for message
upper_if_commandResponse.Constants = {
  OK: 1,
  NOT_OK: 2,
  TIMED_OUT: 3,
  OUT_OF_TIMES: 4,
}

module.exports = {
  Request: upper_if_commandRequest,
  Response: upper_if_commandResponse,
  md5sum() { return '3942b0151ceecef1e10d75812804f3d8'; },
  datatype() { return 'robot_scheduling_msgs/upper_if_command'; }
};
