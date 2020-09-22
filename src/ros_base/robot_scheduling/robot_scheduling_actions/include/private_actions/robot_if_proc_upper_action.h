#ifndef robot_if_proc_upper_action_H
#define robot_if_proc_upper_action_H

#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/robot_interface_proc_upperAction.h>
#include <robot_scheduling_parameter.h>
#include <robot_scheduling_service.h>

#include <thread>
#include <condition_variable>
#include <mutex>
#include <robot_scheduling_msgs/robot_info.h>
#include <robot_scheduling_msgs/robot_state.h>

#include <geometry_msgs/Twist.h>
#include <tf2/utils.h>
#include "tf2_ros/transform_listener.h"
//-----------------------------------------------------------------------------
//#include <geometry_msgs/PoseWithCovarianceStamped.h>
//-----------------------------------------------------------------------------
class robot_if_proc_upper_action
{
    using interface_proc_upper_as = actionlib::SimpleActionServer<robot_scheduling_msgs::robot_interface_proc_upperAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
	    robot_scheduling_service* service_;

        interface_proc_upper_as if_proc_upper_as;  
        std::string name_as_ ;
        void if_proc_upper_CB(const robot_scheduling_msgs::robot_interface_proc_upperGoalConstPtr& goal);     
        void do_proc_upper_set_function(const robot_scheduling_msgs::robot_interface_proc_upperGoalConstPtr& goal);   
        void do_proc_upper_get_function(const robot_scheduling_msgs::robot_interface_proc_upperGoalConstPtr& goal);   
        //--- declare thread for topic publish ----
		std::unique_ptr<std::thread>	if_topic_thread;
		std::condition_variable       	if_topic_cv;
		std::mutex                    	if_topic_mtx;
		bool	                        if_topic_destory; 
		bool 							if_topic_pass; 
		int _sleep_period ;

		//std::mutex                    	if_topic_Run_mtx;
		void if_topic_ThreadEntry() ;
        void Process_SendTopic() ;
        //--- topic publisher declare ------
        robot_scheduling_msgs::robot_info robot_info_msg ;
        ros::Publisher pubRobot_Info ;
        ros::Time begin_Time_Info ;
        int robot_info_rate ;
        
        robot_scheduling_msgs::robot_state robot_state_msg ;
        ros::Publisher pubRobot_state ;
        ros::Time begin_Time_state ;
        int robot_state_rate ;    


        std::shared_ptr<tf2_ros::TransformListener> trans_pose ;
        tf2_ros::Buffer tf2_buffer;
        geometry_msgs::TransformStamped tf_geometry ;  
        bool getRobot_map_PoseTransfer(std::string frame_name = "base_link") ;   
        
        //std::shared_ptr<geometry_msgs::PoseWithCovarianceStamped> sub_robot_pose ;
        geometry_msgs::PoseWithCovarianceStamped sub_robot_pose;
        ros::Subscriber sub_odom_pose;	
		void sub_odom_pose_CB(const nav_msgs::OdometryConstPtr& odom);		
        //---------------------------------        
        //runmode_type sys_runmode_type_decise();   
        //---------------------------------
        bool b_use_tf2 ;

    public:
        robot_if_proc_upper_action(ros::NodeHandle nh,std::string name_as) ; 
        virtual ~robot_if_proc_upper_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);    
	    void set_robot_scheduling_service(robot_scheduling_service* service);    
};
//---------------------------------------------------------------------------------

#endif
