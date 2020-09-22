#include <car_db_manager/control_mongodbstore_client.h>
//*****************************************************************************
//-----------------------------------------------------------------------------
//-- control_mongodbstore_client constructor  -----
control_mongodbstore_client::control_mongodbstore_client(ros::NodeHandle nh): nh_(nh),
                                                                  _parameters_tb_process(nh),
                                                                  _worksheet_data_process(nh)
{
    
}
//-----------------------------------------------------------------------------
//-- base_mongodbstore_client de-constructor ---------------
control_mongodbstore_client::~control_mongodbstore_client() 
{

}
//-----------------------------------------------------------------------------
