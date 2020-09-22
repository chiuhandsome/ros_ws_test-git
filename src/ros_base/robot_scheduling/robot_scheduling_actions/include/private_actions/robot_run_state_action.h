#ifndef robot_run_state_action_H_
#define robot_run_state_action_H_

#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/robot_run_stateAction.h>
#include <robot_scheduling_parameter.h>
#include <robot_scheduling_service.h>
#include <robot_scheduling_msgs/controller_state_recoveryAction.h>

#include <robot_scheduling_msgs/db_processAction.h>
#include <actionlib/client/simple_action_client.h>
//---------------------------------------------------------------------------------
class robot_run_state_action
{
    using robot_run_state_as = actionlib::SimpleActionServer<robot_scheduling_msgs::robot_run_stateAction> ;
    using controller_state_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::controller_state_recoveryAction> ;

    using process_db_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::db_processAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        robot_scheduling_service* scheduling_service_;
        //---- actionlib -- server (run_state_as)
        robot_run_state_as run_state_as;  
        //std::string name_as_ ;
        void run_state_CB(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void get_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void getall_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void set_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);

        void get_pre_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void getall_pre_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void set_pre_system_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);

        void get_manual_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void getall_manual_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void set_manual_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void check_manual_start(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void set_manual_mode(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void check_remote_start(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void getall_remote_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void set_remote_mode(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void check_alarm_reset(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void check_alarm_recovery(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void check_system_restart(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void getall_recovery_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        void set_plantoexec_status(const robot_scheduling_msgs::robot_run_stateGoalConstPtr& goal);
        //---- actionlib -- server (pose_move_to_rcvr_as)
        controller_state_rcvr_as ctrl_state_rcvr_as;  
        //std::string name_rcvr_as_ ;
        void ctrl_state_rcvr_CB(const robot_scheduling_msgs::controller_state_recoveryGoalConstPtr& goal);

        int Period_timeout ;
        int _Recovery_current_time ;
        //--- database function call ----
        process_db_ac db_process_ac_;
        //-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::db_processResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::db_processFeedbackConstPtr& feedback);
        actionlib::SimpleClientGoalState do_db_process_ac(const robot_scheduling_msgs::db_processGoal& goal);

        std::shared_ptr<robot_scheduling_msgs::db_processGoal> db_goal;
    public:
        //robot_run_state_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as,robot_scheduling_parameter* parameter) ;
        robot_run_state_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as);//,robot_scheduling_parameter* parameter) ;
        virtual ~robot_run_state_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
        void set_robot_scheduling_service(robot_scheduling_service* service);
    
};
//---------------------------------------------------------------------------------

#endif
