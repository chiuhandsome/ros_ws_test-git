#ifndef function_run_ac_H
#define function_run_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/function_runAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class function_run_ac  
{
	using _function_run_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::function_runAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		_function_run_ac function_run_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::function_runResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::function_runFeedbackConstPtr& feedback);
	public:
	   	function_run_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~function_run_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_function_run_ac(const robot_scheduling_msgs::function_runGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
