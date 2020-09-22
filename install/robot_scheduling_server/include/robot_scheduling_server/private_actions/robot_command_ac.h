#ifndef robot_command_ac_H
#define robot_command_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
//#include <robot_scheduling_parameter.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/robot_commandAction.h>
//-----------------------------------------------------------------------------
class robot_command_ac  
{
	using command_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::robot_commandAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		//robot_scheduling_parameter* parameter_ ;
		//-- declare all action_clients for power_dock   
		command_ac command_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_commandResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::robot_commandFeedbackConstPtr& feedback);
	public:
	   	//robot_command_ac(ros::NodeHandle& nh,robot_scheduling_parameter* parameter) ;
		robot_command_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~robot_command_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_robot_command(const robot_scheduling_msgs::robot_commandGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
