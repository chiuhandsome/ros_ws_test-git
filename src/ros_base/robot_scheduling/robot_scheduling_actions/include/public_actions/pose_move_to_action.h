#ifndef pose_move_to_action_H
#define pose_move_to_action_H

#include <ros/ros.h>
#include <robot_scheduling_parameter.h>

#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/pose_move_toAction.h>
#include <robot_scheduling_msgs/pose_move_to_recoveryAction.h>

#include <actionlib/client/simple_action_client.h>
#include <locomotor_msgs/NavigateToPoseAction.h>
#include <std_srvs/Trigger.h>
//---------------------------------------------------------------------------------
class pose_move_to_action
{
    #define RAD(a) ((a)/180.0*M_PI)
    #define DEG(a) ((a)*180.0/M_PI)
    //---- actionlib -- server ---
    using pose_move_to_as = actionlib::SimpleActionServer<robot_scheduling_msgs::pose_move_toAction> ;
    using pose_move_to_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::pose_move_to_recoveryAction> ;
    //using pose_turn_to_as = actionlib::SimpleActionServer<robot_scheduling_msgs::self_turn_toAction> ;
    //using pose_turn_to_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::self_turn_to_recoveryAction> ;
    //---- actionlib -- client ---
    using locomotor_ac = actionlib::SimpleActionClient<locomotor_msgs::NavigateToPoseAction>;
    //using turn_to_ac = actionlib::SimpleActionClient<robot_scheduling_msgs::self_turn_toAction> ;
    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //******************************************
        //*** pose_move_to                        **
        //******************************************  
        //---- actionlib -- server (pose_move_to_as)
        pose_move_to_as move_to_as;  
        //std::string name_as_ ;
        void move_to_CB(const robot_scheduling_msgs::pose_move_toGoalConstPtr& goal);        
        //---- actionlib -- server (pose_move_to_rcvr_as)
        pose_move_to_rcvr_as move_to_rcvr_as;  
        //std::string name_rcvr_as_ ;
        void move_to_rcvr_CB(const robot_scheduling_msgs::pose_move_to_recoveryGoalConstPtr& goal);
        int _Recovery_move_to_current_time ;
        //----------------------------------
        std::string move_to_ac_name ;
        std::shared_ptr<locomotor_ac> move_to_ac;
        actionlib::SimpleClientGoalState move_to_ac_handler(std::string move_to_ac_name,std::shared_ptr<locomotor_msgs::NavigateToPoseGoal> goal,int cmd_id=1);
        void ac_doneCb(const actionlib::SimpleClientGoalState& state,const locomotor_msgs::NavigateToPoseResultConstPtr& result);
        void ac_activeCb();
        void ac_feedbackCb(const locomotor_msgs::NavigateToPoseFeedbackConstPtr &fb);        
        //-----------------------------
        ros::Time begin_Time ;
        bool bTimeoutFlag ;
        int Period_timeout ;
        double ac_cancel_time ;
        void cancel_allmission_ac();
        //******************************************
        //*** robot Stop Call                     **
        //******************************************  
        ros::ServiceServer srvsev_robot_stop ;
        bool srv_Eval_move_stop(std_srvs::Trigger::Request &req,std_srvs::Trigger::Response &res);        
        bool callsrv_move_stop() ; 
        ros::ServiceClient cltsev_robot_stop ;
        ros::Publisher pub_move_stop;

        void run_move_stop_function();
        //----------------------------------------------------------------   
        std::string move_to_rcvr_ac_name ;      
        double ac_clearmap_time ;
        bool clear_costmap_ac();
    public:
        pose_move_to_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as);//,
                            //std::string turn_name_as,std::string name_turn_rcvr_as) ;
        virtual ~pose_move_to_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
    
};
//---------------------------------------------------------------------------------

#endif
