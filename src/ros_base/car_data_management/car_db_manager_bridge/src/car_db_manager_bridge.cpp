#include <car_db_manager/car_db_manager_bridge.h>
#include <ros_utility_tools/ros_tools.h>
//*****************************************************************************
//** main class crlt_messagemanager                                          ** 
//*****************************************************************************
//-----------------------------------------------------------------------------
//-- robot_database_dealer constructor  -----
car_db_manager_bridge::car_db_manager_bridge(ros::NodeHandle &nh) : nh_(nh),
                                                      db_manager_Interface(nh) 
{ 
    Load_CntParameter();
    /*crlt_msg_Interface.crltMessage_start_set(true);
    //------------------
    #if(using_msgTest_unit)
	    crlt_msg_testunit = new crlt_message_testunit(nh_) ;
        crlt_msg_testunit->message_testunit_start();   
    #endif*/    
}
//-----------------------------------------------------------------------------
//-- crlt_messagemanager de-constructor ---------------
car_db_manager_bridge::~car_db_manager_bridge()
{
   
}
//-----------------------------------------------------------------------------
//-- load control parameters from parameter.yaml  ---------------
void car_db_manager_bridge::Load_CntParameter()
{
    ros::NodeHandle pnh("~");
	//if(!pnh.getParam("udp_PORT_OPEN_RETRY", udp_PORT_OPEN_RETRY))
    //    udp_PORT_OPEN_RETRY = 5 ;	
}
//-----------------------------------------------------------------------------
//*****************************************************************************
//** main enterpoint of this crlt_messagemanager_node                        ** 
//*****************************************************************************
//-----------------------------------------------------------------------------
int main(int argc, char **argv)
{
    ros::init(argc, argv, "cellctrl_database_bridge_node");
    ros::NodeHandle nh;
    car_db_manager_bridge _db_manager_bridge(nh);

    ros::spin();
    return 0;
}
//-----------------------------------------------------------------------------
