# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cellctrl_control_msgs/cell_agv_camera_cmdRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cellctrl_control_msgs.msg

class cell_agv_camera_cmdRequest(genpy.Message):
  _md5sum = "8e89104b8f96e405c022dbd17d1c4ecf"
  _type = "cellctrl_control_msgs/cell_agv_camera_cmdRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:query , 5:refresh	 		
string query_base_index 	
string query_opt_index
string query_parameter 
cell_agv_camera request_data	 

================================================================================
MSG: cellctrl_control_msgs/cell_agv_camera
string primary_id			# must-have,UUID : primary_key(system_id)
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string tagname		   
uint8 tag_ser 
string device_code	
string device_serialno	 
string put_in_service_date 		 
float32  work_comulative_time 	
uint8  current_status 
string update_time			# must-have 	 
"""
  __slots__ = ['cmd_id','query_base_index','query_opt_index','query_parameter','request_data']
  _slot_types = ['int8','string','string','string','cellctrl_control_msgs/cell_agv_camera']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmd_id,query_base_index,query_opt_index,query_parameter,request_data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(cell_agv_camera_cmdRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cmd_id is None:
        self.cmd_id = 0
      if self.query_base_index is None:
        self.query_base_index = ''
      if self.query_opt_index is None:
        self.query_opt_index = ''
      if self.query_parameter is None:
        self.query_parameter = ''
      if self.request_data is None:
        self.request_data = cellctrl_control_msgs.msg.cell_agv_camera()
    else:
      self.cmd_id = 0
      self.query_base_index = ''
      self.query_opt_index = ''
      self.query_parameter = ''
      self.request_data = cellctrl_control_msgs.msg.cell_agv_camera()

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
      _x = self.request_data.primary_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.foreign_key
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.unique_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.tagname
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.tag_ser
      buff.write(_get_struct_B().pack(_x))
      _x = self.request_data.device_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.device_serialno
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.put_in_service_date
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_fB().pack(_x.request_data.work_comulative_time, _x.request_data.current_status))
      _x = self.request_data.update_time
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
      if self.request_data is None:
        self.request_data = cellctrl_control_msgs.msg.cell_agv_camera()
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
        self.request_data.primary_id = str[start:end].decode('utf-8')
      else:
        self.request_data.primary_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.foreign_key = str[start:end].decode('utf-8')
      else:
        self.request_data.foreign_key = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.unique_code = str[start:end].decode('utf-8')
      else:
        self.request_data.unique_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.tagname = str[start:end].decode('utf-8')
      else:
        self.request_data.tagname = str[start:end]
      start = end
      end += 1
      (self.request_data.tag_ser,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.device_code = str[start:end].decode('utf-8')
      else:
        self.request_data.device_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.device_serialno = str[start:end].decode('utf-8')
      else:
        self.request_data.device_serialno = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.put_in_service_date = str[start:end].decode('utf-8')
      else:
        self.request_data.put_in_service_date = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.request_data.work_comulative_time, _x.request_data.current_status,) = _get_struct_fB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.update_time = str[start:end].decode('utf-8')
      else:
        self.request_data.update_time = str[start:end]
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
      _x = self.request_data.primary_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.foreign_key
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.unique_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.tagname
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.tag_ser
      buff.write(_get_struct_B().pack(_x))
      _x = self.request_data.device_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.device_serialno
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.request_data.put_in_service_date
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_fB().pack(_x.request_data.work_comulative_time, _x.request_data.current_status))
      _x = self.request_data.update_time
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
      if self.request_data is None:
        self.request_data = cellctrl_control_msgs.msg.cell_agv_camera()
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
        self.request_data.primary_id = str[start:end].decode('utf-8')
      else:
        self.request_data.primary_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.foreign_key = str[start:end].decode('utf-8')
      else:
        self.request_data.foreign_key = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.unique_code = str[start:end].decode('utf-8')
      else:
        self.request_data.unique_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.tagname = str[start:end].decode('utf-8')
      else:
        self.request_data.tagname = str[start:end]
      start = end
      end += 1
      (self.request_data.tag_ser,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.device_code = str[start:end].decode('utf-8')
      else:
        self.request_data.device_code = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.device_serialno = str[start:end].decode('utf-8')
      else:
        self.request_data.device_serialno = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.put_in_service_date = str[start:end].decode('utf-8')
      else:
        self.request_data.put_in_service_date = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.request_data.work_comulative_time, _x.request_data.current_status,) = _get_struct_fB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.request_data.update_time = str[start:end].decode('utf-8')
      else:
        self.request_data.update_time = str[start:end]
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
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
_struct_fB = None
def _get_struct_fB():
    global _struct_fB
    if _struct_fB is None:
        _struct_fB = struct.Struct("<fB")
    return _struct_fB
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cellctrl_control_msgs/cell_agv_camera_cmdResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cellctrl_control_msgs.msg

class cell_agv_camera_cmdResponse(genpy.Message):
  _md5sum = "d3d863d7a6e5e617a9ff8a50a6d53ab9"
  _type = "cellctrl_control_msgs/cell_agv_camera_cmdResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool result
string error_code
string primary_id
string update_time
cell_agv_camera[] response_data


================================================================================
MSG: cellctrl_control_msgs/cell_agv_camera
string primary_id			# must-have,UUID : primary_key(system_id)
string foreign_key
string unique_code 		        # must-have,UNIQUE INDEX	
string tagname		   
uint8 tag_ser 
string device_code	
string device_serialno	 
string put_in_service_date 		 
float32  work_comulative_time 	
uint8  current_status 
string update_time			# must-have 	 
"""
  __slots__ = ['result','error_code','primary_id','update_time','response_data']
  _slot_types = ['bool','string','string','string','cellctrl_control_msgs/cell_agv_camera[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result,error_code,primary_id,update_time,response_data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(cell_agv_camera_cmdResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
      if self.error_code is None:
        self.error_code = ''
      if self.primary_id is None:
        self.primary_id = ''
      if self.update_time is None:
        self.update_time = ''
      if self.response_data is None:
        self.response_data = []
    else:
      self.result = False
      self.error_code = ''
      self.primary_id = ''
      self.update_time = ''
      self.response_data = []

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
      length = len(self.response_data)
      buff.write(_struct_I.pack(length))
      for val1 in self.response_data:
        _x = val1.primary_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.foreign_key
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
        _x = val1.tagname
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.tag_ser
        buff.write(_get_struct_B().pack(_x))
        _x = val1.device_code
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.device_serialno
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.put_in_service_date
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_fB().pack(_x.work_comulative_time, _x.current_status))
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
      if self.response_data is None:
        self.response_data = None
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
      self.response_data = []
      for i in range(0, length):
        val1 = cellctrl_control_msgs.msg.cell_agv_camera()
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
          val1.foreign_key = str[start:end].decode('utf-8')
        else:
          val1.foreign_key = str[start:end]
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
          val1.tagname = str[start:end].decode('utf-8')
        else:
          val1.tagname = str[start:end]
        start = end
        end += 1
        (val1.tag_ser,) = _get_struct_B().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.device_code = str[start:end].decode('utf-8')
        else:
          val1.device_code = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.device_serialno = str[start:end].decode('utf-8')
        else:
          val1.device_serialno = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.put_in_service_date = str[start:end].decode('utf-8')
        else:
          val1.put_in_service_date = str[start:end]
        _x = val1
        start = end
        end += 5
        (_x.work_comulative_time, _x.current_status,) = _get_struct_fB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.update_time = str[start:end].decode('utf-8')
        else:
          val1.update_time = str[start:end]
        self.response_data.append(val1)
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
      length = len(self.response_data)
      buff.write(_struct_I.pack(length))
      for val1 in self.response_data:
        _x = val1.primary_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.foreign_key
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
        _x = val1.tagname
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.tag_ser
        buff.write(_get_struct_B().pack(_x))
        _x = val1.device_code
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.device_serialno
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.put_in_service_date
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_fB().pack(_x.work_comulative_time, _x.current_status))
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
      if self.response_data is None:
        self.response_data = None
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
      self.response_data = []
      for i in range(0, length):
        val1 = cellctrl_control_msgs.msg.cell_agv_camera()
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
          val1.foreign_key = str[start:end].decode('utf-8')
        else:
          val1.foreign_key = str[start:end]
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
          val1.tagname = str[start:end].decode('utf-8')
        else:
          val1.tagname = str[start:end]
        start = end
        end += 1
        (val1.tag_ser,) = _get_struct_B().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.device_code = str[start:end].decode('utf-8')
        else:
          val1.device_code = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.device_serialno = str[start:end].decode('utf-8')
        else:
          val1.device_serialno = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.put_in_service_date = str[start:end].decode('utf-8')
        else:
          val1.put_in_service_date = str[start:end]
        _x = val1
        start = end
        end += 5
        (_x.work_comulative_time, _x.current_status,) = _get_struct_fB().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.update_time = str[start:end].decode('utf-8')
        else:
          val1.update_time = str[start:end]
        self.response_data.append(val1)
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
_struct_fB = None
def _get_struct_fB():
    global _struct_fB
    if _struct_fB is None:
        _struct_fB = struct.Struct("<fB")
    return _struct_fB
class cell_agv_camera_cmd(object):
  _type          = 'cellctrl_control_msgs/cell_agv_camera_cmd'
  _md5sum = '5b06aeba6c9560a399222d693fe7ca2c'
  _request_class  = cell_agv_camera_cmdRequest
  _response_class = cell_agv_camera_cmdResponse
