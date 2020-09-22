# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_scheduling_msgs/upper_if_commandRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import robot_scheduling_msgs.msg

class upper_if_commandRequest(genpy.Message):
  _md5sum = "8a0df7aa005700d206435b2924cf5a17"
  _type = "robot_scheduling_msgs/upper_if_commandRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# set command type and its data 

robot_topic_command upper_cmd

================================================================================
MSG: robot_scheduling_msgs/robot_topic_command
# set command type and its data 
string robot_name                        # the name of the robot (used in preconditions and topics)
#--------------------------
uint8 GET_STATUS=1
uint8 SET_COMMAND=2
uint8 cmd_type
#--------------------------	
uint16 STATUS=1	 
uint16 MODE_STANDBY=3	
uint16 MODE_MANUAL=4	 
uint16 MODE_REMOTE=5
uint16 MODE_MANU_ACT=40	
uint16 MODE_MANU_SET=41
uint16 MODE_MANU_NONE=400
uint16 MODE_MANU_PLANTOEXEC=410	
uint16 MODE_MANU_PLANTOEXEC_RUN=411
uint16 MODE_MANU_PLANTOEXEC_END=412	
uint16 MODE_MANU_MOVEINT=420	
uint16 MODE_MANU_MOVE=430	
uint16 MODE_MANU_TURN=440
uint16 MODE_MANU_WORKSHEET=450	
uint16 MODE_MANU_SAVE=460

uint16 MODE_REMOTE_ACT=50	
uint16 MODE_REMOTE_SET=51
uint16 MODE_REMOTE_NONE=500
uint16 MODE_REMOTEP_WORKSHEET=510
uint16 MODE_REMOTEP_WORKSHEET_CONT_TEST=520

#uint16 MODE_REMOTE_WORKSHEET_ACT=50
#uint16 MODE_REMOTE_WORKSHEET_NO=51
#uint16 ALARM_CONF=61	
uint16 ALARM_RESET=60	
uint16 ALARM_RECOVERY_ACT=70
uint16 ALARM_RECOVERY_SET=71
uint16 ALARM_RECOVERY_NONE=700
uint16 ALARM_RECOVERY_PLANTOEXEC=710	
uint16 SYSTEM_RESTART=80	
uint16 cmd_id  	
#--------------------------
string cmd_data
#--------------------------
"""
  __slots__ = ['upper_cmd']
  _slot_types = ['robot_scheduling_msgs/robot_topic_command']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       upper_cmd

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(upper_if_commandRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.upper_cmd is None:
        self.upper_cmd = robot_scheduling_msgs.msg.robot_topic_command()
    else:
      self.upper_cmd = robot_scheduling_msgs.msg.robot_topic_command()

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
      _x = self.upper_cmd.robot_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BH().pack(_x.upper_cmd.cmd_type, _x.upper_cmd.cmd_id))
      _x = self.upper_cmd.cmd_data
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
      if self.upper_cmd is None:
        self.upper_cmd = robot_scheduling_msgs.msg.robot_topic_command()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.upper_cmd.robot_name = str[start:end].decode('utf-8')
      else:
        self.upper_cmd.robot_name = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.upper_cmd.cmd_type, _x.upper_cmd.cmd_id,) = _get_struct_BH().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.upper_cmd.cmd_data = str[start:end].decode('utf-8')
      else:
        self.upper_cmd.cmd_data = str[start:end]
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
      _x = self.upper_cmd.robot_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_BH().pack(_x.upper_cmd.cmd_type, _x.upper_cmd.cmd_id))
      _x = self.upper_cmd.cmd_data
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
      if self.upper_cmd is None:
        self.upper_cmd = robot_scheduling_msgs.msg.robot_topic_command()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.upper_cmd.robot_name = str[start:end].decode('utf-8')
      else:
        self.upper_cmd.robot_name = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.upper_cmd.cmd_type, _x.upper_cmd.cmd_id,) = _get_struct_BH().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.upper_cmd.cmd_data = str[start:end].decode('utf-8')
      else:
        self.upper_cmd.cmd_data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_BH = None
def _get_struct_BH():
    global _struct_BH
    if _struct_BH is None:
        _struct_BH = struct.Struct("<BH")
    return _struct_BH
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_scheduling_msgs/upper_if_commandResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class upper_if_commandResponse(genpy.Message):
  _md5sum = "6a0189a3df6e9b1777ecbbecbc6f0332"
  _type = "robot_scheduling_msgs/upper_if_commandResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool result
uint8 OK=1
uint8 NOT_OK=2
uint8 TIMED_OUT=3
uint8 OUT_OF_TIMES=4
uint8 result_state
string result_data

"""
  # Pseudo-constants
  OK = 1
  NOT_OK = 2
  TIMED_OUT = 3
  OUT_OF_TIMES = 4

  __slots__ = ['result','result_state','result_data']
  _slot_types = ['bool','uint8','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result,result_state,result_data

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(upper_if_commandResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
      if self.result_state is None:
        self.result_state = 0
      if self.result_data is None:
        self.result_data = ''
    else:
      self.result = False
      self.result_state = 0
      self.result_data = ''

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
      buff.write(_get_struct_2B().pack(_x.result, _x.result_state))
      _x = self.result_data
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
      _x = self
      start = end
      end += 2
      (_x.result, _x.result_state,) = _get_struct_2B().unpack(str[start:end])
      self.result = bool(self.result)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result_data = str[start:end].decode('utf-8')
      else:
        self.result_data = str[start:end]
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
      buff.write(_get_struct_2B().pack(_x.result, _x.result_state))
      _x = self.result_data
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
      _x = self
      start = end
      end += 2
      (_x.result, _x.result_state,) = _get_struct_2B().unpack(str[start:end])
      self.result = bool(self.result)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result_data = str[start:end].decode('utf-8')
      else:
        self.result_data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
class upper_if_command(object):
  _type          = 'robot_scheduling_msgs/upper_if_command'
  _md5sum = '3942b0151ceecef1e10d75812804f3d8'
  _request_class  = upper_if_commandRequest
  _response_class = upper_if_commandResponse