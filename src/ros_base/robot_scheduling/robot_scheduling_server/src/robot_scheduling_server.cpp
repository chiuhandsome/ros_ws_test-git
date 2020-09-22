#include <robot_scheduling_server.h>
//-----------------------------------------------------------------------------
robot_scheduling_server::robot_scheduling_server()  : nh_(),_pnp_server()
{ 
    ROS_INFO("robot_scheduling_server");
    _pnp_server.start();
}
//-----------------------------------------------------------------------------
robot_scheduling_server ::~robot_scheduling_server()
{
   
}
//-----------------------------------------------------------------------------
//-- load control parameters from parameter.yaml  ---------------
void robot_scheduling_server ::Load_CntParameter()
{
    ros::NodeHandle pnh("~");
	//if(!pnh.getParam("udp_PORT_OPEN_RETRY", udp_PORT_OPEN_RETRY))
    //    udp_PORT_OPEN_RETRY = 5 ;	
}
//-----------------------------------------------------------------------------
/*robot_scheduling_parameter* robot_scheduling_server ::get_modules_parameter()
{
    return &parameter_ ;
}*/
//-----------------------------------------------------------------------------
//*****************************************************************************
//** main enterpoint of this crlt_messagemanager_node                        ** 
//*****************************************************************************
//-----------------------------------------------------------------------------
int main(int argc, char **argv)
{
    //ROS_INFO("robot_scheduling_server ---------------");
    ros::init(argc, argv, "scheduling_server_node");
    robot_scheduling_server _scheduling_server;


    ros::spin();
    return 0;
}
//-----------------------------------------------------------------------------

