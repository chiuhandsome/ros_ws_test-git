#ifndef power_charge_recovery_ac_H
#define power_charge_recovery_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/power_charge_recoveryAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class power_charge_rcvr_ac  
{
	using _power_charge_rcvr_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::power_charge_recoveryAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		_power_charge_rcvr_ac power_charge_rcvr_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::power_charge_recoveryResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::power_charge_recoveryFeedbackConstPtr& feedback);
	public:
	   	power_charge_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) ; 
	   	~power_charge_rcvr_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_power_charge_rcvr_ac(const robot_scheduling_msgs::power_charge_recoveryGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
