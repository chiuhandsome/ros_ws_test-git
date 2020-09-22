#ifndef dock_to_recovery_ac_H
#define dock_to_recovery_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/dock_to_recoveryAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class dock_to_rcvr_ac  
{
	using _dock_to_rcvr_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::dock_to_recoveryAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		_dock_to_rcvr_ac dock_to_rcvr_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::dock_to_recoveryResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::dock_to_recoveryFeedbackConstPtr& feedback);
	public:
	   	dock_to_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) ; 
	   	~dock_to_rcvr_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_dock_to_rcvr_ac(const robot_scheduling_msgs::dock_to_recoveryGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
