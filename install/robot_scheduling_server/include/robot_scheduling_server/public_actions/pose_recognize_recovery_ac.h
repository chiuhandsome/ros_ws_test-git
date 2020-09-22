#ifndef pose_recognize_recovery_ac_H
#define pose_recognize_recovery_ac_H
//---------------------------------------------------------------------------
#include <ros/ros.h>
//#include <robot_scheduling_parameter.h>
#include <actionlib/client/simple_action_client.h>
#include <robot_scheduling_msgs/pose_recognize_recoveryAction.h>
//-----------------------------------------------------------------------------
class pose_recognize_recovery_ac  
{
	using recognize_recovery_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::pose_recognize_recoveryAction> ;
	private:
   		ros::NodeHandle nh_ ;	
		//robot_scheduling_parameter* parameter_ ;
		//-- declare all action_clients for power_dock   
		recognize_recovery_ac recognize_recovery_ac_;

		int eval_state_ ;
		//-- Called once when the goal completes ----
		void doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::pose_recognize_recoveryResultConstPtr& result);
		//-- Called once when the goal becomes active ---
		void activeCb() ;
		//-- Called every time feedback is received for the goal ---
  		void feedbackCb(const robot_scheduling_msgs::pose_recognize_recoveryFeedbackConstPtr& feedback);
	public:
	   	pose_recognize_recovery_ac(ros::NodeHandle& nh,std::string ac_name);
	   	~pose_recognize_recovery_ac();
	   	//--------------------		   
	   	int evalCondition(std::string condition);
	   	void do_pose_recognize_recovery(const robot_scheduling_msgs::pose_recognize_recoveryGoal& goal);
};
//-----------------------------------------------------------------------------
#endif
