time stamp
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
