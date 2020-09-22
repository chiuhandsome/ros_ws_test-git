# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from botcmd_msgs/bot_transbattery.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class bot_transbattery(genpy.Message):
  _md5sum = "42a37315d341a8a261c4ebe967c4f174"
  _type = "botcmd_msgs/bot_transbattery"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 index_ID
int16 gen_alarmcode		#address : 0x60
int16 emg_alarmcode		#address : 0x61
int16 chargstate_code	#address : 0x62
int16 cell_balance_code	#address : 0x63
int16 cell_volt_min		#address : 0x64 (mV/unit)
int16 cell_volt_max		#address : 0x65 (mV/unit)
int16 chargcurrent_code	#address : 0x66 (10mA/unit or mA/unit)
int16 full_capacity  	#address : 0x67 (mAH)
int16 loop_counter  	#address : 0x68 (times)
int8  cell_temp_min  	#address : 0x69-L (deg C)
int8  cell_temp_max  	#address : 0x69-H (deg C)
int16 Pack_tol_volt		#address : 0x6A (10mV/unit or mV/unit)
int16 Pack_resistance	#address : 0x6B (uOhm)
int32 total_discharge	#address : 0x6C_D (uAH)
int16 ASOC_code     	#address : 0x6E (%,absolute (remaining) capacity percentage of the battery pack)
int16 scaleunit_code	#address : 0x6F (conversion unit for voltage ,current and temperature)
bool result
"""
  __slots__ = ['index_ID','gen_alarmcode','emg_alarmcode','chargstate_code','cell_balance_code','cell_volt_min','cell_volt_max','chargcurrent_code','full_capacity','loop_counter','cell_temp_min','cell_temp_max','Pack_tol_volt','Pack_resistance','total_discharge','ASOC_code','scaleunit_code','result']
  _slot_types = ['int8','int16','int16','int16','int16','int16','int16','int16','int16','int16','int8','int8','int16','int16','int32','int16','int16','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       index_ID,gen_alarmcode,emg_alarmcode,chargstate_code,cell_balance_code,cell_volt_min,cell_volt_max,chargcurrent_code,full_capacity,loop_counter,cell_temp_min,cell_temp_max,Pack_tol_volt,Pack_resistance,total_discharge,ASOC_code,scaleunit_code,result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(bot_transbattery, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.index_ID is None:
        self.index_ID = 0
      if self.gen_alarmcode is None:
        self.gen_alarmcode = 0
      if self.emg_alarmcode is None:
        self.emg_alarmcode = 0
      if self.chargstate_code is None:
        self.chargstate_code = 0
      if self.cell_balance_code is None:
        self.cell_balance_code = 0
      if self.cell_volt_min is None:
        self.cell_volt_min = 0
      if self.cell_volt_max is None:
        self.cell_volt_max = 0
      if self.chargcurrent_code is None:
        self.chargcurrent_code = 0
      if self.full_capacity is None:
        self.full_capacity = 0
      if self.loop_counter is None:
        self.loop_counter = 0
      if self.cell_temp_min is None:
        self.cell_temp_min = 0
      if self.cell_temp_max is None:
        self.cell_temp_max = 0
      if self.Pack_tol_volt is None:
        self.Pack_tol_volt = 0
      if self.Pack_resistance is None:
        self.Pack_resistance = 0
      if self.total_discharge is None:
        self.total_discharge = 0
      if self.ASOC_code is None:
        self.ASOC_code = 0
      if self.scaleunit_code is None:
        self.scaleunit_code = 0
      if self.result is None:
        self.result = False
    else:
      self.index_ID = 0
      self.gen_alarmcode = 0
      self.emg_alarmcode = 0
      self.chargstate_code = 0
      self.cell_balance_code = 0
      self.cell_volt_min = 0
      self.cell_volt_max = 0
      self.chargcurrent_code = 0
      self.full_capacity = 0
      self.loop_counter = 0
      self.cell_temp_min = 0
      self.cell_temp_max = 0
      self.Pack_tol_volt = 0
      self.Pack_resistance = 0
      self.total_discharge = 0
      self.ASOC_code = 0
      self.scaleunit_code = 0
      self.result = False

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
      buff.write(_get_struct_b9h2b2hi2hB().pack(_x.index_ID, _x.gen_alarmcode, _x.emg_alarmcode, _x.chargstate_code, _x.cell_balance_code, _x.cell_volt_min, _x.cell_volt_max, _x.chargcurrent_code, _x.full_capacity, _x.loop_counter, _x.cell_temp_min, _x.cell_temp_max, _x.Pack_tol_volt, _x.Pack_resistance, _x.total_discharge, _x.ASOC_code, _x.scaleunit_code, _x.result))
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
      end += 34
      (_x.index_ID, _x.gen_alarmcode, _x.emg_alarmcode, _x.chargstate_code, _x.cell_balance_code, _x.cell_volt_min, _x.cell_volt_max, _x.chargcurrent_code, _x.full_capacity, _x.loop_counter, _x.cell_temp_min, _x.cell_temp_max, _x.Pack_tol_volt, _x.Pack_resistance, _x.total_discharge, _x.ASOC_code, _x.scaleunit_code, _x.result,) = _get_struct_b9h2b2hi2hB().unpack(str[start:end])
      self.result = bool(self.result)
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
      buff.write(_get_struct_b9h2b2hi2hB().pack(_x.index_ID, _x.gen_alarmcode, _x.emg_alarmcode, _x.chargstate_code, _x.cell_balance_code, _x.cell_volt_min, _x.cell_volt_max, _x.chargcurrent_code, _x.full_capacity, _x.loop_counter, _x.cell_temp_min, _x.cell_temp_max, _x.Pack_tol_volt, _x.Pack_resistance, _x.total_discharge, _x.ASOC_code, _x.scaleunit_code, _x.result))
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
      end += 34
      (_x.index_ID, _x.gen_alarmcode, _x.emg_alarmcode, _x.chargstate_code, _x.cell_balance_code, _x.cell_volt_min, _x.cell_volt_max, _x.chargcurrent_code, _x.full_capacity, _x.loop_counter, _x.cell_temp_min, _x.cell_temp_max, _x.Pack_tol_volt, _x.Pack_resistance, _x.total_discharge, _x.ASOC_code, _x.scaleunit_code, _x.result,) = _get_struct_b9h2b2hi2hB().unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_b9h2b2hi2hB = None
def _get_struct_b9h2b2hi2hB():
    global _struct_b9h2b2hi2hB
    if _struct_b9h2b2hi2hB is None:
        _struct_b9h2b2hi2hB = struct.Struct("<b9h2b2hi2hB")
    return _struct_b9h2b2hi2hB
