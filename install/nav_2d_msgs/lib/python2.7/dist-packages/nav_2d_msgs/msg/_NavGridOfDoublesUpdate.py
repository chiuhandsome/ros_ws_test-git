# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from nav_2d_msgs/NavGridOfDoublesUpdate.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import nav_2d_msgs.msg

class NavGridOfDoublesUpdate(genpy.Message):
  _md5sum = "e7978c0302caa5ef135fe6600dcca19e"
  _type = "nav_2d_msgs/NavGridOfDoublesUpdate"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time stamp
UIntBounds bounds
float64[] data

================================================================================
MSG: nav_2d_msgs/UIntBounds
# Bounds are inclusive
uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y
"""
  __slots__ = ['stamp','bounds','data']
  _slot_types = ['time','nav_2d_msgs/UIntBounds','float64[]']

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
      super(NavGridOfDoublesUpdate, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.bounds is None:
        self.bounds = nav_2d_msgs.msg.UIntBounds()
      if self.data is None:
        self.data = []
    else:
      self.stamp = genpy.Time()
      self.bounds = nav_2d_msgs.msg.UIntBounds()
      self.data = []

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
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.data))
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
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.data = struct.unpack(pattern, str[start:end])
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
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.data.tostring())
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
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
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
