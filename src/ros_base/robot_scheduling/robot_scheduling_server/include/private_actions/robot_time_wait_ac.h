#ifndef robot_time_wait_ac_H
#define robot_time_wait_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/time_waitAction.h>
//-----------------------------------------------------------------------------
class robot_time_wait_ac  
{
	using time_wait_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::time_waitAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		time_wait_ac time_wait_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::time_waitResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::time_waitFeedbackConstPtr& feedback);
	public:
	   	//robot_command_ac(ros::NodeHandle& nh,robot_scheduling_parameter* parameter) ;
		robot_time_wait_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~robot_time_wait_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_robot_time_wait(const robot_scheduling_msgs::time_waitGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
