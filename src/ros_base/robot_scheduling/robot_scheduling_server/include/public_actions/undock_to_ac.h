#ifndef undock_to_ac_H
#define undock_to_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/undock_toAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class undock_to_ac  
{
	using _undock_to_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::undock_toAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		_undock_to_ac undock_to_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::undock_toResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::undock_toFeedbackConstPtr& feedback);
	public:
	   	undock_to_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~undock_to_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_undock_to_ac(const robot_scheduling_msgs::undock_toGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
