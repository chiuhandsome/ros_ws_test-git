#ifndef robot_power_charge_action_H
#define robot_power_charge_action_H
//-----------------------------------------------------------------------------
enum charge_type{
	charge_none = 0  , charge_in_service 
} ;
enum charge_seq_type{
	charge_seq_none = 0  , 
	charge_seq_precheck, charge_seq_check , charge_seq_operate, charge_seq_status, charge_seq_finish ,
	//---------------
	charge_seq_end
} ;
//----------------------------------------------------------------------------
#include <ros/ros.h>
#include <robot_scheduling_parameter.h>
#include <robot_scheduling_service.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/power_chargeAction.h>
#include <robot_scheduling_msgs/power_charge_recoveryAction.h>
//---------------------------------------------------------------------------------
class robot_power_charge_action
{
    using power_charge_as = actionlib::SimpleActionServer<robot_scheduling_msgs::power_chargeAction> ;
    using power_charge_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::power_charge_recoveryAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        robot_scheduling_service* scheduling_service_;
        //--------------
        power_charge_as power_charge_as_;  
        //std::string name_as_ ;
        void power_charge_CB(const robot_scheduling_msgs::power_chargeGoalConstPtr& goal);
        //void do_power_charge(const robot_scheduling_msgs::power_chargeGoalConstPtr& goal);    
        //--------------
        power_charge_rcvr_as power_charge_rcvr_as_;  
        int _Recovery_to_current_time ;
        //std::string rcvr_name_as_ ;
        void power_charge_rcvr_CB(const robot_scheduling_msgs::power_charge_recoveryGoalConstPtr& goal);
        //void do_power_charge_rcvr(const robot_scheduling_msgs::power_charge_recoveryGoalConstPtr& goal);  
        bool power_charge_one_step(int cmd_seq,std::string &result_data);  
    public:
        robot_power_charge_action(ros::NodeHandle nh,std::string name_as,std::string rcvr_name_as);//,robot_scheduling_parameter* parameter) ;
        virtual ~robot_power_charge_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
        void set_robot_scheduling_service(robot_scheduling_service* service);
    
};
//---------------------------------------------------------------------------------

#endif
