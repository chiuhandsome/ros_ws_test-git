#ifndef robot_if_process_action_H
#define robot_if_process_action_H

#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/robot_interface_processAction.h>
#include <robot_scheduling_parameter.h>
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
class robot_if_process_action
{
    using interface_process_as = actionlib::SimpleActionServer<robot_scheduling_msgs::robot_interface_processAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;

        interface_process_as if_process_as;  
        std::string name_as_ ;
        void if_process_CB(const robot_scheduling_msgs::robot_interface_processGoalConstPtr& goal);     
        void do_process_lower_function(const robot_scheduling_msgs::robot_interface_processGoalConstPtr& goal);   
        void do_process_upper_function(const robot_scheduling_msgs::robot_interface_processGoalConstPtr& goal);   
    public:
        robot_if_process_action(ros::NodeHandle nh,std::string name_as) ; 
        virtual ~robot_if_process_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);     
};
//---------------------------------------------------------------------------------

#endif
