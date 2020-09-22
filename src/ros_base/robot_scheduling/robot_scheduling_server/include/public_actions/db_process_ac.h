#ifndef db_process_ac_ac_H
#define db_process_ac_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/db_processAction.h>
#include <robot_scheduling_pnp_params.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class db_process_ac  
{
	using process_db_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::db_processAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		process_db_ac db_process_ac_;

		robot_scheduling_pnp_params* _pnp_params ;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::db_processResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::db_processFeedbackConstPtr& feedback);
	public:
	   	db_process_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~db_process_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_db_process_ac(const robot_scheduling_msgs::db_processGoal& goal);
		void set_robot_scheduling_pnp_params(robot_scheduling_pnp_params* pnp_params);
};
//-----------------------------------------------------------------------------
#endif
