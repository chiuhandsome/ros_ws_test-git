#ifndef robot_if_params_action_H
#define robot_if_params_action_H

#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/robot_interface_paramsAction.h>
#include <robot_scheduling_parameter.h>

#include <geometry_msgs/Twist.h>
#include <tf2/utils.h>
#include "tf2_ros/transform_listener.h"
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
class robot_if_params_action
{
    using interface_params_as = actionlib::SimpleActionServer<robot_scheduling_msgs::robot_interface_paramsAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
 
        interface_params_as if_params_as;  
        std::string name_as_ ;
        void if_params_CB(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal);
        //void do_if_params_dispatch(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal);          
        void do_target_pose_function(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal);   
        //void do_status_code_function(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal);  
        void do_worksheet_function(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal);   
        
        void do_parameters_function(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal);   
        std::shared_ptr<function_cmd_data> function_cmd_ptr ;
        //----------------------------------------------------------------
        bool getRobot_map_Pose(double &x, double &y, double &th_deg,std::string frame_name = "base_link") ;  
        std::shared_ptr<tf2_ros::TransformListener> trans_pose ;
        tf2_ros::Buffer tf2_buffer;
        geometry_msgs::TransformStamped tf_geometry ;  
        //---------------------------
        bool turn_parameter_parse(std::string parameter) ;  
    public:
        robot_if_params_action(ros::NodeHandle nh,std::string name_as) ; 
        virtual ~robot_if_params_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);     
};
//---------------------------------------------------------------------------------

#endif
