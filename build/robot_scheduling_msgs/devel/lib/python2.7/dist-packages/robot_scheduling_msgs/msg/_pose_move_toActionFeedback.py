# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_scheduling_msgs/pose_move_toActionFeedback.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import actionlib_msgs.msg
import genpy
import geometry_msgs.msg
import locomotor_msgs.msg
import nav_2d_msgs.msg
import robot_scheduling_msgs.msg
import std_msgs.msg

class pose_move_toActionFeedback(genpy.Message):
  _md5sum = "a45beabaf7135f1caafb275c8209ea86"
  _type = "robot_scheduling_msgs/pose_move_toActionFeedback"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
pose_move_toFeedback feedback

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
MSG: robot_scheduling_msgs/pose_move_toFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define a feedback message
locomotor_msgs/NavigationState state
float32 percent_complete
float32 distance_traveled
float32 estimated_distance_remaining


================================================================================
MSG: locomotor_msgs/NavigationState
nav_2d_msgs/Pose2DStamped global_pose
nav_2d_msgs/Pose2DStamped local_pose
nav_2d_msgs/Pose2DStamped goal
nav_2d_msgs/Twist2DStamped current_velocity
nav_2d_msgs/Twist2DStamped command_velocity
nav_2d_msgs/Path2D global_plan

================================================================================
MSG: nav_2d_msgs/Pose2DStamped
Header header
geometry_msgs/Pose2D pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Twist2DStamped
std_msgs/Header header
Twist2D velocity

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

