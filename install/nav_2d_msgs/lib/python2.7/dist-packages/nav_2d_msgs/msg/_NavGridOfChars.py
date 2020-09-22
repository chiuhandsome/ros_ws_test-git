# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from nav_2d_msgs/NavGridOfChars.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import nav_2d_msgs.msg

class NavGridOfChars(genpy.Message):
  _md5sum = "396563c1db71f1080855e692b0310f96"
  _type = "nav_2d_msgs/NavGridOfChars"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time stamp
NavGridInfo info
# The map data, in row-major order, starting with (0,0).
# Unlike nav_msgs/OccupancyGrid, the values are [0, 256), not [-1, 100]
uint8[] data

================================================================================
MSG: nav_2d_msgs/NavGridInfo
uint32 width
uint32 height
float64 resolution
string frame_id
float64 origin_x
float64 origin_y
"""
  __slots__ = ['stamp','info','data']
  _slot_types = ['time','nav_2d_msgs/NavGridInfo','uint8[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,info,data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavGridOfChars, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.info is None:
        self.info = nav_2d_msgs.msg.NavGridInfo()
      if self.data is None:
        self.data = b''
    else:
      self.stamp = genpy.Time()
      self.info = nav_2d_msgs.msg.NavGridInfo()
      self.data = b''

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
      buff.write(_get_struct_4Id().pack(_x.stamp.secs, _x.stamp.nsecs, _x.info.width, _x.info.height, _x.info.resolution))
      _x = self.info.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2d().pack(_x.info.origin_x, _x.info.origin_y))
      _x = self.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.info is None:
        self.info = nav_2d_msgs.msg.NavGridInfo()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.stamp.secs, _x.stamp.nsecs, _x.info.width, _x.info.height, _x.info.resolution,) = _get_struct_4Id().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.info.frame_id = str[start:end].decode('utf-8')
      else:
        self.info.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.info.origin_x, _x.info.origin_y,) = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data = str[start:end]
      self.stamp.canon()
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
      buff.write(_get_struct_4Id().pack(_x.stamp.secs, _x.stamp.nsecs, _x.info.width, _x.info.height, _x.info.resolution))
      _x = self.info.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2d().pack(_x.info.origin_x, _x.info.origin_y))
      _x = self.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.info is None:
        self.info = nav_2d_msgs.msg.NavGridInfo()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.stamp.secs, _x.stamp.nsecs, _x.info.width, _x.info.height, _x.info.resolution,) = _get_struct_4Id().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.info.frame_id = str[start:end].decode('utf-8')
      else:
        self.info.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.info.origin_x, _x.info.origin_y,) = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.data = str[start:end]
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_4Id = None
def _get_struct_4Id():
    global _struct_4Id
    if _struct_4Id is None:
        _struct_4Id = struct.Struct("<4Id")
    return _struct_4Id
