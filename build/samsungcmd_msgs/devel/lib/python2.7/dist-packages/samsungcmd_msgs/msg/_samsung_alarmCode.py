# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from samsungcmd_msgs/samsung_alarmCode.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class samsung_alarmCode(genpy.Message):
  _md5sum = "0b84738275b1dc1036ab93e3e6ee935e"
  _type = "samsungcmd_msgs/samsung_alarmCode"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string system_id 			
string alarm_id 		# module_no(3) + module alarm code(3)	
string alarm_code 		# same as alarm_id,preper for special requirement
string alarm_level 		# level of ararm: 1:alart 2:alarm	
string alarm_Desc_E 		# English description of alarm	
string alarm_Desc_TC 		# Traditional chinese description of alarm	
string alarm_Desc_SC 		# Sample chinese description of alarm
string alarm_version 		# version of alarm
string alarm_update_time 	# version time of alarm
"""
  __slots__ = ['system_id','alarm_id','alarm_code','alarm_level','alarm_Desc_E','alarm_Desc_TC','alarm_Desc_SC','alarm_version','alarm_update_time']
  _slot_types = ['string','string','string','string','string','string','string','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       system_id,alarm_id,alarm_code,alarm_level,alarm_Desc_E,alarm_Desc_TC,alarm_Desc_SC,alarm_version,alarm_update_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(samsung_alarmCode, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.system_id is None:
        self.system_id = ''
      if self.alarm_id is None:
        self.alarm_id = ''
      if self.alarm_code is None:
        self.alarm_code = ''
      if self.alarm_level is None:
        self.alarm_level = ''
      if self.alarm_Desc_E is None:
        self.alarm_Desc_E = ''
      if self.alarm_Desc_TC is None:
        self.alarm_Desc_TC = ''
      if self.alarm_Desc_SC is None:
        self.alarm_Desc_SC = ''
      if self.alarm_version is None:
        self.alarm_version = ''
      if self.alarm_update_time is None:
        self.alarm_update_time = ''
    else:
      self.system_id = ''
      self.alarm_id = ''
      self.alarm_code = ''
      self.alarm_level = ''
      self.alarm_Desc_E = ''
      self.alarm_Desc_TC = ''
      self.alarm_Desc_SC = ''
      self.alarm_version = ''
      self.alarm_update_time = ''

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
      _x = self.system_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_level
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_Desc_E
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_Desc_TC
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_Desc_SC
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_version
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_update_time
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.system_id = str[start:end].decode('utf-8')
      else:
        self.system_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_id = str[start:end].decode('utf-8')
      else:
        self.alarm_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_code = str[start:end].decode('utf-8')
      else:
        self.alarm_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_level = str[start:end].decode('utf-8')
      else:
        self.alarm_level = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_Desc_E = str[start:end].decode('utf-8')
      else:
        self.alarm_Desc_E = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_Desc_TC = str[start:end].decode('utf-8')
      else:
        self.alarm_Desc_TC = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_Desc_SC = str[start:end].decode('utf-8')
      else:
        self.alarm_Desc_SC = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_version = str[start:end].decode('utf-8')
      else:
        self.alarm_version = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_update_time = str[start:end].decode('utf-8')
      else:
        self.alarm_update_time = str[start:end]
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
      _x = self.system_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_level
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_Desc_E
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_Desc_TC
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_Desc_SC
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_version
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_update_time
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.system_id = str[start:end].decode('utf-8')
      else:
        self.system_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_id = str[start:end].decode('utf-8')
      else:
        self.alarm_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_code = str[start:end].decode('utf-8')
      else:
        self.alarm_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_level = str[start:end].decode('utf-8')
      else:
        self.alarm_level = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_Desc_E = str[start:end].decode('utf-8')
      else:
        self.alarm_Desc_E = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_Desc_TC = str[start:end].decode('utf-8')
      else:
        self.alarm_Desc_TC = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_Desc_SC = str[start:end].decode('utf-8')
      else:
        self.alarm_Desc_SC = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_version = str[start:end].decode('utf-8')
      else:
        self.alarm_version = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_update_time = str[start:end].decode('utf-8')
      else:
        self.alarm_update_time = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
