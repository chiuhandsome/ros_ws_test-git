#include <car_db_related_tables/worksheet_data_process.h>
#include <thread>
//----------------------------------------------------------------------------
worksheet_data_process::worksheet_data_process(ros::NodeHandle &nh):nh_(nh)
{
    Load_CntParameter();
    //------- model name : ellctrl_agvapp_tables ---------------- 
    work_sheet_main = new module_work_sheet_main(nh_,tbname_work_sheet_main);  
    work_sheet_items = new module_work_sheet_items(nh_,tbname_work_sheet_items);  
}
//-----------------------------------------------------------------------------
//-- ctrl_tb_alarmcode de-constructor ---------------
worksheet_data_process::~worksheet_data_process() 
{    
    if(work_sheet_main)         delete work_sheet_main ;
    if(work_sheet_items)        delete work_sheet_items ;
}
//-----------------------------------------------------------------------------
void worksheet_data_process::Load_CntParameter()
{
    ros::NodeHandle pnh("~");
    
	if(!pnh.getParam("tbname_work_sheet_main", tbname_work_sheet_main))
        tbname_work_sheet_main = "work_sheet_main" ;	 
    if(!pnh.getParam("tbname_work_sheet_items", tbname_work_sheet_items))
        tbname_work_sheet_items = "work_sheet_items" ;	
}
//-----------------------------------------------------------------------------