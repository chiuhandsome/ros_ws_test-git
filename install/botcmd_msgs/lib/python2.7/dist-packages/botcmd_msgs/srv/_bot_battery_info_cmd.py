# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from botcmd_msgs/bot_battery_info_cmdRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class bot_battery_info_cmdRequest(genpy.Message):
  _md5sum = "481ac5a494c3140a2539020bd74c82c7"
  _type = "botcmd_msgs/bot_battery_info_cmdRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 command
"""
  __slots__ = ['command']
  _slot_types = ['int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(bot_battery_info_cmdRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.command is None:
        self.command = 0
    else:
      self.command = 0

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
      _x = self.command
      buff.write(_get_struct_b().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.command,) = _get_struct_b().unpack(str[start:end])
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
      _x = self.command
      buff.write(_get_struct_b().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.command,) = _get_struct_b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from botcmd_msgs/bot_battery_info_cmdResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class bot_battery_info_cmdResponse(genpy.Message):
  _md5sum = "df2f02adba4bb78ea86c2d9c38007704"
  _type = "botcmd_msgs/bot_battery_info_cmdResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool  result
int8 Command_Params
time stamp
int16 alarmcode	
int16 chargstate	 
int16 voltage	
int16 current	
int16 full_capacity
int16 percentage

"""
  __slots__ = ['result','Command_Params','stamp','alarmcode','chargstate','voltage','current','full_capacity','percentage']
  _slot_types = ['bool','int8','time','int16','int16','int16','int16','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result,Command_Params,stamp,alarmcode,chargstate,voltage,current,full_capacity,percentage

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(bot_battery_info_cmdResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
      if self.Command_Params is None:
        self.Command_Params = 0
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.alarmcode is None:
        self.alarmcode = 0
      if self.chargstate is None:
        self.chargstate = 0
      if self.voltage is None:
        self.voltage = 0
      if self.current is None:
        self.current = 0
      if self.full_capacity is None:
        self.full_capacity = 0
      if self.percentage is None:
        self.percentage = 0
    else:
      self.result = False
      self.Command_Params = 0
      self.stamp = genpy.Time()
      self.alarmcode = 0
      self.chargstate = 0
      self.voltage = 0
      self.current = 0
      self.full_capacity = 0
      self.percentage = 0

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
      buff.write(_get_struct_Bb2I6h().pack(_x.result, _x.Command_Params, _x.stamp.secs, _x.stamp.nsecs, _x.alarmcode, _x.chargstate, _x.voltage, _x.current, _x.full_capacity, _x.percentage))
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
      end += 22
      (_x.result, _x.Command_Params, _x.stamp.secs, _x.stamp.nsecs, _x.alarmcode, _x.chargstate, _x.voltage, _x.current, _x.full_capacity, _x.percentage,) = _get_struct_Bb2I6h().unpack(str[start:end])
      self.result = bool(self.result)
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
      buff.write(_get_struct_Bb2I6h().pack(_x.result, _x.Command_Params, _x.stamp.secs, _x.stamp.nsecs, _x.alarmcode, _x.chargstate, _x.voltage, _x.current, _x.full_capacity, _x.percentage))
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
      end += 22
      (_x.result, _x.Command_Params, _x.stamp.secs, _x.stamp.nsecs, _x.alarmcode, _x.chargstate, _x.voltage, _x.current, _x.full_capacity, _x.percentage,) = _get_struct_Bb2I6h().unpack(str[start:end])
      self.result = bool(self.result)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Bb2I6h = None
def _get_struct_Bb2I6h():
    global _struct_Bb2I6h
    if _struct_Bb2I6h is None:
        _struct_Bb2I6h = struct.Struct("<Bb2I6h")
    return _struct_Bb2I6h
class bot_battery_info_cmd(object):
  _type          = 'botcmd_msgs/bot_battery_info_cmd'
  _md5sum = '37f5b24189cc92ce3ca44682c06b0a43'
  _request_class  = bot_battery_info_cmdRequest
  _response_class = bot_battery_info_cmdResponse
