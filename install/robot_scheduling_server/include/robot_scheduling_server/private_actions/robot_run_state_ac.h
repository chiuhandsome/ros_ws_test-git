#ifndef robot_run_state_ac_H
#define robot_run_state_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
//#include <robot_scheduling_parameter.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/robot_run_stateAction.h>
//-----------------------------------------------------------------------------
class robot_run_state_ac  
{
	using run_state_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::robot_run_stateAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		//robot_scheduling_parameter* parameter_ ;
		//-- declare all action_clients for power_dock   
		run_state_ac run_state_ac_;

		int eval_state_ ;
		//bool bFinished ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_run_stateResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::robot_run_stateFeedbackConstPtr& feedback);
	public:
	   	robot_run_state_ac(ros::NodeHandle& nh,std::string ac_name);
	   	~robot_run_state_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_robot_run_state(const robot_scheduling_msgs::robot_run_stateGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
