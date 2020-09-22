# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from nav_2d_msgs/NavGridOfCharsUpdate.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import nav_2d_msgs.msg

class NavGridOfCharsUpdate(genpy.Message):
  _md5sum = "9895b422244cc07416929605885c81c4"
  _type = "nav_2d_msgs/NavGridOfCharsUpdate"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time stamp
UIntBounds bounds
uint8[] data

================================================================================
MSG: nav_2d_msgs/UIntBounds
# Bounds are inclusive
uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y
"""
  __slots__ = ['stamp','bounds','data']
  _slot_types = ['time','nav_2d_msgs/UIntBounds','uint8[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,bounds,data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavGridOfCharsUpdate, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.bounds is None:
        self.bounds = nav_2d_msgs.msg.UIntBounds()
      if self.data is None:
        self.data = b''
    else:
      self.stamp = genpy.Time()
      self.bounds = nav_2d_msgs.msg.UIntBounds()
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
      buff.write(_get_struct_6I().pack(_x.stamp.secs, _x.stamp.nsecs, _x.bounds.min_x, _x.bounds.min_y, _x.bounds.max_x, _x.bounds.max_y))
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
      if self.bounds is None:
        self.bounds = nav_2d_msgs.msg.UIntBounds()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.stamp.secs, _x.stamp.nsecs, _x.bounds.min_x, _x.bounds.min_y, _x.bounds.max_x, _x.bounds.max_y,) = _get_struct_6I().unpack(str[start:end])
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
      buff.write(_get_struct_6I().pack(_x.stamp.secs, _x.stamp.nsecs, _x.bounds.min_x, _x.bounds.min_y, _x.bounds.max_x, _x.bounds.max_y))
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
      if self.bounds is None:
        self.bounds = nav_2d_msgs.msg.UIntBounds()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.stamp.secs, _x.stamp.nsecs, _x.bounds.min_x, _x.bounds.min_y, _x.bounds.max_x, _x.bounds.max_y,) = _get_struct_6I().unpack(str[start:end])
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
_struct_6I = None
def _get_struct_6I():
    global _struct_6I
    if _struct_6I is None:
        _struct_6I = struct.Struct("<6I")
    return _struct_6I