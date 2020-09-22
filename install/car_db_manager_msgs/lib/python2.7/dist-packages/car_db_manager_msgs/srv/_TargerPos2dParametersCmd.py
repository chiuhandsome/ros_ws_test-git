# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from car_db_manager_msgs/TargerPos2dParametersCmdRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import car_db_manager_msgs.msg

class TargerPos2dParametersCmdRequest(genpy.Message):
  _md5sum = "fc6d604682cc81bab4ebdb407db14126"
  _type = "car_db_manager_msgs/TargerPos2dParametersCmdRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
TargerPos2dParameters req_targer_pos2d_parameters

================================================================================
MSG: car_db_manager_msgs/TargerPos2dParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
string base_name
float32 pos_x		   
float32 pos_y	
float32 theta	
bool rotate_flag
string update_time			# must-have 	 

"""
  __slots__ = ['cmd_id','query_base_index','query_opt_index','query_parameter','req_targer_pos2d_parameters']
  _slot_types = ['int8','string','string','string','car_db_manager_msgs/TargerPos2dParameters']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmd_id,query_base_index,query_opt_index,query_parameter,req_targer_pos2d_parameters

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TargerPos2dParametersCmdRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cmd_id is None:
        self.cmd_id = 0
      if self.query_base_index is None:
        self.query_base_index = ''
      if self.query_opt_index is None:
        self.query_opt_index = ''
      if self.query_parameter is None:
        self.query_parameter = ''
      if self.req_targer_pos2d_parameters is None:
        self.req_targer_pos2d_parameters = car_db_manager_msgs.msg.TargerPos2dParameters()
    else:
      self.cmd_id = 0
      self.query_base_index = ''
      self.query_opt_index = ''
      self.query_parameter = ''
      self.req_targer_pos2d_parameters = car_db_manager_msgs.msg.TargerPos2dParameters()

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
      _x = self.cmd_id
      buff.write(_get_struct_b().pack(_x))
      _x = self.query_base_index
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.query_opt_index
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.query_parameter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.req_targer_pos2d_parameters.primary_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.req_targer_pos2d_parameters.unique_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.req_targer_pos2d_parameters.base_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3fB().pack(_x.req_targer_pos2d_parameters.pos_x, _x.req_targer_pos2d_parameters.pos_y, _x.req_targer_pos2d_parameters.theta, _x.req_targer_pos2d_parameters.rotate_flag))
      _x = self.req_targer_pos2d_parameters.update_time
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
      if self.req_targer_pos2d_parameters is None:
        self.req_targer_pos2d_parameters = car_db_manager_msgs.msg.TargerPos2dParameters()
      end = 0
      start = end
      end += 1
      (self.cmd_id,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.query_base_index = str[start:end].decode('utf-8')
      else:
        self.query_base_index = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.query_opt_index = str[start:end].decode('utf-8')
      else:
        self.query_opt_index = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.query_parameter = str[start:end].decode('utf-8')
      else:
        self.query_parameter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.req_targer_pos2d_parameters.primary_id = str[start:end].decode('utf-8')
      else:
        self.req_targer_pos2d_parameters.primary_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.req_targer_pos2d_parameters.unique_code = str[start:end].decode('utf-8')
      else:
        self.req_targer_pos2d_parameters.unique_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.req_targer_pos2d_parameters.base_name = str[start:end].decode('utf-8')
      else:
        self.req_targer_pos2d_parameters.base_name = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.req_targer_pos2d_parameters.pos_x, _x.req_targer_pos2d_parameters.pos_y, _x.req_targer_pos2d_parameters.theta, _x.req_targer_pos2d_parameters.rotate_flag,) = _get_struct_3fB().unpack(str[start:end])
      self.req_targer_pos2d_parameters.rotate_flag = bool(self.req_targer_pos2d_parameters.rotate_flag)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.req_targer_pos2d_parameters.update_time = str[start:end].decode('utf-8')
      else:
        self.req_targer_pos2d_parameters.update_time = str[start:end]
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
      _x = self.cmd_id
      buff.write(_get_struct_b().pack(_x))
      _x = self.query_base_index
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.query_opt_index
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.query_parameter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.req_targer_pos2d_parameters.primary_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.req_targer_pos2d_parameters.unique_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.req_targer_pos2d_parameters.base_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3fB().pack(_x.req_targer_pos2d_parameters.pos_x, _x.req_targer_pos2d_parameters.pos_y, _x.req_targer_pos2d_parameters.theta, _x.req_targer_pos2d_parameters.rotate_flag))
      _x = self.req_targer_pos2d_parameters.update_time
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
      if self.req_targer_pos2d_parameters is None:
        self.req_targer_pos2d_parameters = car_db_manager_msgs.msg.TargerPos2dParameters()
      end = 0
      start = end
      end += 1
      (self.cmd_id,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.query_base_index = str[start:end].decode('utf-8')
      else:
        self.query_base_index = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.query_opt_index = str[start:end].decode('utf-8')
      else:
        self.query_opt_index = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.query_parameter = str[start:end].decode('utf-8')
      else:
        self.query_parameter = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.req_targer_pos2d_parameters.primary_id = str[start:end].decode('utf-8')
      else:
        self.req_targer_pos2d_parameters.primary_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.req_targer_pos2d_parameters.unique_code = str[start:end].decode('utf-8')
      else:
        self.req_targer_pos2d_parameters.unique_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.req_targer_pos2d_parameters.base_name = str[start:end].decode('utf-8')
      else:
        self.req_targer_pos2d_parameters.base_name = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.req_targer_pos2d_parameters.pos_x, _x.req_targer_pos2d_parameters.pos_y, _x.req_targer_pos2d_parameters.theta, _x.req_targer_pos2d_parameters.rotate_flag,) = _get_struct_3fB().unpack(str[start:end])
      self.req_targer_pos2d_parameters.rotate_flag = bool(self.req_targer_pos2d_parameters.rotate_flag)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.req_targer_pos2d_parameters.update_time = str[start:end].decode('utf-8')
      else:
        self.req_targer_pos2d_parameters.update_time = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3fB = None
def _get_struct_3fB():
    global _struct_3fB
    if _struct_3fB is None:
        _struct_3fB = struct.Struct("<3fB")
    return _struct_3fB
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from car_db_manager_msgs/TargerPos2dParametersCmdResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import car_db_manager_msgs.msg

class TargerPos2dParametersCmdResponse(genpy.Message):
  _md5sum = "453d39015cb5dcb753bf232250f99dce"
  _type = "car_db_manager_msgs/TargerPos2dParametersCmdResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool result
string error_code
string primary_id
string update_time
TargerPos2dParameters[] result_targer_pos2d_parameters


================================================================================
MSG: car_db_manager_msgs/TargerPos2dParameters
string primary_id			# must-have,UUID : primary_key(system_id)		
string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	
string base_name
float32 pos_x		   
float32 pos_y	
float32 theta	
bool rotate_flag
string update_time			# must-have 	 

"""
  __slots__ = ['result','error_code','primary_id','update_time','result_targer_pos2d_parameters']
  _slot_types = ['bool','string','string','string','car_db_manager_msgs/TargerPos2dParameters[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result,error_code,primary_id,update_time,result_targer_pos2d_parameters

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TargerPos2dParametersCmdResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
      if self.error_code is None:
        self.error_code = ''
      if self.primary_id is None:
        self.primary_id = ''
      if self.update_time is None:
        self.update_time = ''
      if self.result_targer_pos2d_parameters is None:
        self.result_targer_pos2d_parameters = []
    else:
      self.result = False
      self.error_code = ''
      self.primary_id = ''
      self.update_time = ''
      self.result_targer_pos2d_parameters = []

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
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
      _x = self.error_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.primary_id
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
      length = len(self.result_targer_pos2d_parameters)
      buff.write(_struct_I.pack(length))
      for val1 in self.result_targer_pos2d_parameters:
        _x = val1.primary_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.unique_code
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.base_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_3fB().pack(_x.pos_x, _x.pos_y, _x.theta, _x.rotate_flag))
        _x = val1.update_time
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
      if self.result_targer_pos2d_parameters is None:
        self.result_targer_pos2d_parameters = None
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.error_code = str[start:end].decode('utf-8')
      else:
        self.error_code = str[start:end]
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
        self.update_time = str[start:end].decode('utf-8')
      else:
        self.update_time = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.result_targer_pos2d_parameters = []
      for i in range(0, length):
        val1 = car_db_manager_msgs.msg.TargerPos2dParameters()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.primary_id = str[start:end].decode('utf-8')
        else:
          val1.primary_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.unique_code = str[start:end].decode('utf-8')
        else:
          val1.unique_code = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.base_name = str[start:end].decode('utf-8')
        else:
          val1.base_name = str[start:end]
        _x = val1
        start = end
        end += 13
        (_x.pos_x, _x.pos_y, _x.theta, _x.rotate_flag,) = _get_struct_3fB().unpack(str[start:end])
        val1.rotate_flag = bool(val1.rotate_flag)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.update_time = str[start:end].decode('utf-8')
        else:
          val1.update_time = str[start:end]
        self.result_targer_pos2d_parameters.append(val1)
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
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
      _x = self.error_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.primary_id
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
      length = len(self.result_targer_pos2d_parameters)
      buff.write(_struct_I.pack(length))
      for val1 in self.result_targer_pos2d_parameters:
        _x = val1.primary_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.unique_code
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.base_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_3fB().pack(_x.pos_x, _x.pos_y, _x.theta, _x.rotate_flag))
        _x = val1.update_time
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
      if self.result_targer_pos2d_parameters is None:
        self.result_targer_pos2d_parameters = None
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.error_code = str[start:end].decode('utf-8')
      else:
        self.error_code = str[start:end]
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
        self.update_time = str[start:end].decode('utf-8')
      else:
        self.update_time = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.result_targer_pos2d_parameters = []
      for i in range(0, length):
        val1 = car_db_manager_msgs.msg.TargerPos2dParameters()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.primary_id = str[start:end].decode('utf-8')
        else:
          val1.primary_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.unique_code = str[start:end].decode('utf-8')
        else:
          val1.unique_code = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.base_name = str[start:end].decode('utf-8')
        else:
          val1.base_name = str[start:end]
        _x = val1
        start = end
        end += 13
        (_x.pos_x, _x.pos_y, _x.theta, _x.rotate_flag,) = _get_struct_3fB().unpack(str[start:end])
        val1.rotate_flag = bool(val1.rotate_flag)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.update_time = str[start:end].decode('utf-8')
        else:
          val1.update_time = str[start:end]
        self.result_targer_pos2d_parameters.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3fB = None
def _get_struct_3fB():
    global _struct_3fB
    if _struct_3fB is None:
        _struct_3fB = struct.Struct("<3fB")
    return _struct_3fB
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class TargerPos2dParametersCmd(object):
  _type          = 'car_db_manager_msgs/TargerPos2dParametersCmd'
  _md5sum = '3ff1a4c4627a08e7a68201f9c99a163a'
  _request_class  = TargerPos2dParametersCmdRequest
  _response_class = TargerPos2dParametersCmdResponse