#ifndef power_charge_ac_H
#define power_charge_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/power_chargeAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class power_charge_ac  
{
	using _power_charge_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::power_chargeAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		_power_charge_ac power_charge_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::power_chargeResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::power_chargeFeedbackConstPtr& feedback);
	public:
	   	power_charge_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~power_charge_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_power_charge_ac(const robot_scheduling_msgs::power_chargeGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
