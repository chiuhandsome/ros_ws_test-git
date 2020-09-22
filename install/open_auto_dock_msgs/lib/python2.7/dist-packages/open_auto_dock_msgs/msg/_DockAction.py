# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from open_auto_dock_msgs/DockAction.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import actionlib_msgs.msg
import genpy
import geometry_msgs.msg
import open_auto_dock_msgs.msg
import std_msgs.msg

class DockAction(genpy.Message):
  _md5sum = "48e3e763fd294e52c4797fb20431664a"
  _type = "open_auto_dock_msgs/DockAction"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

DockActionGoal action_goal
DockActionResult action_result
DockActionFeedback action_feedback

================================================================================
MSG: open_auto_dock_msgs/DockActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
DockGoal goal

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
MSG: open_auto_dock_msgs/DockGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Inital pose of the dock, usually map referenced
# If the header is empty, or quaternion = (0 0 0 0), then
#   the intial dock pose will be straight ahead of the robot
geometry_msgs/PoseStamped dock_pose

# Specify an (optional) name for the dock
string dock_id

# We can optionally request that the docking node call on the
# navigation stack to get near the dock if we are too far away
bool use_move_base

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: open_auto_dock_msgs/DockActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
DockResult result

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
MSG: open_auto_dock_msgs/DockResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Are we docked and charging?
bool docked

# Name of the dock, if known
string dock_id

================================================================================
MSG: open_auto_dock_msgs/DockActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
DockFeedback feedback

================================================================================
MSG: open_auto_dock_msgs/DockFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback is the detected pose of the dock.
geometry_msgs/PoseStamped dock_pose

# Plus the control output
geometry_msgs/Twist command