================================================================================
MSG: nav_2d_msgs/Path2D
Header header
geometry_msgs/Pose2D[] poses
"""
  __slots__ = ['header','status','feedback']
  _slot_types = ['std_msgs/Header','actionlib_msgs/GoalStatus','robot_scheduling_msgs/pose_move_toFeedback']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,status,feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(pose_move_toActionFeedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.status is None:
        self.status = actionlib_msgs.msg.GoalStatus()
      if self.feedback is None:
        self.feedback = robot_scheduling_msgs.msg.pose_move_toFeedback()
    else:
      self.header = std_msgs.msg.Header()
      self.status = actionlib_msgs.msg.GoalStatus()
      self.feedback = robot_scheduling_msgs.msg.pose_move_toFeedback()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.status.goal_id.stamp.secs, _x.status.goal_id.stamp.nsecs))
      _x = self.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.feedback.state.global_pose.header.seq, _x.feedback.state.global_pose.header.stamp.secs, _x.feedback.state.global_pose.header.stamp.nsecs))
      _x = self.feedback.state.global_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.global_pose.pose.x, _x.feedback.state.global_pose.pose.y, _x.feedback.state.global_pose.pose.theta, _x.feedback.state.local_pose.header.seq, _x.feedback.state.local_pose.header.stamp.secs, _x.feedback.state.local_pose.header.stamp.nsecs))
      _x = self.feedback.state.local_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.local_pose.pose.x, _x.feedback.state.local_pose.pose.y, _x.feedback.state.local_pose.pose.theta, _x.feedback.state.goal.header.seq, _x.feedback.state.goal.header.stamp.secs, _x.feedback.state.goal.header.stamp.nsecs))
      _x = self.feedback.state.goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.goal.pose.x, _x.feedback.state.goal.pose.y, _x.feedback.state.goal.pose.theta, _x.feedback.state.current_velocity.header.seq, _x.feedback.state.current_velocity.header.stamp.secs, _x.feedback.state.current_velocity.header.stamp.nsecs))
      _x = self.feedback.state.current_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.current_velocity.velocity.x, _x.feedback.state.current_velocity.velocity.y, _x.feedback.state.current_velocity.velocity.theta, _x.feedback.state.command_velocity.header.seq, _x.feedback.state.command_velocity.header.stamp.secs, _x.feedback.state.command_velocity.header.stamp.nsecs))
      _x = self.feedback.state.command_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.command_velocity.velocity.x, _x.feedback.state.command_velocity.velocity.y, _x.feedback.state.command_velocity.velocity.theta, _x.feedback.state.global_plan.header.seq, _x.feedback.state.global_plan.header.stamp.secs, _x.feedback.state.global_plan.header.stamp.nsecs))
      _x = self.feedback.state.global_plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.feedback.state.global_plan.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.feedback.state.global_plan.poses:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
      _x = self
      buff.write(_get_struct_3f().pack(_x.feedback.percent_complete, _x.feedback.distance_traveled, _x.feedback.estimated_distance_remaining))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.status is None:
        self.status = actionlib_msgs.msg.GoalStatus()
      if self.feedback is None:
        self.feedback = robot_scheduling_msgs.msg.pose_move_toFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.status.goal_id.stamp.secs, _x.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status.text = str[start:end].decode('utf-8')
      else:
        self.status.text = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.feedback.state.global_pose.header.seq, _x.feedback.state.global_pose.header.stamp.secs, _x.feedback.state.global_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.global_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.global_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.global_pose.pose.x, _x.feedback.state.global_pose.pose.y, _x.feedback.state.global_pose.pose.theta, _x.feedback.state.local_pose.header.seq, _x.feedback.state.local_pose.header.stamp.secs, _x.feedback.state.local_pose.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.local_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.local_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.local_pose.pose.x, _x.feedback.state.local_pose.pose.y, _x.feedback.state.local_pose.pose.theta, _x.feedback.state.goal.header.seq, _x.feedback.state.goal.header.stamp.secs, _x.feedback.state.goal.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.goal.pose.x, _x.feedback.state.goal.pose.y, _x.feedback.state.goal.pose.theta, _x.feedback.state.current_velocity.header.seq, _x.feedback.state.current_velocity.header.stamp.secs, _x.feedback.state.current_velocity.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.current_velocity.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.current_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.current_velocity.velocity.x, _x.feedback.state.current_velocity.velocity.y, _x.feedback.state.current_velocity.velocity.theta, _x.feedback.state.command_velocity.header.seq, _x.feedback.state.command_velocity.header.stamp.secs, _x.feedback.state.command_velocity.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.command_velocity.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.command_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.command_velocity.velocity.x, _x.feedback.state.command_velocity.velocity.y, _x.feedback.state.command_velocity.velocity.theta, _x.feedback.state.global_plan.header.seq, _x.feedback.state.global_plan.header.stamp.secs, _x.feedback.state.global_plan.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.global_plan.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.global_plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.feedback.state.global_plan.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.feedback.state.global_plan.poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.feedback.percent_complete, _x.feedback.distance_traveled, _x.feedback.estimated_distance_remaining,) = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.status.goal_id.stamp.secs, _x.status.goal_id.stamp.nsecs))
      _x = self.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.feedback.state.global_pose.header.seq, _x.feedback.state.global_pose.header.stamp.secs, _x.feedback.state.global_pose.header.stamp.nsecs))
      _x = self.feedback.state.global_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.global_pose.pose.x, _x.feedback.state.global_pose.pose.y, _x.feedback.state.global_pose.pose.theta, _x.feedback.state.local_pose.header.seq, _x.feedback.state.local_pose.header.stamp.secs, _x.feedback.state.local_pose.header.stamp.nsecs))
      _x = self.feedback.state.local_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.local_pose.pose.x, _x.feedback.state.local_pose.pose.y, _x.feedback.state.local_pose.pose.theta, _x.feedback.state.goal.header.seq, _x.feedback.state.goal.header.stamp.secs, _x.feedback.state.goal.header.stamp.nsecs))
      _x = self.feedback.state.goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.goal.pose.x, _x.feedback.state.goal.pose.y, _x.feedback.state.goal.pose.theta, _x.feedback.state.current_velocity.header.seq, _x.feedback.state.current_velocity.header.stamp.secs, _x.feedback.state.current_velocity.header.stamp.nsecs))
      _x = self.feedback.state.current_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.current_velocity.velocity.x, _x.feedback.state.current_velocity.velocity.y, _x.feedback.state.current_velocity.velocity.theta, _x.feedback.state.command_velocity.header.seq, _x.feedback.state.command_velocity.header.stamp.secs, _x.feedback.state.command_velocity.header.stamp.nsecs))
      _x = self.feedback.state.command_velocity.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d3I().pack(_x.feedback.state.command_velocity.velocity.x, _x.feedback.state.command_velocity.velocity.y, _x.feedback.state.command_velocity.velocity.theta, _x.feedback.state.global_plan.header.seq, _x.feedback.state.global_plan.header.stamp.secs, _x.feedback.state.global_plan.header.stamp.nsecs))
      _x = self.feedback.state.global_plan.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.feedback.state.global_plan.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.feedback.state.global_plan.poses:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
      _x = self
      buff.write(_get_struct_3f().pack(_x.feedback.percent_complete, _x.feedback.distance_traveled, _x.feedback.estimated_distance_remaining))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.status is None:
        self.status = actionlib_msgs.msg.GoalStatus()
      if self.feedback is None:
        self.feedback = robot_scheduling_msgs.msg.pose_move_toFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.status.goal_id.stamp.secs, _x.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status.text = str[start:end].decode('utf-8')
      else:
        self.status.text = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.feedback.state.global_pose.header.seq, _x.feedback.state.global_pose.header.stamp.secs, _x.feedback.state.global_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.global_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.global_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.global_pose.pose.x, _x.feedback.state.global_pose.pose.y, _x.feedback.state.global_pose.pose.theta, _x.feedback.state.local_pose.header.seq, _x.feedback.state.local_pose.header.stamp.secs, _x.feedback.state.local_pose.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.local_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.local_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.local_pose.pose.x, _x.feedback.state.local_pose.pose.y, _x.feedback.state.local_pose.pose.theta, _x.feedback.state.goal.header.seq, _x.feedback.state.goal.header.stamp.secs, _x.feedback.state.goal.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.goal.pose.x, _x.feedback.state.goal.pose.y, _x.feedback.state.goal.pose.theta, _x.feedback.state.current_velocity.header.seq, _x.feedback.state.current_velocity.header.stamp.secs, _x.feedback.state.current_velocity.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.current_velocity.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.current_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.current_velocity.velocity.x, _x.feedback.state.current_velocity.velocity.y, _x.feedback.state.current_velocity.velocity.theta, _x.feedback.state.command_velocity.header.seq, _x.feedback.state.command_velocity.header.stamp.secs, _x.feedback.state.command_velocity.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.command_velocity.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.command_velocity.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.feedback.state.command_velocity.velocity.x, _x.feedback.state.command_velocity.velocity.y, _x.feedback.state.command_velocity.velocity.theta, _x.feedback.state.global_plan.header.seq, _x.feedback.state.global_plan.header.stamp.secs, _x.feedback.state.global_plan.header.stamp.nsecs,) = _get_struct_3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feedback.state.global_plan.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.feedback.state.global_plan.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.feedback.state.global_plan.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.feedback.state.global_plan.poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.feedback.percent_complete, _x.feedback.distance_traveled, _x.feedback.estimated_distance_remaining,) = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3d3I = None
def _get_struct_3d3I():
    global _struct_3d3I
    if _struct_3d3I is None:
        _struct_3d3I = struct.Struct("<3d3I")
    return _struct_3d3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
