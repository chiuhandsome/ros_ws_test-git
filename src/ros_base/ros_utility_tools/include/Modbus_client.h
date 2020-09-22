#ifndef MODBUSCLIENT_H
#define MODBUSCLIENT_H
//----------------------------------------------------------------------------
#include <ros/ros.h>
#include <modbus/modbus-tcp.h>
#include <modbus/modbus-rtu.h>
//----------------------------------------------------------------------------
typedef enum{
    eModbus_TCP = 0, eModbus_RTU  
}Modbus_Type ;
//-- Note 1 :extern public parameter : errno ,below are error code define--- 
//case EMBXILFUN:	return "Illegal function";
//case EMBXILADD:	return "Illegal data address";
//case EMBXILVAL:	return "Illegal data value";
//case EMBXSFAIL:	return "Slave device or server failure";
//case EMBXACK:		return "Acknowledge";
//case EMBXSBUSY:	return "Slave device or server is busy";
//case EMBXNACK:	return "Negative acknowledge";
//case EMBXMEMPAR:  return "Memory parity error";
//case EMBXGPATH:	return "Gateway path unavailable";
//case EMBXGTAR:	return "Target device failed to respond";
//case EMBBADCRC:	return "Invalid CRC";
//case EMBBADDATA:  return "Invalid data";
//case EMBBADEXC:	return "Invalid exception code";
//case EMBMDATA:	return "Too many data";
//case EMBBADSLAVE: return "Response not from requested slave";
//TCP Modbus slave(Server) port is 502 -- fixed port
//----------------------------------------------------------------------------
class Modbus_client
{
	private:
		Modbus_Type _Modbus_Type ;	// rtu or tcp selection
		modbus_t *_modbus_ctr ;		// modbus controller
		//-- control parameters for tcp type --
		std::string tcp_ipAddress ;
		int tcp_port ;
		//-- control parameters for rtu type --
		std::string rtu_device ;
        int rtu_baud;
		char rtu_parity;
		int rtu_data_bit, rtu_stop_bit;
		int rtu_device_id;
		//-- declare status and code of modbus-error --
		bool b_modbus_error ;
		int modbus_errorcode ;
		bool b_modbus_conn ;
		//-- declare variable of control ---
		//uint8_t *coil_result_table;			// result of do		
		//uint8_t *input_result_table;		// result of di
		//uint16_t *holdreg_result_table; 	// result of ao
		//uint16_t *inputreg_result_table; 	// result of ai
		//uint8_t *coil_set_table;			// setting data of do 
		//uint16_t *holdreg_set_table; 		// setting data of ao
	public:
		Modbus_client(Modbus_Type _Type);	 
		~Modbus_client();
		//-----------
		void rtu_crltparam(std::string _device , int _device_id, int _baud,int _data_bit,char _parity,int _stop_bit) ;
		void tcp_crltparam(std::string _ipAddress , int _port) ;
		bool client_ctr_Connect(); 
		bool get_client_errorcode(int& _error_code); 
		//-----------		
		bool read_coilstatus(int startbit_addr, int bit_number,uint8_t *resultdata);	// FC:0x01,Read Coil Status (do, Read Coil Status 00000 - 09999)
		bool read_inputstatus(int startbit_addr, int bit_number,uint8_t *resultdata);	// FC:0x02,Read input Status (di, Read Input Status 10000 - 19999)
		bool read_holdregister (int start_addr, int number,uint16_t *resultdata);		// FC:0x03,Read Holding Register (ao, Read Holding Register  40000 - 49999)
		bool read_inputregister (int start_addr, int number,uint16_t *resultdata);		// FC:0x04,Read Input Register (ai, Read  Input Register  30000 - 39999)
		bool write_singlecoil(int address, int status);									// FC:0x05,Write a single coil (do, Write a single Coil 00000 - 09999)
		bool write_singleregister(int address, const uint16_t value);					// FC:0x06,Write a single register (ao, Write a single register  40000 - 49999)
		bool write_multicoils(int start_addr,int number,const uint8_t *setdata); 		// FC:0x0f,Write multiple coils (do, Write multiple Coils 00000 - 09999)
		bool write_multiregisters(int start_addr,int number,const uint16_t *setdata);	// FC:0x10,Write multiple holding registers (do, Write multiple Register  40000 - 49999)
		//------------
		uint8_t* get_coil_result_table();
};
//-----------------------------------------------------------------------------
#endif   
