#ifndef robot_command_action_H
#define robot_command_action_H

#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/robot_commandAction.h>
#include <robot_scheduling_parameter.h>
#include <robot_scheduling_parameter.h>
//---------------------------------------------------------------------------------
class robot_command_action
{
    using robot_command_as = actionlib::SimpleActionServer<robot_scheduling_msgs::robot_commandAction> ;
    private:
        ros::NodeHandle nh_;

        robot_command_as command_as;  
        std::string name_as_ ;
        void command_CB(const robot_scheduling_msgs::robot_commandGoalConstPtr& goal);
        void do_command_dispatch(const robot_scheduling_msgs::robot_commandGoalConstPtr& goal);   // decide command dispatch
        robot_scheduling_parameter* parameter_;
    public:
        robot_command_action(ros::NodeHandle nh,std::string name_as) ;//,robot_scheduling_parameter* parameter) ;
        virtual ~robot_command_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);     
};
//---------------------------------------------------------------------------------

#endif
