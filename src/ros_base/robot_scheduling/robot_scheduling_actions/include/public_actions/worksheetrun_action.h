#ifndef worksheetrun_action_H
#define worksheetrun_action_H

#include <ros/ros.h>
#include <vector>
#include <robot_scheduling_parameter.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/worksheetrunAction.h>
//---------------------------------------------------------------------------------
class worksheetrun_action
{
    using worksheetrun_as = actionlib::SimpleActionServer<robot_scheduling_msgs::worksheetrunAction> ;

    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //-----------------------------
        worksheetrun_as worksheetrun_as_;  
        void worksheetrun_as_CB(const robot_scheduling_msgs::worksheetrunGoalConstPtr& goal);
        int worksheet_items ;
        int worksheet_current_item ;
        //-----------------------------
        bool bWorkNextItem_AutoTurn ;
        
        std::vector<int> act_worksheet_item_vec ;
        void get_act_worksheet_item_vec();
        bool WorkSheet_PreMoveCheck(int step);        
        bool WorkSheet_PostTurnCheck(int step);
        
    public:
        worksheetrun_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) ;
        virtual ~worksheetrun_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
        
    
};
//---------------------------------------------------------------------------------

#endif