# Are we docked and charging?Add - 20200616
bool docked


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
float64 z"""
  __slots__ = ['action_goal','action_result','action_feedback']
  _slot_types = ['open_auto_dock_msgs/DockActionGoal','open_auto_dock_msgs/DockActionResult','open_auto_dock_msgs/DockActionFeedback']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       action_goal,action_result,action_feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DockAction, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.action_goal is None:
        self.action_goal = open_auto_dock_msgs.msg.DockActionGoal()
      if self.action_result is None:
        self.action_result = open_auto_dock_msgs.msg.DockActionResult()
      if self.action_feedback is None:
        self.action_feedback = open_auto_dock_msgs.msg.DockActionFeedback()
    else:
      self.action_goal = open_auto_dock_msgs.msg.DockActionGoal()
      self.action_result = open_auto_dock_msgs.msg.DockActionResult()
      self.action_feedback = open_auto_dock_msgs.msg.DockActionFeedback()

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
      buff.write(_get_struct_3I().pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_goal.goal.dock_pose.header.seq, _x.action_goal.goal.dock_pose.header.stamp.secs, _x.action_goal.goal.dock_pose.header.stamp.nsecs))
      _x = self.action_goal.goal.dock_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.action_goal.goal.dock_pose.pose.position.x, _x.action_goal.goal.dock_pose.pose.position.y, _x.action_goal.goal.dock_pose.pose.position.z, _x.action_goal.goal.dock_pose.pose.orientation.x, _x.action_goal.goal.dock_pose.pose.orientation.y, _x.action_goal.goal.dock_pose.pose.orientation.z, _x.action_goal.goal.dock_pose.pose.orientation.w))
      _x = self.action_goal.goal.dock_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.action_goal.goal.use_move_base, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.action_result.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.action_result.result.docked
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_result.result.dock_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.action_feedback.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_feedback.feedback.dock_pose.header.seq, _x.action_feedback.feedback.dock_pose.header.stamp.secs, _x.action_feedback.feedback.dock_pose.header.stamp.nsecs))
      _x = self.action_feedback.feedback.dock_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_13dB().pack(_x.action_feedback.feedback.dock_pose.pose.position.x, _x.action_feedback.feedback.dock_pose.pose.position.y, _x.action_feedback.feedback.dock_pose.pose.position.z, _x.action_feedback.feedback.dock_pose.pose.orientation.x, _x.action_feedback.feedback.dock_pose.pose.orientation.y, _x.action_feedback.feedback.dock_pose.pose.orientation.z, _x.action_feedback.feedback.dock_pose.pose.orientation.w, _x.action_feedback.feedback.command.linear.x, _x.action_feedback.feedback.command.linear.y, _x.action_feedback.feedback.command.linear.z, _x.action_feedback.feedback.command.angular.x, _x.action_feedback.feedback.command.angular.y, _x.action_feedback.feedback.command.angular.z, _x.action_feedback.feedback.docked))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.action_goal is None:
        self.action_goal = open_auto_dock_msgs.msg.DockActionGoal()
      if self.action_result is None:
        self.action_result = open_auto_dock_msgs.msg.DockActionResult()
      if self.action_feedback is None:
        self.action_feedback = open_auto_dock_msgs.msg.DockActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_goal.goal.dock_pose.header.seq, _x.action_goal.goal.dock_pose.header.stamp.secs, _x.action_goal.goal.dock_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal.dock_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal.dock_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.action_goal.goal.dock_pose.pose.position.x, _x.action_goal.goal.dock_pose.pose.position.y, _x.action_goal.goal.dock_pose.pose.position.z, _x.action_goal.goal.dock_pose.pose.orientation.x, _x.action_goal.goal.dock_pose.pose.orientation.y, _x.action_goal.goal.dock_pose.pose.orientation.z, _x.action_goal.goal.dock_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal.dock_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal.dock_id = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.action_goal.goal.use_move_base, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.action_goal.goal.use_move_base = bool(self.action_goal.goal.use_move_base)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8')
      else:
        self.action_result.status.text = str[start:end]
      start = end
      end += 1
      (self.action_result.result.docked,) = _get_struct_B().unpack(str[start:end])
      self.action_result.result.docked = bool(self.action_result.result.docked)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.result.dock_id = str[start:end].decode('utf-8')
      else:
        self.action_result.result.dock_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.text = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_feedback.feedback.dock_pose.header.seq, _x.action_feedback.feedback.dock_pose.header.stamp.secs, _x.action_feedback.feedback.dock_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.feedback.dock_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.feedback.dock_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 105
      (_x.action_feedback.feedback.dock_pose.pose.position.x, _x.action_feedback.feedback.dock_pose.pose.position.y, _x.action_feedback.feedback.dock_pose.pose.position.z, _x.action_feedback.feedback.dock_pose.pose.orientation.x, _x.action_feedback.feedback.dock_pose.pose.orientation.y, _x.action_feedback.feedback.dock_pose.pose.orientation.z, _x.action_feedback.feedback.dock_pose.pose.orientation.w, _x.action_feedback.feedback.command.linear.x, _x.action_feedback.feedback.command.linear.y, _x.action_feedback.feedback.command.linear.z, _x.action_feedback.feedback.command.angular.x, _x.action_feedback.feedback.command.angular.y, _x.action_feedback.feedback.command.angular.z, _x.action_feedback.feedback.docked,) = _get_struct_13dB().unpack(str[start:end])
      self.action_feedback.feedback.docked = bool(self.action_feedback.feedback.docked)
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
      buff.write(_get_struct_3I().pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_goal.goal.dock_pose.header.seq, _x.action_goal.goal.dock_pose.header.stamp.secs, _x.action_goal.goal.dock_pose.header.stamp.nsecs))
      _x = self.action_goal.goal.dock_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.action_goal.goal.dock_pose.pose.position.x, _x.action_goal.goal.dock_pose.pose.position.y, _x.action_goal.goal.dock_pose.pose.position.z, _x.action_goal.goal.dock_pose.pose.orientation.x, _x.action_goal.goal.dock_pose.pose.orientation.y, _x.action_goal.goal.dock_pose.pose.orientation.z, _x.action_goal.goal.dock_pose.pose.orientation.w))
      _x = self.action_goal.goal.dock_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.action_goal.goal.use_move_base, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.action_result.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.action_result.result.docked
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_result.result.dock_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.action_feedback.status.status
      buff.write(_get_struct_B().pack(_x))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.action_feedback.feedback.dock_pose.header.seq, _x.action_feedback.feedback.dock_pose.header.stamp.secs, _x.action_feedback.feedback.dock_pose.header.stamp.nsecs))
      _x = self.action_feedback.feedback.dock_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_13dB().pack(_x.action_feedback.feedback.dock_pose.pose.position.x, _x.action_feedback.feedback.dock_pose.pose.position.y, _x.action_feedback.feedback.dock_pose.pose.position.z, _x.action_feedback.feedback.dock_pose.pose.orientation.x, _x.action_feedback.feedback.dock_pose.pose.orientation.y, _x.action_feedback.feedback.dock_pose.pose.orientation.z, _x.action_feedback.feedback.dock_pose.pose.orientation.w, _x.action_feedback.feedback.command.linear.x, _x.action_feedback.feedback.command.linear.y, _x.action_feedback.feedback.command.linear.z, _x.action_feedback.feedback.command.angular.x, _x.action_feedback.feedback.command.angular.y, _x.action_feedback.feedback.command.angular.z, _x.action_feedback.feedback.docked))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.action_goal is None:
        self.action_goal = open_auto_dock_msgs.msg.DockActionGoal()
      if self.action_result is None:
        self.action_result = open_auto_dock_msgs.msg.DockActionResult()
      if self.action_feedback is None:
        self.action_feedback = open_auto_dock_msgs.msg.DockActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_goal.goal.dock_pose.header.seq, _x.action_goal.goal.dock_pose.header.stamp.secs, _x.action_goal.goal.dock_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal.dock_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal.dock_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.action_goal.goal.dock_pose.pose.position.x, _x.action_goal.goal.dock_pose.pose.position.y, _x.action_goal.goal.dock_pose.pose.position.z, _x.action_goal.goal.dock_pose.pose.orientation.x, _x.action_goal.goal.dock_pose.pose.orientation.y, _x.action_goal.goal.dock_pose.pose.orientation.z, _x.action_goal.goal.dock_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal.dock_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal.dock_id = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.action_goal.goal.use_move_base, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.action_goal.goal.use_move_base = bool(self.action_goal.goal.use_move_base)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8')
      else:
        self.action_result.status.text = str[start:end]
      start = end
      end += 1
      (self.action_result.result.docked,) = _get_struct_B().unpack(str[start:end])
      self.action_result.result.docked = bool(self.action_result.result.docked)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.result.dock_id = str[start:end].decode('utf-8')
      else:
        self.action_result.result.dock_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.text = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_feedback.feedback.dock_pose.header.seq, _x.action_feedback.feedback.dock_pose.header.stamp.secs, _x.action_feedback.feedback.dock_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.feedback.dock_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.feedback.dock_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 105
      (_x.action_feedback.feedback.dock_pose.pose.position.x, _x.action_feedback.feedback.dock_pose.pose.position.y, _x.action_feedback.feedback.dock_pose.pose.position.z, _x.action_feedback.feedback.dock_pose.pose.orientation.x, _x.action_feedback.feedback.dock_pose.pose.orientation.y, _x.action_feedback.feedback.dock_pose.pose.orientation.z, _x.action_feedback.feedback.dock_pose.pose.orientation.w, _x.action_feedback.feedback.command.linear.x, _x.action_feedback.feedback.command.linear.y, _x.action_feedback.feedback.command.linear.z, _x.action_feedback.feedback.command.angular.x, _x.action_feedback.feedback.command.angular.y, _x.action_feedback.feedback.command.angular.z, _x.action_feedback.feedback.docked,) = _get_struct_13dB().unpack(str[start:end])
      self.action_feedback.feedback.docked = bool(self.action_feedback.feedback.docked)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_13dB = None
def _get_struct_13dB():
    global _struct_13dB
    if _struct_13dB is None:
        _struct_13dB = struct.Struct("<13dB")
    return _struct_13dB
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
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_B3I = None
def _get_struct_B3I():
    global _struct_B3I
    if _struct_B3I is None:
        _struct_B3I = struct.Struct("<B3I")
    return _struct_B3I
