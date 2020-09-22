#ifndef robot_if_params_ac_H
#define robot_if_params_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
//#include <robot_scheduling_parameter.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/robot_interface_paramsAction.h>
//-----------------------------------------------------------------------------
class robot_if_params_ac  
{
	using if_params_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::robot_interface_paramsAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		//-- declare all action_clients   
		if_params_ac if_params_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_interface_paramsResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::robot_interface_paramsFeedbackConstPtr& feedback);
	public:
	   	//robot_command_ac(ros::NodeHandle& nh,robot_scheduling_parameter* parameter) ;
		robot_if_params_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~robot_if_params_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_robot_interface_params(const robot_scheduling_msgs::robot_interface_paramsGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
