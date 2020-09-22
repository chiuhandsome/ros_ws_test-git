# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from car_db_manager_msgs/AlarmcodeParameters.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AlarmcodeParameters(genpy.Message):
  _md5sum = "a54f2fb21b297ab49903c34acf8090f2"
  _type = "car_db_manager_msgs/AlarmcodeParameters"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	
string base_name
uint8 alarm_level	
string alarm_desc_eng
string alarm_desc_tc
string alarm_desc_sc
string update_time			# must-have 	  	 	

"""
  __slots__ = ['primary_id','unique_code','base_name','alarm_level','alarm_desc_eng','alarm_desc_tc','alarm_desc_sc','update_time']
  _slot_types = ['string','string','string','uint8','string','string','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       primary_id,unique_code,base_name,alarm_level,alarm_desc_eng,alarm_desc_tc,alarm_desc_sc,update_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AlarmcodeParameters, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.primary_id is None:
        self.primary_id = ''
      if self.unique_code is None:
        self.unique_code = ''
      if self.base_name is None:
        self.base_name = ''
      if self.alarm_level is None:
        self.alarm_level = 0
      if self.alarm_desc_eng is None:
        self.alarm_desc_eng = ''
      if self.alarm_desc_tc is None:
        self.alarm_desc_tc = ''
      if self.alarm_desc_sc is None:
        self.alarm_desc_sc = ''
      if self.update_time is None:
        self.update_time = ''
    else:
      self.primary_id = ''
      self.unique_code = ''
      self.base_name = ''
      self.alarm_level = 0
      self.alarm_desc_eng = ''
      self.alarm_desc_tc = ''
      self.alarm_desc_sc = ''
      self.update_time = ''

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
      _x = self.primary_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.unique_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.base_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_level
      buff.write(_get_struct_B().pack(_x))
      _x = self.alarm_desc_eng
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_desc_tc
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_desc_sc
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.update_time
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
        self.primary_id = str[start:end].decode('utf-8')
      else:
        self.primary_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.unique_code = str[start:end].decode('utf-8')
      else:
        self.unique_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.base_name = str[start:end].decode('utf-8')
      else:
        self.base_name = str[start:end]
      start = end
      end += 1
      (self.alarm_level,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_desc_eng = str[start:end].decode('utf-8')
      else:
        self.alarm_desc_eng = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_desc_tc = str[start:end].decode('utf-8')
      else:
        self.alarm_desc_tc = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_desc_sc = str[start:end].decode('utf-8')
      else:
        self.alarm_desc_sc = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.update_time = str[start:end].decode('utf-8')
      else:
        self.update_time = str[start:end]
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
      _x = self.primary_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.unique_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.base_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_level
      buff.write(_get_struct_B().pack(_x))
      _x = self.alarm_desc_eng
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_desc_tc
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.alarm_desc_sc
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.update_time
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
        self.primary_id = str[start:end].decode('utf-8')
      else:
        self.primary_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.unique_code = str[start:end].decode('utf-8')
      else:
        self.unique_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.base_name = str[start:end].decode('utf-8')
      else:
        self.base_name = str[start:end]
      start = end
      end += 1
      (self.alarm_level,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_desc_eng = str[start:end].decode('utf-8')
      else:
        self.alarm_desc_eng = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_desc_tc = str[start:end].decode('utf-8')
      else:
        self.alarm_desc_tc = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.alarm_desc_sc = str[start:end].decode('utf-8')
      else:
        self.alarm_desc_sc = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.update_time = str[start:end].decode('utf-8')
      else:
        self.update_time = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
