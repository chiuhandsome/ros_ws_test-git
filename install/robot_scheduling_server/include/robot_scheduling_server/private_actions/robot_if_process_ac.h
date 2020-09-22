#ifndef robot_if_process_ac_H
#define robot_if_process_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
//#include <robot_scheduling_parameter.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/robot_interface_processAction.h>
//-----------------------------------------------------------------------------
class robot_if_process_ac  
{
	using if_process_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::robot_interface_processAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		//-- declare all action_clients   
		if_process_ac if_process_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::robot_interface_processResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::robot_interface_processFeedbackConstPtr& feedback);
	public:
	   	//robot_command_ac(ros::NodeHandle& nh,robot_scheduling_parameter* parameter) ;
		robot_if_process_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~robot_if_process_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_robot_interface_process(const robot_scheduling_msgs::robot_interface_processGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
