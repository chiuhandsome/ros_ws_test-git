#include <car_db_manager/car_db_manager_Interface.h>
#include <ros_utility_tools/ros_tools.h>
//-----------------------------------------------------------------------------
//-- robot_database_Interface constructor  -----
car_db_manager_Interface::car_db_manager_Interface(ros::NodeHandle &nh) : nh_(nh),
                                                               _mongodbstore_client(nh)
{
    Load_CntParameter();
    //_mongodbstore_client = new control_mongodbstore_client(nh_,tbname_alarmcode,tbname_alarmhistory,tbname_roslog);
    
}
//-----------------------------------------------------------------------------
//-- robot_database_Interface de-constructor ---------------
car_db_manager_Interface::~car_db_manager_Interface()
{
    //delete _mongodbstore_client ;    
}
//-----------------------------------------------------------------------------
void car_db_manager_Interface::Load_CntParameter()
{
    ros::NodeHandle pnh("~");
	/*if(!pnh.getParam("tbname_alarmcode", tbname_alarmcode))
        tbname_alarmcode = "tbname_alarmcode" ;	    
    if(!pnh.getParam("tbname_alarmhistory", tbname_alarmhistory))
        tbname_alarmhistory = "tbname_alarmhistory" ;	    
    if(!pnh.getParam("tbname_roslog", tbname_roslog))
        tbname_roslog = "tbname_roslog" ;	*/
}
//-----------------------------------------------------------------------------
