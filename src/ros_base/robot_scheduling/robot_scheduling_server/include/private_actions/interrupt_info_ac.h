#ifndef interrupt_info_ac_H
#define interrupt_info_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/interrupt_infoAction.h>
//-----------------------------------------------------------------------------
class interrupt_info_ac  
{
	using interrupt_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::interrupt_infoAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		interrupt_ac interrupt_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::interrupt_infoResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::interrupt_infoFeedbackConstPtr& feedback);
	public:
	   	//robot_command_ac(ros::NodeHandle& nh,robot_scheduling_parameter* parameter) ;
		interrupt_info_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~interrupt_info_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_interrupt_info(const robot_scheduling_msgs::interrupt_infoGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
