# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from botcmd_msgs/bot_devicestatus.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class bot_devicestatus(genpy.Message):
  _md5sum = "ee45a81459c43868e0e411a5f46c76aa"
  _type = "botcmd_msgs/bot_devicestatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time stamp
int8 status
int8 error_code
string data
"""
  __slots__ = ['stamp','status','error_code','data']
  _slot_types = ['time','int8','int8','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,status,error_code,data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(bot_devicestatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.status is None:
        self.status = 0
      if self.error_code is None:
        self.error_code = 0
      if self.data is None:
        self.data = ''
    else:
      self.stamp = genpy.Time()
      self.status = 0
      self.error_code = 0
      self.data = ''

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
      buff.write(_get_struct_2I2b().pack(_x.stamp.secs, _x.stamp.nsecs, _x.status, _x.error_code))
      _x = self.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
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
      end = 0
      _x = self
      start = end
      end += 10
      (_x.stamp.secs, _x.stamp.nsecs, _x.status, _x.error_code,) = _get_struct_2I2b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data = str[start:end].decode('utf-8')
      else:
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
      buff.write(_get_struct_2I2b().pack(_x.stamp.secs, _x.stamp.nsecs, _x.status, _x.error_code))
      _x = self.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
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
      end = 0
      _x = self
      start = end
      end += 10
      (_x.stamp.secs, _x.stamp.nsecs, _x.status, _x.error_code,) = _get_struct_2I2b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.data = str[start:end].decode('utf-8')
      else:
        self.data = str[start:end]
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I2b = None
def _get_struct_2I2b():
    global _struct_2I2b
    if _struct_2I2b is None:
        _struct_2I2b = struct.Struct("<2I2b")
    return _struct_2I2b
