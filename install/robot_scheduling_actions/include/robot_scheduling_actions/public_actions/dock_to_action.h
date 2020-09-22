#ifndef dock_to_action_H
#define dock_to_action_H

#include <ros/ros.h>
#include <robot_scheduling_parameter.h>

#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/dock_toAction.h>
#include <robot_scheduling_msgs/dock_to_recoveryAction.h>

#include <actionlib/client/simple_action_client.h>
#include <open_auto_dock_msgs/DockAction.h>
//---------------------------------------------------------------------------------
class dock_to_action
{
    //---- actionlib -- server ---
    using dock_to_as = actionlib::SimpleActionServer<robot_scheduling_msgs::dock_toAction> ;
    using dock_to_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::dock_to_recoveryAction> ;
    //---- actionlib -- client ---
    using dock_to_ac = actionlib::SimpleActionClient<open_auto_dock_msgs::DockAction>;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //---- actionlib -- server (pose_move_to_as)
        dock_to_as dock_to_as_;  
        //std::string name_as_ ;
        void dock_to_CB(const robot_scheduling_msgs::dock_toGoalConstPtr& goal);
        //---- actionlib -- server (pose_move_to_rcvr_as)
        dock_to_rcvr_as dock_to_rcvr_as_;  
        //std::string name_rcvr_as_ ;
        void dock_to_rcvr_CB(const robot_scheduling_msgs::dock_to_recoveryGoalConstPtr& goal);
        int _Recovery_current_time ;  
        //----------------------------------
        std::string dock_to_ac_name ;
        std::shared_ptr<dock_to_ac> dock_to_ac_;
        actionlib::SimpleClientGoalState dock_to_ac_handler(std::string dock_to_ac_name,std::shared_ptr<open_auto_dock_msgs::DockGoal> goal);
        void ac_doneCb(const actionlib::SimpleClientGoalState& state,const open_auto_dock_msgs::DockResultConstPtr& result);
        void ac_activeCb();
        void ac_feedbackCb(const open_auto_dock_msgs::DockFeedbackConstPtr &fb);
        ros::Time begin_Time ;
        bool bTimeoutFlag ;
        int Period_timeout ;
        //void ac_agv_moveto_cancel(double post_time);
        double ac_cancel_time ;
        void cancel_allmission_ac();
        //----------------------------------------------------------------
        std::string dock_to_rcvr_ac_name ; 
        //double ac_clearmap_time ;
        //bool clear_costmap_ac();
    public:
        dock_to_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) ;
        virtual ~dock_to_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
    
};
//---------------------------------------------------------------------------------

#endif
