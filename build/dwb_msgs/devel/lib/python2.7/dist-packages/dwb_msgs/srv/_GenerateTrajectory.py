# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dwb_msgs/GenerateTrajectoryRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import nav_2d_msgs.msg

class GenerateTrajectoryRequest(genpy.Message):
  _md5sum = "c12676b96c40b5308f43475d17c2db1c"
  _type = "dwb_msgs/GenerateTrajectoryRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# For a given start pose, velocity and desired velocity, generate which poses will be visited
geometry_msgs/Pose2D start_pose
nav_2d_msgs/Twist2D start_vel
nav_2d_msgs/Twist2D cmd_vel

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
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta
"""
  __slots__ = ['start_pose','start_vel','cmd_vel']
  _slot_types = ['geometry_msgs/Pose2D','nav_2d_msgs/Twist2D','nav_2d_msgs/Twist2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       start_pose,start_vel,cmd_vel

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenerateTrajectoryRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.start_pose is None:
        self.start_pose = geometry_msgs.msg.Pose2D()
      if self.start_vel is None:
        self.start_vel = nav_2d_msgs.msg.Twist2D()
      if self.cmd_vel is None:
        self.cmd_vel = nav_2d_msgs.msg.Twist2D()
    else:
      self.start_pose = geometry_msgs.msg.Pose2D()
      self.start_vel = nav_2d_msgs.msg.Twist2D()
      self.cmd_vel = nav_2d_msgs.msg.Twist2D()

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
      buff.write(_get_struct_9d().pack(_x.start_pose.x, _x.start_pose.y, _x.start_pose.theta, _x.start_vel.x, _x.start_vel.y, _x.start_vel.theta, _x.cmd_vel.x, _x.cmd_vel.y, _x.cmd_vel.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.start_pose is None:
        self.start_pose = geometry_msgs.msg.Pose2D()
      if self.start_vel is None:
        self.start_vel = nav_2d_msgs.msg.Twist2D()
      if self.cmd_vel is None:
        self.cmd_vel = nav_2d_msgs.msg.Twist2D()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.start_pose.x, _x.start_pose.y, _x.start_pose.theta, _x.start_vel.x, _x.start_vel.y, _x.start_vel.theta, _x.cmd_vel.x, _x.cmd_vel.y, _x.cmd_vel.theta,) = _get_struct_9d().unpack(str[start:end])
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
      buff.write(_get_struct_9d().pack(_x.start_pose.x, _x.start_pose.y, _x.start_pose.theta, _x.start_vel.x, _x.start_vel.y, _x.start_vel.theta, _x.cmd_vel.x, _x.cmd_vel.y, _x.cmd_vel.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.start_pose is None:
        self.start_pose = geometry_msgs.msg.Pose2D()
      if self.start_vel is None:
        self.start_vel = nav_2d_msgs.msg.Twist2D()
      if self.cmd_vel is None:
        self.cmd_vel = nav_2d_msgs.msg.Twist2D()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.start_pose.x, _x.start_pose.y, _x.start_pose.theta, _x.start_vel.x, _x.start_vel.y, _x.start_vel.theta, _x.cmd_vel.x, _x.cmd_vel.y, _x.cmd_vel.theta,) = _get_struct_9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dwb_msgs/GenerateTrajectoryResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dwb_msgs.msg
import genpy
import geometry_msgs.msg
import nav_2d_msgs.msg

class GenerateTrajectoryResponse(genpy.Message):
  _md5sum = "cfa75653fc81c4830452cf99eb524cb4"
  _type = "dwb_msgs/GenerateTrajectoryResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Trajectory2D traj


================================================================================
MSG: dwb_msgs/Trajectory2D
# For a given velocity command, the poses that the robot will go to in the allotted time.

# Input Velocity
nav_2d_msgs/Twist2D velocity

# Poses the robot will go to, given our kinematic model
geometry_msgs/Pose2D[] poses

# Time difference between the current pose and the poses in the trajectory.
# Parallel array to poses. Length should be the same.
duration[] time_offsets

================================================================================
MSG: nav_2d_msgs/Twist2D
float64 x
float64 y
float64 theta

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
"""
  __slots__ = ['traj']
  _slot_types = ['dwb_msgs/Trajectory2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       traj

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenerateTrajectoryResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.traj is None:
        self.traj = dwb_msgs.msg.Trajectory2D()
    else:
      self.traj = dwb_msgs.msg.Trajectory2D()

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
      buff.write(_get_struct_3d().pack(_x.traj.velocity.x, _x.traj.velocity.y, _x.traj.velocity.theta))
      length = len(self.traj.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.traj.poses:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
      length = len(self.traj.time_offsets)
      buff.write(_struct_I.pack(length))
      for val1 in self.traj.time_offsets:
        _x = val1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.traj is None:
        self.traj = dwb_msgs.msg.Trajectory2D()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.traj.velocity.x, _x.traj.velocity.y, _x.traj.velocity.theta,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.traj.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.traj.poses.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.traj.time_offsets = []
      for i in range(0, length):
        val1 = genpy.Duration()
        _x = val1
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.traj.time_offsets.append(val1)
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
      buff.write(_get_struct_3d().pack(_x.traj.velocity.x, _x.traj.velocity.y, _x.traj.velocity.theta))
      length = len(self.traj.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.traj.poses:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
      length = len(self.traj.time_offsets)
      buff.write(_struct_I.pack(length))
      for val1 in self.traj.time_offsets:
        _x = val1
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.traj is None:
        self.traj = dwb_msgs.msg.Trajectory2D()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.traj.velocity.x, _x.traj.velocity.y, _x.traj.velocity.theta,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.traj.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.traj.poses.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.traj.time_offsets = []
      for i in range(0, length):
        val1 = genpy.Duration()
        _x = val1
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        self.traj.time_offsets.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class GenerateTrajectory(object):
  _type          = 'dwb_msgs/GenerateTrajectory'
  _md5sum = 'a53a5ac380b5d14cb0057919063c0b54'
  _request_class  = GenerateTrajectoryRequest
  _response_class = GenerateTrajectoryResponse
