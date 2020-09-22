#ifndef robot_if_proc_lower_action_H
#define robot_if_proc_lower_action_H

#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/robot_interface_proc_lowerAction.h>
#include <robot_scheduling_parameter.h>
#include <robot_scheduling_service.h>

#include <thread>
#include <condition_variable>
#include <mutex>
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
class robot_if_proc_lower_action
{
    using interface_proc_lower_as = actionlib::SimpleActionServer<robot_scheduling_msgs::robot_interface_proc_lowerAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
	    robot_scheduling_service* service_;

        interface_proc_lower_as if_proc_lower_as;  
        std::string name_as_ ;
        void if_proc_lower_CB(const robot_scheduling_msgs::robot_interface_proc_lowerGoalConstPtr& goal);     
        void do_proc_lower_set_function(const robot_scheduling_msgs::robot_interface_proc_lowerGoalConstPtr& goal);   
        void do_proc_lower_get_function(const robot_scheduling_msgs::robot_interface_proc_lowerGoalConstPtr& goal);   
        //--- declare thread for topic publish ----
		std::unique_ptr<std::thread>	if_topic_thread;
		std::condition_variable       	if_topic_cv;
		std::mutex                    	if_topic_mtx;
		bool	                        if_topic_destory; 
		bool 							if_topic_pass; 
		int _sleep_period ;

		std::mutex                    	if_topic_Run_mtx;
		void if_topic_ThreadEntry() ;
        void Process_SendTopic() ;
        
    public:
        robot_if_proc_lower_action(ros::NodeHandle nh,std::string name_as) ; 
        virtual ~robot_if_proc_lower_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);    
	    void set_robot_scheduling_service(robot_scheduling_service* service);    
};
//---------------------------------------------------------------------------------

#endif
