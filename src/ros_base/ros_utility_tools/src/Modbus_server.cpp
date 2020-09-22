//#include <samsung_manage/Modbus_server.h>
//#include "../include/Modbus_server.h"
#include <Modbus_server.h>
//-----------------------------------------------------------------------------
//-- Modbus_server constructor  -----
Modbus_server::Modbus_server(Modbus_srv_Type srv_Type,bool b_debug):_Modbus_Type(srv_Type),
                                                    b_modbus_conn(false),b_msg_debug_show(b_debug)
{
    tcp_ipAddress = "" ;
    tcp_port = 1502 ;//1502 ;

    rtu_device = "/dev/ttyUSB1" ;
    int rtu_baud = 115200 ;
    char rtu_parity = 'N';
    rtu_data_bit = 8 ;
    rtu_stop_bit = 1 ;
    rtu_device_id = 1 ;

    MD_BITS_ADDRESS = 0 ; 			    MD_BITS_NB = 2000 ;		    //00000-09999
    MD_INPUT_BITS_ADDRESS = 0 ; 		MD_INPUT_BITS_NB = 1968;	//10000-19999
    MD_REGISTERS_ADDRESS = 0 ;		    MD_REGISTERS_NB = 125 ;		//40000-49999
    MD_INPUT_REGISTERS_ADDRESS = 0 ;    MD_INPUT_REGISTERS_NB = 123;//30000-39999

    number_CONNECTION = 1 ;
    //b_modbus_debug = FALSE;
	b_msg_debug_show = true ;	
    b_first_listen_first = false ; 
    init_connect_retry = 3 ;

    _sleep_period = 1 ;
	_srv_destory = false;
    _srv_start = false ;//true ; //false
    _srv_mdbus_connect = false ;
    _srv_thread = std::unique_ptr<std::thread>( new std::thread( std::bind(&Modbus_server::ThreadEntry, this)));
}
//-----------------------------------------------------------------------------
//-- Modbus_server de-constructor ---------------
Modbus_server::~Modbus_server()
{    
    //if(b_msg_debug_show)    ROS_INFO("~Modbus_server");
    if (_srv_thread->joinable())
	{
        std::lock_guard<std::mutex> lock(_srvrecv_Mutex);
        //std::unique_lock<std::mutex> lock(_srvrecv_Mutex);
        _srv_destory = true;        
        _srv_queuePending.notify_one();
        //if(b_msg_debug_show)    ROS_INFO("~Modbus_server");
    }
    _srv_thread->join();
}
//-----------------------------------------------------------------------------
//-- Modbus_server param set -_srv_start ---------------
void Modbus_server::param_srv_start_set(bool bSet)
{  
    //std::lock_guard<std::mutex> lock(_srvrecv_Mutex);
    std::unique_lock<std::mutex> lock(_srvrecv_Mutex);
    _srv_start = bSet;        
    _srv_queuePending.notify_one();
}
//-----------------------------------------------------------------------------
//-- Modbus_server param set -b_modbus_conn ---------------
void Modbus_server::param_b_modbus_conn_set(bool bSet)
{ 
    _srv_mdbus_connect = bSet;        
    _srv_queuePending.notify_one();
}
//-----------------------------------------------------------------------------
//-- Modbus_server ThreadEntry ---------------
void Modbus_server::ThreadEntry()
{
	while(true){
		{ 
            //if(b_msg_debug_show)    ROS_INFO("modbus server thread entry");
			std::unique_lock<std::mutex> lock(_srvrecv_Mutex);
			_srv_queuePending.wait( lock, [&] () { return (_srv_destory || _srv_start ); } ); // && modbus_errorcode == 0 && b_modbus_conn
            //if(b_msg_debug_show)    ROS_INFO("modbus server thread run");
			if(_srv_destory){
                _srv_destory = false ;
                _srv_start = false ;
                modbus_error_close(true,_socket);
				break;
            }
			else{
				if(_srv_mdbus_connect){
				    service_ctr_Run();
                }
                else{                    
                    service_ctr_mdbusConnect();                
                }
			}
		}
		//-------------------
		std::this_thread::sleep_for(std::chrono::milliseconds(_sleep_period));
	}
}
//-----------------------------------------------------------------------------
//-- setting control-parameters of modbus_rtu  -----
void Modbus_server::rtu_crltparam(std::string _device , int _device_id, int _baud,int _data_bit,char _parity,int _stop_bit)
{
    rtu_device = _device ;
    rtu_device_id = _device_id ;
    int rtu_baud = _baud ;
    char rtu_parity = _parity;
    rtu_data_bit = _data_bit ;
    rtu_stop_bit = _stop_bit ;
}
//-----------------------------------------------------------------------------
//-- setting control-parameters of modbus_tcp -----
void Modbus_server::tcp_crltparam(std::string _ipAddress , int _port)
{
    tcp_ipAddress =  _ipAddress ;
	tcp_port = _port ;
}
//-----------------------------------------------------------------------------
//-- Initial setting  modbus_ctr_Connect  -----
bool Modbus_server::service_ctr_Connect()
{
    b_modbus_conn = false ;
    b_modbus_error = false ;
    b_query_memory_set = false ;    
    //--------------
    bool b_initial =  modbus_init_connect();
    //-----------------
    param_b_modbus_conn_set(b_modbus_conn);
    param_srv_start_set(b_initial);

    return _srv_start ;
}
//-----------------------------------------------------------------------------
//-- recovery sequence for modbus error occurance or its de-constructor   -----
void Modbus_server::modbus_error_close(bool b_srv_ctx_exist,int _socket)
{
    modbus_errorcode = errno ;
    if(_socket != -1)
        close(_socket);
    if(b_srv_ctx_exist)    
        modbus_close(srv_ctx);
    modbus_free(srv_ctx);    
    modbus_mapping_free(mb_mapping);
    free(query);
}
//-----------------------------------------------------------------------------
//--  process of modbus init-Connect  -----
bool Modbus_server::modbus_init_connect()
{
    int try_counter = 0 ;
    bool b_result = false ;
    for(int i=0;i<init_connect_retry;i++){
        //-- modbus port initial set ----------
        if (_Modbus_Type == eModbus_srv_TCP) {
            if(tcp_ipAddress == "")
                srv_ctx = modbus_new_tcp(NULL, tcp_port);
            else
                srv_ctx = modbus_new_tcp(tcp_ipAddress.c_str(), tcp_port);

            query = (uint8_t *) malloc(MODBUS_TCP_MAX_ADU_LENGTH * sizeof(uint8_t));
        }
        else {
            srv_ctx =  modbus_new_rtu(rtu_device.c_str(), rtu_baud, rtu_parity, rtu_data_bit, rtu_stop_bit);
            modbus_set_slave(srv_ctx, rtu_device_id);
            query = (uint8_t *) malloc(MODBUS_RTU_MAX_ADU_LENGTH * sizeof(uint8_t));
        }
        header_length = modbus_get_header_length(srv_ctx);
        modbus_set_debug(srv_ctx, b_modbus_debug);//FALSE);   // debug mode setting ----
        //-- create modbus mapping table ---
        mb_mapping = modbus_mapping_new_start_address(
                    MD_BITS_ADDRESS, 			MD_BITS_NB,				    //00000-09999
                    MD_INPUT_BITS_ADDRESS, 		MD_INPUT_BITS_NB,		    //10000-19999
                    MD_REGISTERS_ADDRESS,		MD_REGISTERS_NB,		    //40000-49999
                    MD_INPUT_REGISTERS_ADDRESS, MD_INPUT_REGISTERS_NB) ;	//30000-39999
        if(mb_mapping != NULL){
            mappingtable_initset(); //use override function
            b_result = true ;
            break ;
        }
        else{
            if(b_msg_debug_show)    
                ROS_INFO("modbus_mapping_new_start_address error!!");
            modbus_error_close(true);
        }  
    }
    
    return b_result;
}
//-----------------------------------------------------------------------------
//--  process for modbus Connect  -----
void Modbus_server::service_ctr_mdbusConnect()
{
    int _result = false ;

    if (_Modbus_Type == eModbus_srv_TCP) {
        try{            
            //-- set socket to listen and accept ----
            _socket = modbus_tcp_listen(srv_ctx, number_CONNECTION);    // number_CONNECTION = 1 is fixed
            if(_socket != -1){
                if(b_msg_debug_show){
                    ROS_INFO("Server listen,Waiting for client connect.....");
                    b_first_listen_first = false ;
                }
                _result = modbus_tcp_accept(srv_ctx, &_socket);
            } 

            b_modbus_conn = ((_socket != -1) && (_result != -1));  
            if(b_msg_debug_show && !b_modbus_conn && !b_first_listen_first){
                ROS_INFO("set listen and accept error,retry and Waiting for client connect.....");
                b_first_listen_first = true ;
            }        
        }
        catch (std::exception& e){
            std::cout << "modbusTCP Exception: " << e.what() << std::endl;            
        }
    } 
    else {  
        try{        
            _result = modbus_connect(srv_ctx);
            b_modbus_conn = (_result != -1) ;
            if(b_modbus_conn){
                if(b_msg_debug_show){
                    ROS_INFO("Server listen,Waiting for client connect.....");
                    b_first_listen_first = false ;
                }
            }
            else{
                if(b_msg_debug_show){
                    if(!b_first_listen_first){ 
                        ROS_INFO("set listen and accept error,retry and Waiting for client connect.....");
                        b_first_listen_first = true ;
                    }
                }      
            }
        }
        catch (std::exception& e){
            std::cout << "modbusRTU Exception: " << e.what() << std::endl;
        }
    }

    param_b_modbus_conn_set(b_modbus_conn);
}
//-----------------------------------------------------------------------------
//-- process for modbus communiction  -----
void Modbus_server::service_ctr_Run()
{
    int _rc = modbus_receive(srv_ctx, query);   // Filtered queries return 0 (read-length is 0 )
    if(_rc != -1){
        bool b_result = modbus_prereply();  //use override function
        if(b_result){
            _rc = modbus_reply(srv_ctx, query, _rc, mb_mapping);
        }
    }
    //---------------------
    if(_rc == -1){
        b_modbus_conn = false ;
        if(b_msg_debug_show)    ROS_INFO("modbus communication error !");
        modbus_error_close(true,_socket);
        modbus_init_connect();
    }
    else{
        if(b_msg_debug_show)    ROS_INFO("modbus communication OK !");
        b_modbus_conn = true ;
        modbus_errorcode = 0 ;
    }

    param_b_modbus_conn_set(b_modbus_conn);    
}
//-----------------------------------------------------------------------------
//-- get error-status and error-code of modbus_ctr  -----
bool Modbus_server::get_service_errorcode(int& _error_code)
{
    _error_code = modbus_errorcode ;
    return b_modbus_error ;
}
//-----------------------------------------------------------------------------
//-- set address-construct of modbus's control table  -----
void Modbus_server::address_config_initset(int _BITS_ADDRESS, int _BITS_NB,int _INPUT_BITS_ADDRESS,int _INPUT_BITS_NB,
									int _REGISTERS_ADDRESS,int _REGISTERS_NB, int _INPUT_REGISTERS_ADDRESS, int _INPUT_REGISTERS_NB)
{
    MD_BITS_ADDRESS = _BITS_ADDRESS ; 			            MD_BITS_NB = _BITS_NB ;				            //00000-09999
    MD_INPUT_BITS_ADDRESS = _INPUT_BITS_ADDRESS ; 		    MD_INPUT_BITS_NB = _INPUT_BITS_NB ;		        //10000-19999
    MD_REGISTERS_ADDRESS = _REGISTERS_ADDRESS ;		        MD_REGISTERS_NB = _REGISTERS_NB ;		        //40000-49999
    MD_INPUT_REGISTERS_ADDRESS = _INPUT_REGISTERS_ADDRESS ; MD_INPUT_REGISTERS_NB = _INPUT_REGISTERS_NB ;   //30000-39999
}
//-----------------------------------------------------------------------------
//-- get ADDRESS_Base of holding register  -----
int Modbus_server::get_REGISTERS_ADDRESS_Base()
{
    return MD_REGISTERS_ADDRESS ;
}
//-----------------------------------------------------------------------------
//-- set SafetyTime of EntryThread -----
void Modbus_server::EntryThread_SafetyTime_Set(int _delay)
{
    _sleep_period = _delay ;
}
//-----------------------------------------------------------------------------
//-- set modbus's debug mode -----
void Modbus_server::set_modbus_debug(bool b_set)
{
    b_modbus_debug = b_set ;
}
//-----------------------------------------------------------------------------
//-- set debug_show flag  -----
void Modbus_server::set_msg_debug_show(bool b_set)
{
    b_msg_debug_show = b_set ;
}
//-----------------------------------------------------------------------------
//-- set max. numbers of modbus  -----
void Modbus_server::set_number_CONNECTION(int _number)
{
    number_CONNECTION = _number ;
}
/*//-----------------------------------------------------------------------------
//-- Initial setting  modbus_ctr  -----
void Modbus_server::service_ctr_Run()
{
    while(true){
        int _result = false ;
        if(!b_modbus_conn){
            if (_Modbus_Type == eModbus_srv_TCP) {
                if(tcp_ipAddress == "")
                    srv_ctx = modbus_new_tcp(NULL, tcp_port);
                else
                    srv_ctx = modbus_new_tcp(tcp_ipAddress.c_str(), tcp_port);

                query = (uint8_t *) malloc(MODBUS_TCP_MAX_ADU_LENGTH * sizeof(uint8_t));
            }
            else {
                srv_ctx =  modbus_new_rtu(rtu_device.c_str(), rtu_baud, rtu_parity, rtu_data_bit, rtu_stop_bit);
                modbus_set_slave(srv_ctx, rtu_device_id);
                query = (uint8_t *) malloc(MODBUS_RTU_MAX_ADU_LENGTH * sizeof(uint8_t));
            }
            header_length = modbus_get_header_length(srv_ctx);

            modbus_set_debug(srv_ctx, FALSE);
            //-- create modbus mapping table ---
            mb_mapping = modbus_mapping_new_start_address(
                        MD_BITS_ADDRESS, 			MD_BITS_NB,				    //00000-09999
                        MD_INPUT_BITS_ADDRESS, 		MD_INPUT_BITS_NB,		    //10000-19999
                        MD_REGISTERS_ADDRESS,		MD_REGISTERS_NB,		    //40000-49999
                        MD_INPUT_REGISTERS_ADDRESS, MD_INPUT_REGISTERS_NB) ;	//30000-39999
            if(mb_mapping != NULL){
                //-- Set data to modbus mapping table ---
                mappingtable_initset(); //use override function
                _srv_start = true ;
            }
            else{
                modbus_free(srv_ctx);
                modbus_mapping_free(mb_mapping);
            }
            modbus_errorcode = b_modbus_error ? errno : 0 ;

            if(mb_mapping != NULL){
                //-- Set data to modbus mapping table ---
                mappingtable_initset(); //use override function
                _srv_start = true ;
            }
            else{
                modbus_free(srv_ctx);
                modbus_mapping_free(mb_mapping);
            }
            modbus_errorcode = b_modbus_error ? errno : 0 ;
            _srv_queuePending.notify_one();
            if (_Modbus_Type == eModbus_srv_TCP) {
                try{
                    ROS_INFO("modbus_tcp_listen");
                    //-- set socket to listen and accept ----
                    _socket = modbus_tcp_listen(srv_ctx, number_CONNECTION);    // number_CONNECTION = 1 is fixed
                    ROS_INFO("modbus_tcp_accept");
                    _result = modbus_tcp_accept(srv_ctx, &_socket);
                    ROS_INFO("modbus_tcp_accept1234");
                }
                catch (std::exception& e){
                    std::cout << "Exception: " << e.what() << std::endl;
                    //return ;// 0;
                }

            } else {
                _result = modbus_connect(srv_ctx);
            }
            b_modbus_conn = (_result != -1);

            modbus_errorcode = b_modbus_error ? errno : 0 ;
            if(b_modbus_conn){
                ROS_INFO("modbus server _rc != -1");
                _srv_start = true ;
            }
            else{
                ROS_INFO("modbus server _rc == -1");
                //modbus_mapping_free(mb_mapping);
                //modbus_close(srv_ctx);
                //modbus_free(srv_ctx);
            }
        }
        else{
            // uint8_t query[MODBUS_TCP_MAX_ADU_LENGTH];
            int _rc = modbus_receive(srv_ctx, query);   // Filtered queries return 0 (read-length is 0 )
            if(_rc != -1){
                bool b_result = modbus_prereply();  //use override function
                if(b_result){
                    _rc = modbus_reply(srv_ctx, query, _rc, mb_mapping);
                }
            }
            //---------------------
            if(_rc == -1){
                b_modbus_conn = false ;
                ROS_INFO("modbus server _rc == -1");
                //modbus_mapping_free(mb_mapping);
                close(_socket);
                //std::this_thread::sleep_for(std::chrono::milliseconds(2000));
                modbus_close(srv_ctx);
                modbus_free(srv_ctx);
                modbus_mapping_free(mb_mapping);
                //ROS_INFO("modbus server run finished");
            }
            else
                b_modbus_conn = true ;

        }
        _srv_queuePending.notify_one();
    }    
}*/

//---------------------------------------------------------------------/--------
