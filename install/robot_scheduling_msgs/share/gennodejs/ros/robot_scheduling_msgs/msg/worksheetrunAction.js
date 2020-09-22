// Auto-generated. Do not edit!

// (in-package robot_scheduling_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let worksheetrunActionGoal = require('./worksheetrunActionGoal.js');
let worksheetrunActionResult = require('./worksheetrunActionResult.js');
let worksheetrunActionFeedback = require('./worksheetrunActionFeedback.js');

//-----------------------------------------------------------

class worksheetrunAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new worksheetrunActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new worksheetrunActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new worksheetrunActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type worksheetrunAction
    // Serialize message field [action_goal]
    bufferOffset = worksheetrunActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = worksheetrunActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = worksheetrunActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type worksheetrunAction
    let len;
    let data = new worksheetrunAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = worksheetrunActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = worksheetrunActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = worksheetrunActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += worksheetrunActionGoal.getMessageSize(object.action_goal);
    length += worksheetrunActionResult.getMessageSize(object.action_result);
    length += worksheetrunActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_scheduling_msgs/worksheetrunAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cbd17c83be57790a53a046922f0c99f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    worksheetrunActionGoal action_goal
    worksheetrunActionResult action_result
    worksheetrunActionFeedback action_feedback
    
    ================================================================================
    MSG: robot_scheduling_msgs/worksheetrunActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    worksheetrunGoal goal
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: robot_scheduling_msgs/worksheetrunGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the goal
    uint8 WS_DETAILCHECK=1
    uint8 WS_RUNCHECK=2
    uint8 WS_RUN=3
    uint8 WS_RUNFINISh=4
    uint8 WS_RUNNEXT=5
    uint8 WS_ASSIGNINDEX=6
    uint8 WS_POSERUNCHECK=7
    uint8 WS_POSTTURNCHECK=8
    uint8 cmd_id
    string cmd_data
    #string db_process_ac_name
    
    ================================================================================
    MSG: robot_scheduling_msgs/worksheetrunActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    worksheetrunResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: robot_scheduling_msgs/worksheetrunResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the result
    uint8 OK=1
    uint8 NOT_OK=2
    uint8 TIMED_OUT=3
    uint8 OUT_OF_TIMES=4
    uint8 PASS=5
    uint8 NOT_FINISH=6
    uint8 result
    
    ================================================================================
    MSG: robot_scheduling_msgs/worksheetrunActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    worksheetrunFeedback feedback
    
    ================================================================================
    MSG: robot_scheduling_msgs/worksheetrunFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define a feedback message
    uint8 current_index
    uint8 current_function
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new worksheetrunAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = worksheetrunActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new worksheetrunActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = worksheetrunActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new worksheetrunActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = worksheetrunActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new worksheetrunActionFeedback()
    }

    return resolved;
    }
};

module.exports = worksheetrunAction;
