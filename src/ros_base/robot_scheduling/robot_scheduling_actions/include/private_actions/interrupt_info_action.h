#ifndef interrupt_info_action_H_
#define interrupt_info_action_H_

#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_parameter.h>
#include <robot_scheduling_msgs/interrupt_infoAction.h>

//---------------------------------------------------------------------------------
class interrupt_info_action
{
    using interrupt_info_as = actionlib::SimpleActionServer<robot_scheduling_msgs::interrupt_infoAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //---- actionlib -- server (run_state_as)
        interrupt_info_as interrupt_info_as_;  
        //std::string name_as_ ;
        void interrupt_info_CB(const robot_scheduling_msgs::interrupt_infoGoalConstPtr& goal);
        
    public:
        interrupt_info_action(ros::NodeHandle nh,std::string name_as);//,robot_scheduling_parameter* parameter) ;
        virtual ~interrupt_info_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
    
};
//---------------------------------------------------------------------------------

#endif
