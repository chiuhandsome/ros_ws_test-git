#ifndef pose_move_to_ac_H
#define pose_move_to_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/pose_move_toAction.h>
//-----------------------------------------------------------------------------
//*****************************************************************************
//**         Main actionlib - client                                         **
//*****************************************************************************
//-----------------------------------------------------------------------------
class pose_move_to_ac  
{
	using move_to_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::pose_move_toAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		move_to_ac move_to_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::pose_move_toResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::pose_move_toFeedbackConstPtr& feedback);
	public:
	   	pose_move_to_ac(ros::NodeHandle& nh,std::string ac_name) ;
	   	~pose_move_to_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_pose_move_to_ac(const robot_scheduling_msgs::pose_move_toGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
