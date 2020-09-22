// Auto-generated. Do not edit!

// (in-package open_auto_dock_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class UndockFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dock_pose = null;
      this.command = null;
      this.undocked = null;
    }
    else {
      if (initObj.hasOwnProperty('dock_pose')) {
        this.dock_pose = initObj.dock_pose
      }
      else {
        this.dock_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('undocked')) {
        this.undocked = initObj.undocked
      }
      else {
        this.undocked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UndockFeedback
    // Serialize message field [dock_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.dock_pose, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [undocked]
    bufferOffset = _serializer.bool(obj.undocked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UndockFeedback
    let len;
    let data = new UndockFeedback(null);
    // Deserialize message field [dock_pose]
    data.dock_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [undocked]
    data.undocked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.dock_pose);
    return length + 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'open_auto_dock_msgs/UndockFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60fe99876b8f0449f8591b17648ca7bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Feedback is the detected pose of the dock.
    geometry_msgs/PoseStamped dock_pose
    
    # Plus the control output
    geometry_msgs/Twist command
    
    # Have we undocked?
    bool undocked
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UndockFeedback(null);
    if (msg.dock_pose !== undefined) {
      resolved.dock_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.dock_pose)
    }
    else {
      resolved.dock_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.command !== undefined) {
      resolved.command = geometry_msgs.msg.Twist.Resolve(msg.command)
    }
    else {
      resolved.command = new geometry_msgs.msg.Twist()
    }

    if (msg.undocked !== undefined) {
      resolved.undocked = msg.undocked;
    }
    else {
      resolved.undocked = false
    }

    return resolved;
    }
};

module.exports = UndockFeedback;
