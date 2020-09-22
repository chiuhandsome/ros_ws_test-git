#ifndef function_run_action_H
#define function_run_action_H

#include <ros/ros.h>
#include <robot_scheduling_parameter.h>

#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/function_runAction.h>
#include <robot_scheduling_msgs/function_run_recoveryAction.h>

//#include <robot_scheduling_msgs/worksheetrunAction.h>

#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/time_waitAction.h>
#include <robot_scheduling_msgs/self_turn_toAction.h>

#include <public_actions/time_wait_action.h>
#include <public_actions/self_turn_action.h>
//---------------------------------------------------------------------------------
class function_run_action
{
    //---- actionlib -- server ---
    using function_run_as = actionlib::SimpleActionServer<robot_scheduling_msgs::function_runAction> ;
    using function_run_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::function_run_recoveryAction> ;
    //---- actionlib -- client ---
    using time_wait_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::time_waitAction> ;
    using turn_to_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::self_turn_toAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //******************************************
        //*** function_run                        **
        //******************************************  
        //---- actionlib -- server (function_run_as)
        function_run_as function_run_as_;  
        //std::string name_as_ ;
        void function_run_CB(const robot_scheduling_msgs::function_runGoalConstPtr& goal);        
        //---- actionlib -- server (function_run_rcvr_as)
        function_run_rcvr_as function_run_rcvr_as_;  
        void function_run_rcvr_CB(const robot_scheduling_msgs::function_run_recoveryGoalConstPtr& goal);
        //int _function_run_current_time ;

        actionlib::SimpleClientGoalState function_run_ac_handler(std::string cmd_id,std::string cmd_params,std::string cmd_acname);

        bool bTimeout_flag ;
        //-- action client ------------------
        std::shared_ptr<time_wait_action_client> time_wait_action_client_;

        std::shared_ptr<robot_turn_action_client> robot_turn_action_client_;
    public:
        function_run_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) ;
        virtual ~function_run_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
    
};
//---------------------------------------------------------------------------------

#endif
