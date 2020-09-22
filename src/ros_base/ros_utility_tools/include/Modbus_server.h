#ifndef MODBUS_SERVER_H
#define MODBUS_SERVER_H
//----------------------------------------------------------------------------
#include <ros/ros.h>
#include <modbus/modbus-tcp.h>
#include <modbus/modbus-rtu.h>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <signal.h>
//---------------------------------------------------------------------------
typedef enum{
    eModbus_srv_TCP = 0, eModbus_srv_RTU  
}Modbus_srv_Type ;

using namespace std ;
//--------------------------------------------------------------------------
//***************************************************************************
//**  base class of Modbus_server                                          **
//***************************************************************************
//---------------------------------------------------------------------------
class  Modbus_server
{
	private:
		//-- control parameters for tcp type --
		std::string tcp_ipAddress ;
		int tcp_port ;
		//-- control parameters for rtu type --
		std::string rtu_device ;
        int rtu_baud ;
		char rtu_parity;
		int rtu_data_bit, rtu_stop_bit;
		int rtu_device_id;
		//-- declare status and code of modbus-error --
		bool b_modbus_error ;
		int modbus_errorcode ;
		bool b_modbus_conn ;
		bool b_query_memory_set ;	

		bool b_modbus_debug ;
		bool b_msg_debug_show ;	
		//---------
		int MD_BITS_ADDRESS, 			MD_BITS_NB,				//00000-09999
			MD_INPUT_BITS_ADDRESS, 		MD_INPUT_BITS_NB,		//10000-19999
			MD_REGISTERS_ADDRESS,		MD_REGISTERS_NB,		//40000-49999
			MD_INPUT_REGISTERS_ADDRESS, MD_INPUT_REGISTERS_NB ;	//30000-39999
		int number_CONNECTION ;
		int _socket ;
		//-- declare thread --
		std::unique_ptr<std::thread>	_srv_thread;
		std::condition_variable       	_srv_queuePending;
		std::mutex                    	_srvrecv_Mutex;
		bool	                        _srv_destory; 
		bool	                        _srv_start; 
		bool 							_srv_mdbus_connect; 
		void ThreadEntry();
		int _sleep_period ;

		void param_srv_start_set(bool bSet);
		void param_b_modbus_conn_set(bool bSet);
		void service_ctr_Run(); 
		void service_ctr_mdbusConnect();

		void modbus_error_close(bool b_srv_ctx_exist,int _socket = -1);
		bool b_first_listen_first ;
		int  init_connect_retry ;
		bool modbus_init_connect();
	protected:
		virtual void mappingtable_initset() = 0 ; 
		virtual bool modbus_prereply() = 0 ; 
	public:
		Modbus_server(Modbus_srv_Type srv_Type,bool b_debug = false);	
		~Modbus_server();
		//--declare public variables--------
		Modbus_srv_Type _Modbus_Type ;	// rtu or tcp selection	
		modbus_t *srv_ctx;
		modbus_mapping_t *mb_mapping;
		uint8_t *query;
		int header_length;
		//----------------------------------
		void rtu_crltparam(std::string _device , int _device_id, int _baud,int _data_bit,char _parity,int _stop_bit) ;
		void tcp_crltparam(std::string _ipAddress , int _port) ;
		bool service_ctr_Connect(); 
		bool get_service_errorcode(int& _error_code);
		void address_config_initset(int _BITS_ADDRESS, int _BITS_NB,int _INPUT_BITS_ADDRESS,int _INPUT_BITS_NB,
									int _REGISTERS_ADDRESS,int _REGISTERS_NB, int _INPUT_REGISTERS_ADDRESS, int _INPUT_REGISTERS_NB) ; 
		
		int  get_REGISTERS_ADDRESS_Base();
		void EntryThread_SafetyTime_Set(int _delay);

		void set_modbus_debug(bool b_set) ;
		void set_msg_debug_show(bool b_set) ;
		void set_number_CONNECTION(int _number);
};
//-----------------------------------------------------------------------------
#endif   
