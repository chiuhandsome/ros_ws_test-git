#ifndef worksheetrun_ac_H
#define worksheetrun_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/worksheetrunAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class worksheetrun_ac  
{
	using _worksheetrun_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::worksheetrunAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		_worksheetrun_ac worksheetrun_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::worksheetrunResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::worksheetrunFeedbackConstPtr& feedback);
	public:
	   	worksheetrun_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~worksheetrun_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_worksheetrun_ac(const robot_scheduling_msgs::worksheetrunGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
