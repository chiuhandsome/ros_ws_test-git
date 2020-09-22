//#include <crlt_messagemanager/base_mongodbstore_client.h>
#include <base_mongodbstore_client.h>
//#include "../include/base_mongodbstore_client.h"
//*****************************************************************************
//-----------------------------------------------------------------------------
//-- base_mongodbstore_client constructor  -----
base_mongodbstore_client::base_mongodbstore_client(ros::NodeHandle &nh,std::string _tablename): 
                                                    nh_(nh),base_mongodb_tablename(_tablename)

{
    base_mongodb = new MessageStoreProxy(nh_,base_mongodb_tablename);
    
}
//-----------------------------------------------------------------------------
//-- base_mongodbstore_client de-constructor ---------------
base_mongodbstore_client::~base_mongodbstore_client() 
{

}
//-----------------------------------------------------------------------------
bool base_mongodbstore_client::database_delete(std::string system_id)
{
	bool bDelete = base_mongodb->deleteID(system_id);
    return bDelete ;
}
//-----------------------------------------------------------------------------
std::string base_mongodbstore_client::get_updatetime_data(std::string  updatetime_data,bool bupper)
{
	std::string sRet="";
    //ROS_INFO("get_updatetime_data");
    std::string sYear,sMonth,sDate,sHour,sMinute,sSecond;
    int length = updatetime_data.length() ;
    sYear = (length >=4) ? updatetime_data.substr(0,4) : "" ;
    sMonth = (length >=7) ? updatetime_data.substr(5,2) : "" ;
    sDate = (length >=10) ? updatetime_data.substr(8,2): "" ;
    sHour = (length >=13) ? updatetime_data.substr(11,2): "" ;
    sMinute = (length >=16) ? updatetime_data.substr(14,2): "" ;
    sSecond = (length >=19) ? updatetime_data.substr(17,2): "" ;
    //ROS_INFO(sYear.c_str());
    //ROS_INFO(sMonth.c_str());
    //ROS_INFO(sDate.c_str());
    //ROS_INFO(sHour.c_str());
    //ROS_INFO(sMinute.c_str());
    //ROS_INFO(sSecond.c_str());
    if(sMonth.empty())
        sMonth = bupper ? "99" : "00" ;   
    if(sDate.empty())
        sDate = bupper ? "99" : "00" ;   
    if(sHour.empty())
        sHour = bupper ? "99" : "00" ;   
    if(sMinute.empty())
        sMinute = bupper ? "99" : "00" ;   
    if(sSecond.empty())
        sSecond = bupper ? "99" : "00" ; 
    //ROS_INFO("== data transfer ==");
    //ROS_INFO(sYear.c_str());
    //ROS_INFO(sMonth.c_str());
    //ROS_INFO(sDate.c_str());
    //ROS_INFO(sHour.c_str());
    //ROS_INFO(sMinute.c_str());
    //ROS_INFO(sSecond.c_str());      

    sRet = sYear+"-"+sMonth+"-"+sDate+"T"+sHour+":"+sMinute+":"+sSecond ;  
    return sRet ;
}
//-----------------------------------------------------------------------------
