//#include "../include/Modbus_client.h"
#include <Modbus_client.h>
//*****************************************************************************
//-----------------------------------------------------------------------------
//-- Modbus_client constructor  -----
Modbus_client::Modbus_client(Modbus_Type _Type) : _Modbus_Type(_Type),b_modbus_error(false) ,b_modbus_conn(false)
{
    //tcp_ipAddress = "" ;
    tcp_port = 1502 ;

    rtu_device = "/dev/ttyUSB1" ;
    int rtu_baud = 115200 ;
    char rtu_parity = 'N';
    rtu_data_bit = 8 ;
    rtu_stop_bit = 1 ;
    rtu_device_id = 1 ;

    //coil_result_table = (uint8_t *) malloc(useAddressnum * sizeof(uint8_t));
    //memset(coil_result_table, 0, useAddressnum * sizeof(uint8_t));
    //input_result_table = (uint8_t *) malloc(useAddressnum * sizeof(uint8_t));
    //memset(input_result_table, 0, useAddressnum * sizeof(uint8_t));
    //holdreg_result_table = (uint16_t *) malloc(useAddressnum * sizeof(uint16_t));
    //memset(holdreg_result_table, 0, useAddressnum * sizeof(uint16_t));
    //inputreg_result_table = (uint16_t *) malloc(useAddressnum * sizeof(uint16_t));
    //memset(inputreg_result_table, 0, useAddressnum * sizeof(uint16_t));
    //coil_set_table = (uint8_t *) malloc(useAddressnum * sizeof(uint8_t));
    //memset(coil_set_table, 0, useAddressnum * sizeof(uint8_t));
    //holdreg_set_table = (uint16_t *) malloc(useAddressnum * sizeof(uint16_t));
    //memset(holdreg_set_table, 0, useAddressnum * sizeof(uint16_t));
}
//-----------------------------------------------------------------------------
//-- Modbus_client de-constructor ---------------
Modbus_client::~Modbus_client()
{
    // Free the memory
    //free(coil_result_table);
    //free(input_result_table);
    //free(holdreg_result_table);
    //free(inputreg_result_table);
    //free(coil_set_table);
    //free(holdreg_set_table);

    // Close the connection
    if(b_modbus_conn){
        modbus_close(_modbus_ctr);
        modbus_free(_modbus_ctr);
    }
}
//-----------------------------------------------------------------------------
//-- setting control-parameters of modbus_rtu  -----
void Modbus_client::rtu_crltparam(std::string _device , int _device_id, int _baud,int _data_bit,char _parity,int _stop_bit)
{
    rtu_device = _device ;
    rtu_device_id = _device_id ;
    int rtu_baud = _baud ;
    char rtu_parity = _parity;
    rtu_data_bit = _data_bit ;
    rtu_stop_bit = _stop_bit ;
}
//-----------------------------------------------------------------------------
//-- setting control-parameters of modbus_rtu  -----
void Modbus_client::tcp_crltparam(std::string _ipAddress , int _port)
{
    tcp_ipAddress =  _ipAddress ;
	tcp_port = _port ;
}
//-----------------------------------------------------------------------------
//-- Initial setting  modbus_ctr  -----
bool Modbus_client::client_ctr_Connect()
{
    if(_Modbus_Type == eModbus_TCP)
        _modbus_ctr = modbus_new_tcp(tcp_ipAddress.c_str(), tcp_port);
    else if(_Modbus_Type == eModbus_RTU){
        _modbus_ctr = modbus_new_rtu(rtu_device.c_str(), rtu_baud, rtu_parity, rtu_data_bit, rtu_stop_bit);
        modbus_set_slave(_modbus_ctr, rtu_device_id);
    }

    b_modbus_error = (modbus_connect(_modbus_ctr) == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;
    if(b_modbus_error){
        modbus_free(_modbus_ctr);
    }

    b_modbus_conn = !b_modbus_error ;

    return !b_modbus_error;
}
//-----------------------------------------------------------------------------
//-- get error-status and error-code of modbus_ctr  -----
bool Modbus_client::get_client_errorcode(int& _error_code)
{
    _error_code = modbus_errorcode ;
    return b_modbus_error ;
}
//-----------------------------------------------------------------------------
//--  Read the ON/OFF status of discrete outputs (DO) in the slave (FC0x01)
bool Modbus_client::read_coilstatus(int startbit_addr, int bit_number,uint8_t *resultdata)
{
    if(!b_modbus_conn){
        client_ctr_Connect();
        if(!b_modbus_conn)
            return false ;
    }
    //-----------------
    int result =  modbus_read_bits(_modbus_ctr, startbit_addr, bit_number,resultdata);

    b_modbus_error = (result == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;

    return !b_modbus_error ;
}
//-----------------------------------------------------------------------------
//--  Read the ON/OFF status of discrete inputs (DI) in the slave (FC0x02)(DI)
bool Modbus_client::read_inputstatus(int startbit_addr, int bit_number,uint8_t *resultdata)
{
    if(!b_modbus_conn){
        client_ctr_Connect();
        if(!b_modbus_conn)
            return false ;
    }
    //-----------------
    int result =  modbus_read_input_bits(_modbus_ctr, startbit_addr, bit_number,resultdata);

    b_modbus_error = (result == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;

    return !b_modbus_error ;
}
//-----------------------------------------------------------------------------
//--  Read the binary contents of holding registers in the slave  (FC0x03)(AO)
bool Modbus_client::read_holdregister (int start_addr, int number,uint16_t *resultdata)
{
    if(!b_modbus_conn){
        client_ctr_Connect();
        if(!b_modbus_conn)
            return false ;
    }
    //-----------------
    int result = modbus_read_registers(_modbus_ctr, start_addr, number,resultdata);

    b_modbus_error = (result == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;

    return !b_modbus_error ;
}
//-----------------------------------------------------------------------------
//--  Read the binary contents of holding registers in the slave (FC0x04)(AI)
bool Modbus_client::read_inputregister (int start_addr, int number,uint16_t *resultdata)
{
    if(!b_modbus_conn){
        client_ctr_Connect();
        if(!b_modbus_conn)
            return false ;
    }
    //-----------------
    int result = modbus_read_input_registers(_modbus_ctr, start_addr, number,resultdata);

    b_modbus_error = (result == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;

    return !b_modbus_error ;
}
//-----------------------------------------------------------------------------
//--  Forces a single coil to either ON or OFF of the discrete output (DO) status in the slave  (FC0x05)
bool Modbus_client::write_singlecoil(int address, int status)
{
    if(!b_modbus_conn){
        client_ctr_Connect();
        if(!b_modbus_conn)
            return false ;
    }
    //-----------------
    int result = modbus_write_bit(_modbus_ctr, address, status);

    b_modbus_error = (result == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;

    return !b_modbus_error ;
}
//-----------------------------------------------------------------------------
//--  Presets  a  value  into  a  single  holding  register. (AO) (FC0x06)
bool Modbus_client::write_singleregister(int address, const uint16_t value)
{
    if(!b_modbus_conn){
        client_ctr_Connect();
        if(!b_modbus_conn)
            return false ;
    }
    //-----------------
    int result = modbus_write_register(_modbus_ctr, address, value);

    b_modbus_error = (result == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;

    return !b_modbus_error ;
}
//-----------------------------------------------------------------------------
//--  Forces each coil in a sequence of the discrete outputs (DO) to either ON or OFF.  (FC0x0f)
bool Modbus_client::write_multicoils(int start_addr,int number,const uint8_t *setdata)
{
    if(!b_modbus_conn){
        client_ctr_Connect();
        if(!b_modbus_conn)
            return false ;
    }
    //-----------------
    int result = modbus_write_bits(_modbus_ctr, start_addr, number, setdata);

    b_modbus_error = (result == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;

    return !b_modbus_error ;
}
//-----------------------------------------------------------------------------
//--  Presets values into a sequence of holding registers.   (FC0x10)
bool Modbus_client::write_multiregisters(int start_addr,int number,const uint16_t *setdata)
{
    if(!b_modbus_conn){
        client_ctr_Connect();
        if(!b_modbus_conn)
            return false ;
    }
    //-----------------
    int result = modbus_write_registers(_modbus_ctr, start_addr, number, setdata);

    b_modbus_error = (result == -1);
    modbus_errorcode = b_modbus_error ? errno : 0 ;

    return !b_modbus_error ;
}
//-----------------------------------------------------------------------------
