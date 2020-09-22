#ifndef self_turn_action_H
#define self_turn_action_H

#include <ros/ros.h>

#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_parameter.h>

#include <robot_scheduling_msgs/self_turn_toAction.h>
#include <geometry_msgs/Pose2D.h>
#include <public_actions/turn_pid.h>

#include <actionlib/client/simple_action_client.h>

#include <geometry_msgs/Twist.h>
#include <tf2/utils.h>
#include "tf2_ros/transform_listener.h"

#include <robot_scheduling_msgs/self_turn_to_recoveryAction.h>


class robot_turn_action_client ;
//---------------------------------------------------------------------------------
//*********************************************************************************
//** robot_turn_action                                                           **
//*********************************************************************************
//---------------------------------------------------------------------------------
class robot_turn_action
{    
    //---- actionlib -- server ---
    using robot_turn_as = actionlib::SimpleActionServer<robot_scheduling_msgs::self_turn_toAction> ;
    using robot_turn_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::self_turn_to_recoveryAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //------------------------
        //---- actionlib -- server  
        robot_turn_as robot_turn_as_;  
        void turn_to_CB(const robot_scheduling_msgs::self_turn_toGoalConstPtr& goal);   
        int _Recovery_current_time ;
        
        std::shared_ptr<robot_turn_action_client> robot_turn_action_client_;
        actionlib::SimpleClientGoalState robot_turn_ac_handler(std::string robot_turn_ac_name,std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal);
        //--------------------------
        robot_turn_rcvr_as turn_rcvr_as_; 
        void robot_turn_rcvr_CB(const robot_scheduling_msgs::self_turn_to_recoveryGoalConstPtr& goal);
        int robot_turn_rcvr_recovery_time ;  
        //------------------------
        double get_real_turn_target(double turn_target);      
    public:
        robot_turn_action(ros::NodeHandle nh,std::string self_turn_as_name,std::string name_rcvr_as) ;
        virtual ~robot_turn_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
    
};
//---------------------------------------------------------------------------------
//*********************************************************************************
//** robot_turn_action_client                                                    **
//*********************************************************************************
//---------------------------------------------------------------------------------
class robot_turn_action_client 
{ 
    using robot_turn_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::self_turn_toAction>;
    //-------------------------------------
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        std::string robot_turn_ac_name ;
        std::shared_ptr<robot_turn_ac> robot_turn_ac_;
        ros::Time begin_Time ;
        int Period_timeout ;        
        bool bTimeoutFlag ;

        void ac_doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::self_turn_toResultConstPtr& result);
        void ac_activeCb();
        void ac_feedbackCb(const robot_scheduling_msgs::self_turn_toFeedbackConstPtr &fb);
    public:
        robot_turn_action_client(ros::NodeHandle nh) ;//,std::string self_turn_as_name) ;
        virtual ~robot_turn_action_client();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
        //actionlib::SimpleClientGoalState do_robot_turn_ac(std::string robot_turn_ac_name,std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal);
        actionlib::SimpleClientGoalState do_robot_turn_ac(std::string robot_turn_ac_name,std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal);
        void set_TimeoutFlag(bool bFlag);
        bool get_TimeoutFlag();
        robot_scheduling_msgs::self_turn_toResultConstPtr get_robot_turn_ac_result() ;
};
//---------------------------------------------------------------------------------
//*********************************************************************************
//** self_turn_action                                                            **
//*********************************************************************************
//---------------------------------------------------------------------------------
class self_turn_action
{    
    //---- actionlib -- server ---
    using self_turn_as = actionlib::SimpleActionServer<robot_scheduling_msgs::self_turn_toAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //------------------------
        std::shared_ptr<turn_pid> turn_pid_ ;
        //---- actionlib -- server  
        self_turn_as self_turn_as_;  
        void self_turn_to_CB(const robot_scheduling_msgs::self_turn_toGoalConstPtr& goal);        
        ros::Publisher turn_velPub_;
        geometry_msgs::Twist vel;
	    //---------------------------
        //double ac_cancel_time ;
        //void cancel_allmission_ac();
        //----------------------------------------------------------------
        bool getRobot_map_Pose(double &x, double &y, double &th_deg,std::string frame_name = "base_link") ;   
        double set_turn_pidaction(double x, double y, double th_deg) ; 

        double target_angle_,tolerance_, min_speed_, max_speed_;
        double d_KP_, d_KI_, d_KD_;
        bool b_compensation_ ;
        std::shared_ptr<geometry_msgs::Pose2D> current_pose ;

        ros::Time begin_Time ;
        int Period_timeout ;
        bool bTimeoutFlag ;

        int _Recovery_current_time ;
        double base_th_deg ;
        double delta_deg ;

        std::shared_ptr<tf2_ros::TransformListener> trans_pose ;
        tf2_ros::Buffer tf2_buffer;
        geometry_msgs::TransformStamped tf_geometry ;         
    public:
        self_turn_action(ros::NodeHandle nh,std::string self_turn_as_name) ;
        virtual ~self_turn_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
    
};
//---------------------------------------------------------------------------------

#endif
