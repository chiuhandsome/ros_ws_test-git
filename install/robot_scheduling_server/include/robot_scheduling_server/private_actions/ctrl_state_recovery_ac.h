#ifndef ctrl_state_recovery_ac_H
#define ctrl_state_recovery_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/controller_state_recoveryAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class ctrl_state_recovery_ac  
{
	using _ctrl_state_rcvr_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::controller_state_recoveryAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		_ctrl_state_rcvr_ac ctrl_state_rcvr_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::controller_state_recoveryResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::controller_state_recoveryFeedbackConstPtr& feedback);
	public:
	   	ctrl_state_recovery_ac(ros::NodeHandle& nh,std::string ac_name) ; 
	   	~ctrl_state_recovery_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_ctrl_state_rcvr_ac(const robot_scheduling_msgs::controller_state_recoveryGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
