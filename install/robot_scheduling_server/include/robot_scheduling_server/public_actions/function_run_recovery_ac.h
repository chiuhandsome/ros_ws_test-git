#ifndef function_run_recovery_ac_H
#define function_run_recovery_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/function_run_recoveryAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class function_run_rcvr_ac  
{
	using func_run_rcvr_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::function_run_recoveryAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		func_run_rcvr_ac func_run_rcvr_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::function_run_recoveryResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::function_run_recoveryFeedbackConstPtr& feedback);
	public:
	   	function_run_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) ; 
	   	~function_run_rcvr_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_function_run_rcvr_ac(const robot_scheduling_msgs::function_run_recoveryGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
