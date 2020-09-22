#ifndef robot_scheduling_service_H
#define robot_scheduling_service_H
#include <ros/ros.h>
#include <std_msgs/String.h>
//-----------------
#include <robot_scheduling_parameter.h>
#include <robot_scheduling_msgs/lower_if_command.h>
#include <robot_scheduling_msgs/upper_if_command.h>
#include <robot_scheduling_msgs/robot_topic_command.h>

#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
//-----------------------------------------------------------------------------
class robot_scheduling_service    
{
	private:
		ros::NodeHandle nh_;
		robot_scheduling_parameter* parameter_ ;
		//*************************************************
		//----------------------------------
		//-- declare command service for upper_level's call  
        ros::ServiceServer cmd_srv_service_for_upper ;
		std::string cmd_srv_service_for_upper_name ;
        bool srv_Eval_service_for_upper(robot_scheduling_msgs::upper_if_command::Request  &req,
								     	robot_scheduling_msgs::upper_if_command::Response &resp);  
		ros::ServiceClient cmd_clt_service_to_upper ;
		std::string cmd_clt_service_to_upper_name ;
		robot_scheduling_msgs::upper_if_command callsrv_upper_cmd_data ;

		ros::Publisher pub_plan_to_exec;
		std_msgs::String pub_plan_to_exec_name ;
		//command_type upper_command_type ;
		bool operate_change_decise(int cmd_id);
		void set_operate_mode_change(robot_scheduling_msgs::upper_if_command::Request  &req,
								     robot_scheduling_msgs::upper_if_command::Response &resp);
		bool manual_change_decise(int cmd_id,std::string cmd_data);									 
		void set_manual_mode_change(robot_scheduling_msgs::upper_if_command::Request  &req,
								    robot_scheduling_msgs::upper_if_command::Response &resp);
		bool manual_plan_to_exec_decise(std::string planName);
		void set_manual_plan_to_exec(std::string planName,robot_scheduling_msgs::upper_if_command::Response &resp);
		bool remote_process_decise(int cmd_id,std::string cmd_data);
		void set_remote_process(robot_scheduling_msgs::upper_if_command::Request  &req,
								robot_scheduling_msgs::upper_if_command::Response &resp);
		void set_alarm_reset_process(robot_scheduling_msgs::upper_if_command::Request  &req,
									 robot_scheduling_msgs::upper_if_command::Response &resp);
		void set_alarm_recovery_process(robot_scheduling_msgs::upper_if_command::Request  &req,
										robot_scheduling_msgs::upper_if_command::Response &resp);	
		void set_system_restart_process(robot_scheduling_msgs::upper_if_command::Request  &req,
										robot_scheduling_msgs::upper_if_command::Response &resp);								

		bool alarm_reset_decise(int cmd_id,std::string cmd_data);
		bool alarm_recovery_decise(int cmd_id,std::string cmd_data);
		bool system_restart_decise(int cmd_id,std::string cmd_data);

		
		bool alarm_recovery_change_decise(int cmd_id,std::string cmd_data);	
		void set_alarm_recovery_change(robot_scheduling_msgs::upper_if_command::Request  &req,
								       robot_scheduling_msgs::upper_if_command::Response &resp);
		//--- topic subscriber declare for upper ------
        ros::Subscriber sub_upper_topic_command ;
		void sub_upper_topic_command_CB(const robot_scheduling_msgs::robot_topic_command & cmd_msg);	
		//*************************************************
		//-- declare command service for lower_level's call  
		ros::ServiceServer cmd_srv_service_for_lower ;
		std::string cmd_srv_service_for_lower_name ;
        bool srv_Eval_service_for_lower(robot_scheduling_msgs::lower_if_command::Request  &req,
								     	robot_scheduling_msgs::lower_if_command::Response &resp);  
		ros::ServiceClient cmd_clt_service_to_lower ;
		std::string cmd_clt_service_to_lower_name ;
		robot_scheduling_msgs::lower_if_command callsrv_lower_cmd_data ;
		bool b_callsrv_lower_alarm ;
		int recovery_times, lower_out_of_times ;
		//-------------------------------
		std::vector<std::string> v_params_ ;
		bool split_gen_condition(std::string cond,char delims =',') ;
		//------------------------------
		/*int act_cmd_type ;
		int act_cmd_id ;
		std::string act_cmd_data ;*/
		
	public:
	   	robot_scheduling_service(ros::NodeHandle& nh,std::string srv_upper_name,std::string clt_upper_name,
		   						 std::string srv_lower_name,std::string clt_lower_name); 
	   	~robot_scheduling_service();
		void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);

		//bool call_service_to_base_ctrl(robot_scheduling_msgs::lower_if_command::Request  &req,
		//						     	robot_scheduling_msgs::lower_if_command::Response &resp);   
		bool call_service_to_base_ctrl(int call_type,int call_id,std::string call_data="");   
		bool call_service_to_host(robot_scheduling_msgs::upper_if_command::Request  &req,
								  robot_scheduling_msgs::upper_if_command::Response &resp); 
		bool get_callsrv_lower_cmd_data_response_result(std::string &result_data);
		bool get_callsrv_upper_cmd_data_response_result(std::string &result_data);

};
//-----------------------------------------------------------------------------
#endif
