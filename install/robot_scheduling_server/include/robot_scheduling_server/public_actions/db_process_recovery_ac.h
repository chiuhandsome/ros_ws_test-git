#ifndef db_process_recovery_ac_H
#define db_process_recovery_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/db_process_recoveryAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class db_process_rcvr_ac  
{
	using process_rcvr_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::db_process_recoveryAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		process_rcvr_ac db_process_rcvr_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::db_process_recoveryResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::db_process_recoveryFeedbackConstPtr& feedback);
	public:
	   	db_process_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) ; 
	   	~db_process_rcvr_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_db_process_rcvr_ac(const robot_scheduling_msgs::db_process_recoveryGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
