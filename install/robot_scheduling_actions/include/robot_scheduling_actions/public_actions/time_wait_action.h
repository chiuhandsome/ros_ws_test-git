#ifndef time_wait_action_H
#define time_wait_action_H

#include <ros/ros.h>

#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_parameter.h>

#include <robot_scheduling_msgs/time_waitAction.h>
#include <actionlib/client/simple_action_client.h>

//class time_wait_action_client ;
//---------------------------------------------------------------------------------
//*********************************************************************************
//** time_wait_action                                                            **
//*********************************************************************************
//---------------------------------------------------------------------------------
class time_wait_action
{    
    //---- actionlib -- server ---
    using time_wait_as = actionlib::SimpleActionServer<robot_scheduling_msgs::time_waitAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //------------------------
        //std::shared_ptr<turn_pid> turn_pid_ ;
        //---- actionlib -- server  
        time_wait_as time_wait_as_;  
        void time_wait_CB(const robot_scheduling_msgs::time_waitGoalConstPtr& goal);    
             
    public:
        time_wait_action(ros::NodeHandle nh,std::string time_wait_as_name) ;
        virtual ~time_wait_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
    
};
//---------------------------------------------------------------------------------
//*********************************************************************************
//** time_wait_action_client                                                    **
//*********************************************************************************
//---------------------------------------------------------------------------------
class time_wait_action_client 
{ 
    using time_wait_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::time_waitAction>;
    //-------------------------------------
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        std::string time_wait_ac_name ;
        std::shared_ptr<time_wait_ac> time_wait_ac_;
        //ros::Time begin_Time ;
        //int Period_timeout ;        
        //bool bTimeoutFlag ;

        void ac_doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::time_waitResultConstPtr& result);
        void ac_activeCb();
        void ac_feedbackCb(const robot_scheduling_msgs::time_waitFeedbackConstPtr &fb);
    public:
        time_wait_action_client(ros::NodeHandle nh) ;//,std::string self_turn_as_name) ;
        virtual ~time_wait_action_client();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
        actionlib::SimpleClientGoalState do_time_wait_ac(std::string time_wait_ac_name,std::shared_ptr<robot_scheduling_msgs::time_waitGoal> goal);
        //void set_TimeoutFlag(bool bFlag);
        //bool get_TimeoutFlag();
};
//---------------------------------------------------------------------------------

#endif
