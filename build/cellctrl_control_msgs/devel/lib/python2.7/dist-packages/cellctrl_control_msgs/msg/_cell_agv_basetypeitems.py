# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cellctrl_control_msgs/cell_agv_basetypeitems.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class cell_agv_basetypeitems(genpy.Message):
  _md5sum = "2b98f1617feb9698e8478fb3dda2fb17"
  _type = "cellctrl_control_msgs/cell_agv_basetypeitems"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string primary_id 			# must-have,UUID : primary_key(system_id)			
string foreign_key 		       	# foreign-key	
string device_code		   
uint8  device_serno 
string unique_code			# must-have,UNIQUE INDEX		 
string device_tagname 		 
string device_tagdesc_TC 	
string device_tagdesc_SC 
string device_tagdesc_E 	 
string update_time 			# must-have		 
"""
  __slots__ = ['primary_id','foreign_key','device_code','device_serno','unique_code','device_tagname','device_tagdesc_TC','device_tagdesc_SC','device_tagdesc_E','update_time']
  _slot_types = ['string','string','string','uint8','string','string','string','string','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       primary_id,foreign_key,device_code,device_serno,unique_code,device_tagname,device_tagdesc_TC,device_tagdesc_SC,device_tagdesc_E,update_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(cell_agv_basetypeitems, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.primary_id is None:
        self.primary_id = ''
      if self.foreign_key is None:
        self.foreign_key = ''
      if self.device_code is None:
        self.device_code = ''
      if self.device_serno is None:
        self.device_serno = 0
      if self.unique_code is None:
        self.unique_code = ''
      if self.device_tagname is None:
        self.device_tagname = ''
      if self.device_tagdesc_TC is None:
        self.device_tagdesc_TC = ''
      if self.device_tagdesc_SC is None:
        self.device_tagdesc_SC = ''
      if self.device_tagdesc_E is None:
        self.device_tagdesc_E = ''
      if self.update_time is None:
        self.update_time = ''
    else:
      self.primary_id = ''
      self.foreign_key = ''
      self.device_code = ''
      self.device_serno = 0
      self.unique_code = ''
      self.device_tagname = ''
      self.device_tagdesc_TC = ''
      self.device_tagdesc_SC = ''
      self.device_tagdesc_E = ''
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
      _x = self.foreign_key
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_serno
      buff.write(_get_struct_B().pack(_x))
      _x = self.unique_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_tagname
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_tagdesc_TC
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_tagdesc_SC
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_tagdesc_E
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
        self.foreign_key = str[start:end].decode('utf-8')
      else:
        self.foreign_key = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_code = str[start:end].decode('utf-8')
      else:
        self.device_code = str[start:end]
      start = end
      end += 1
      (self.device_serno,) = _get_struct_B().unpack(str[start:end])
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
        self.device_tagname = str[start:end].decode('utf-8')
      else:
        self.device_tagname = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_tagdesc_TC = str[start:end].decode('utf-8')
      else:
        self.device_tagdesc_TC = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_tagdesc_SC = str[start:end].decode('utf-8')
      else:
        self.device_tagdesc_SC = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_tagdesc_E = str[start:end].decode('utf-8')
      else:
        self.device_tagdesc_E = str[start:end]
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
      _x = self.foreign_key
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_serno
      buff.write(_get_struct_B().pack(_x))
      _x = self.unique_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_tagname
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_tagdesc_TC
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_tagdesc_SC
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.device_tagdesc_E
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
        self.foreign_key = str[start:end].decode('utf-8')
      else:
        self.foreign_key = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_code = str[start:end].decode('utf-8')
      else:
        self.device_code = str[start:end]
      start = end
      end += 1
      (self.device_serno,) = _get_struct_B().unpack(str[start:end])
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
        self.device_tagname = str[start:end].decode('utf-8')
      else:
        self.device_tagname = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_tagdesc_TC = str[start:end].decode('utf-8')
      else:
        self.device_tagdesc_TC = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_tagdesc_SC = str[start:end].decode('utf-8')
      else:
        self.device_tagdesc_SC = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.device_tagdesc_E = str[start:end].decode('utf-8')
      else:
        self.device_tagdesc_E = str[start:end]
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