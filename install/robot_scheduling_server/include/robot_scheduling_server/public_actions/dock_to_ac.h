#ifndef dock_to_ac_H
#define dock_to_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/dock_toAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class dock_to_ac  
{
	using _dock_to_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::dock_toAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		_dock_to_ac dock_to_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::dock_toResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::dock_toFeedbackConstPtr& feedback);
	public:
	   	dock_to_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~dock_to_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_dock_to_ac(const robot_scheduling_msgs::dock_toGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
