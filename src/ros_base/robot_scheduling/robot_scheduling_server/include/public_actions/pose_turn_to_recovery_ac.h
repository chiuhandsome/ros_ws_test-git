#ifndef pose_turn_to_recovery_ac_H
#define pose_turn_to_recovery_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
//#include <robot_scheduling_msgs/pose_move_to_recoveryAction.h>
#include <robot_scheduling_msgs/self_turn_to_recoveryAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class pose_turn_to_rcvr_ac  
{
	using turn_to_rcvr_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::self_turn_to_recoveryAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		turn_to_rcvr_ac turn_to_rcvr_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::self_turn_to_recoveryResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::self_turn_to_recoveryFeedbackConstPtr& feedback);
	public:
	   	pose_turn_to_rcvr_ac(ros::NodeHandle& nh,std::string ac_name) ; 
	   	~pose_turn_to_rcvr_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_pose_turn_to_rcvr_ac(const robot_scheduling_msgs::self_turn_to_recoveryGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
