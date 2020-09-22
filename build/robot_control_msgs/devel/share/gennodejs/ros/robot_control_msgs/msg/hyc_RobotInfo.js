// Auto-generated. Do not edit!

// (in-package robot_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class hyc_RobotInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_name = null;
      this.pose = null;
      this.current_route_segment = null;
      this.shape = null;
      this.shape_variables = null;
      this.handler_type = null;
      this.battery_id = null;
      this.battery_capacity = null;
      this.battery_chargetime = null;
      this.battery_servicetime = null;
      this.mode = null;
      this.status = null;
      this.error_code = null;
      this.good_id = null;
      this.order_id = null;
      this.order_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('current_route_segment')) {
        this.current_route_segment = initObj.current_route_segment
      }
      else {
        this.current_route_segment = 0;
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = 0;
      }
      if (initObj.hasOwnProperty('shape_variables')) {
        this.shape_variables = initObj.shape_variables
      }
      else {
        this.shape_variables = [];
      }
      if (initObj.hasOwnProperty('handler_type')) {
        this.handler_type = initObj.handler_type
      }
      else {
        this.handler_type = 0;
      }
      if (initObj.hasOwnProperty('battery_id')) {
        this.battery_id = initObj.battery_id
      }
      else {
        this.battery_id = '';
      }
      if (initObj.hasOwnProperty('battery_capacity')) {
        this.battery_capacity = initObj.battery_capacity
      }
      else {
        this.battery_capacity = 0.0;
      }
      if (initObj.hasOwnProperty('battery_chargetime')) {
        this.battery_chargetime = initObj.battery_chargetime
      }
      else {
        this.battery_chargetime = 0;
      }
      if (initObj.hasOwnProperty('battery_servicetime')) {
        this.battery_servicetime = initObj.battery_servicetime
      }
      else {
        this.battery_servicetime = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = '';
      }
      if (initObj.hasOwnProperty('good_id')) {
        this.good_id = initObj.good_id
      }
      else {
        this.good_id = 0;
      }
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = 0;
      }
      if (initObj.hasOwnProperty('order_status')) {
        this.order_status = initObj.order_status
      }
      else {
        this.order_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hyc_RobotInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [current_route_segment]
    bufferOffset = _serializer.int32(obj.current_route_segment, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = _serializer.int32(obj.shape, buffer, bufferOffset);
    // Serialize message field [shape_variables]
    bufferOffset = _arraySerializer.float32(obj.shape_variables, buffer, bufferOffset, null);
    // Serialize message field [handler_type]
    bufferOffset = _serializer.int32(obj.handler_type, buffer, bufferOffset);
    // Serialize message field [battery_id]
    bufferOffset = _serializer.string(obj.battery_id, buffer, bufferOffset);
    // Serialize message field [battery_capacity]
    bufferOffset = _serializer.float32(obj.battery_capacity, buffer, bufferOffset);
    // Serialize message field [battery_chargetime]
    bufferOffset = _serializer.int32(obj.battery_chargetime, buffer, bufferOffset);
    // Serialize message field [battery_servicetime]
    bufferOffset = _serializer.int32(obj.battery_servicetime, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    // Serialize message field [good_id]
    bufferOffset = _serializer.int32(obj.good_id, buffer, bufferOffset);
    // Serialize message field [order_id]
    bufferOffset = _serializer.int32(obj.order_id, buffer, bufferOffset);
    // Serialize message field [order_status]
    bufferOffset = _serializer.int32(obj.order_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hyc_RobotInfo
    let len;
    let data = new hyc_RobotInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_route_segment]
    data.current_route_segment = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shape_variables]
    data.shape_variables = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [handler_type]
    data.handler_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [battery_id]
    data.battery_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [battery_capacity]
    data.battery_capacity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_chargetime]
    data.battery_chargetime = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [battery_servicetime]
    data.battery_servicetime = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [good_id]
    data.good_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [order_status]
    data.order_status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.robot_name.length;
    length += 4 * object.shape_variables.length;
    length += object.battery_id.length;
    length += object.error_code.length;
    return length + 404;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control_msgs/hyc_RobotInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acf6224ebc0054473268910daf81c8c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## Presents dynamic parameters of a hyc'srobot
    #################################################################
    
    Header header                           # the creation time
    string robot_name                       # the name of the robot (used in preconditions and topics)
    geometry_msgs/PoseWithCovariance pose   # the robots current pose within the frame related to the msgs header
    #RoutePrecondition sync                  # the current position in the last received plan (-1 means none)
    int32 current_route_segment      	# the segment nr of the route executed by the given robot
    ############### shape type of robot ###################################
    int32 shape                             # the shape of the robots (see enums)
    float32[] shape_variables               # shape variables to define width height, ...
    
    int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars
    ############### type of robot ###################################
    int32   handler_type                    # the type of Handling module
    
    int32 HANDLERTYPE_NA = 0                # undefined Handling module
    int32 HANDLERTYPE_ROLLER = 1            # roller type of  Handling module
    int32 HANDLERTYPE_ARM = 2            	# robot_arm of  Handling module
    int32 HANDLERTYPE_PNP = 3            	# pick_place of  Handling module
    ############### type of target align ############################
    #int32   align_type                      # the type of target align
    #string  align_id                        # the id of target align (position-align management db)
    
    #int32 ALIGNTYPE_NA = 0                  # undefined type of target align
    #int32 ALIGNTYPE_DOCKER = 1              # docker type of target align
    ############### type of target align ############################
    string  battery_id 			# the id of battery (battery management db included maintenance)
    float32 battery_capacity		# unit: %
    int32 battery_chargetime      
    int32 battery_servicetime   		# using time caculation (uint: minute)
    ############### type of mode ####################################
    int32   mode                            # the mode of operation
    
    int32 MODE_NA = 0                   	# undefined mode
    int32 MODE_IDLE = 1                 	# robot is idle
    int32 MODE_SEGMENT_FOLLOWING = 2    	# robot is in mode segment following
    int32 MODE_PICKUP = 3               	# robot is picking up goods
    ############### type of status ####################################
    int32   status                          # the status of the robot
    string  error_code 			# the error_code of robot (error_code management db included its history)
    
    int32 STATUS_NONE = -1            	# robot is not_ready (stm not ready ...)
    int32 STATUS_DRIVING = 0            	# robot is driving
    int32 STATUS_STOPPED = 1            	# robot has stopped
    int32 STATUS_DONE = 2               	# robot has finished its last job
    int32 STATUS_BROKEN = 3             	# robot is broken and not ready for any task
    
    ############### order's information ################################
    int32   good_id                         # the good id attached to the robot
    
    int32 GOOD_EMPTY = -1               	# no goods attached
    int32 GOOD_NA = -2                  	# undefined good
    ############### order's information ################################
    int32   order_id                        # the order id scheduled to this robot (-1: none)
    int32   order_status                    # the status of the assigned order
    
    int32 ORDER_NONE = 0                	# no order assigned
    int32 ORDER_APPROACH = 1            	# the robot approaches the first station of the order
    int32 ORDER_PICKUP = 2              	# the robot picks up a good at the station
    int32 ORDER_TRANSPORT = 3          	# the robot currently transports a good from one station to another
    int32 ORDER_DROP = 4                	# the robot drops a good at the last station of its order, finishing the order
    int32 ORDER_FINSIH = 5              	# the robot drops a good at the last station of its order, finishing the order
    
    
    
    
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    const resolved = new hyc_RobotInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.current_route_segment !== undefined) {
      resolved.current_route_segment = msg.current_route_segment;
    }
    else {
      resolved.current_route_segment = 0
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = 0
    }

    if (msg.shape_variables !== undefined) {
      resolved.shape_variables = msg.shape_variables;
    }
    else {
      resolved.shape_variables = []
    }

    if (msg.handler_type !== undefined) {
      resolved.handler_type = msg.handler_type;
    }
    else {
      resolved.handler_type = 0
    }

    if (msg.battery_id !== undefined) {
      resolved.battery_id = msg.battery_id;
    }
    else {
      resolved.battery_id = ''
    }

    if (msg.battery_capacity !== undefined) {
      resolved.battery_capacity = msg.battery_capacity;
    }
    else {
      resolved.battery_capacity = 0.0
    }

    if (msg.battery_chargetime !== undefined) {
      resolved.battery_chargetime = msg.battery_chargetime;
    }
    else {
      resolved.battery_chargetime = 0
    }

    if (msg.battery_servicetime !== undefined) {
      resolved.battery_servicetime = msg.battery_servicetime;
    }
    else {
      resolved.battery_servicetime = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = ''
    }

    if (msg.good_id !== undefined) {
      resolved.good_id = msg.good_id;
    }
    else {
      resolved.good_id = 0
    }

    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = 0
    }

    if (msg.order_status !== undefined) {
      resolved.order_status = msg.order_status;
    }
    else {
      resolved.order_status = 0
    }

    return resolved;
    }
};

// Constants for message
hyc_RobotInfo.Constants = {
  SHAPE_CIRCLE: 0,
  HANDLERTYPE_NA: 0,
  HANDLERTYPE_ROLLER: 1,
  HANDLERTYPE_ARM: 2,
  HANDLERTYPE_PNP: 3,
  MODE_NA: 0,
  MODE_IDLE: 1,
  MODE_SEGMENT_FOLLOWING: 2,
  MODE_PICKUP: 3,
  STATUS_NONE: -1,
  STATUS_DRIVING: 0,
  STATUS_STOPPED: 1,
  STATUS_DONE: 2,
  STATUS_BROKEN: 3,
  GOOD_EMPTY: -1,
  GOOD_NA: -2,
  ORDER_NONE: 0,
  ORDER_APPROACH: 1,
  ORDER_PICKUP: 2,
  ORDER_TRANSPORT: 3,
  ORDER_DROP: 4,
  ORDER_FINSIH: 5,
}

module.exports = hyc_RobotInfo;
