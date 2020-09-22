#include <private_actions/interrupt_info_action.h>
#include <thread>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
interrupt_info_action::interrupt_info_action(ros::NodeHandle nh,std::string name_as):
                        nh_(nh),//name_as_123(name_as),name_rcvr_as_(name_rcvr_as),
                        interrupt_info_as_(nh_,name_as, boost::bind(&interrupt_info_action::interrupt_info_CB, this, _1), false)
{ 
    
    ROS_INFO("interrupt_info_as_.start()");
    interrupt_info_as_.start();
}    
//-----------------------------------------------------------------------------
interrupt_info_action::~interrupt_info_action()
{
    
}
//-----------------------------------------------------------------------------
void interrupt_info_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
}
//-----------------------------------------------------------------------------
void interrupt_info_action::interrupt_info_CB(const robot_scheduling_msgs::interrupt_infoGoalConstPtr& goal)
{
    //ROS_INFO("run_state_CB");
    if (interrupt_info_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("interrupt_info_as_ execution preempted.");
        interrupt_info_as_.setPreempted();
        return;
    }
    else{
        robot_scheduling_msgs::interrupt_infoResult _result;
        std::string info = goal->interrupt_info ;
        parameter_->set_interrupt_info(info);
        _result.result = robot_scheduling_msgs::interrupt_infoResult::OK ;
        interrupt_info_as_.setSucceeded(_result);  
    }
}
//--------------------------------------------------------------------------------
