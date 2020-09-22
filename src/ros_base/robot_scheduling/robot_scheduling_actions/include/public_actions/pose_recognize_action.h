#ifndef pose_recognize_action_H
#define pose_recognize_action_H

#include <ros/ros.h>
#include <robot_scheduling_parameter.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/pose_recognizeAction.h>
#include <robot_scheduling_msgs/pose_recognize_recoveryAction.h>

//--- declare for pose_recognize actionlib-client call 
#include <actionlib/client/simple_action_client.h>
#include <reset_location/TrilaterationAction.h>
#include <robot_scheduling_msgs/self_turn_toAction.h>
//---------------------------------------------------------------------------------
class pose_recognize_action
{
    using pose_recognize_as = actionlib::SimpleActionServer<robot_scheduling_msgs::pose_recognizeAction> ;
    using pose_recognize_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::pose_recognize_recoveryAction> ;

    using reset_locationClient = actionlib::SimpleActionClient<reset_location::TrilaterationAction>;
    using rel_turn_toClient = actionlib::SimpleActionClient<robot_scheduling_msgs::self_turn_toAction>;

    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //-----------------------------
        pose_recognize_as recognize_as;  
        //std::string name_as_ ;
        void recognize_CB(const robot_scheduling_msgs::pose_recognizeGoalConstPtr& goal);
        //-----------------------------
        pose_recognize_rcvr_as recognize_rcvr_as;  
        //std::string name_rcvr_as_ ;
        void recognize_rcvr_CB(const robot_scheduling_msgs::pose_recognize_recoveryGoalConstPtr& goal);    
        int _Recovery_current_time ;    
        //--- declare for pose_recognize actionlib-client call
        std::string reset_location_ac_name ;
        std::shared_ptr<reset_locationClient> reset_location_ac;
        actionlib::SimpleClientGoalState reset_location_ac_handler(std::string reset_location_ac_name,std::shared_ptr<reset_location::TrilaterationGoal> goal);
        void ac_doneCb(const actionlib::SimpleClientGoalState& state,const reset_location::TrilaterationResultConstPtr& result);
        void ac_activeCb();
        void ac_feedbackCb(const reset_location::TrilaterationFeedbackConstPtr &fb);    

        std::string rel_turn_to_ac_name ; 
        std::shared_ptr<rel_turn_toClient> rel_turn_to_ac;   
        actionlib::SimpleClientGoalState rel_turn_ac_handler(std::string rel_turn_to_ac_name,std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal);
        void rel_turn_ac_doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::self_turn_toResultConstPtr& result);
        void rel_turn_ac_activeCb();
        void rel_turn_ac_feedbackCb(const robot_scheduling_msgs::self_turn_toFeedbackConstPtr &fb);    
        //-----------------------------
        ros::Time begin_Time ;
        bool bTimeoutFlag ;
        int Period_timeout ;
        int ac_result_error_code ;
        double ac_result_pos_x, ac_result_pos_y, ac_result_pos_theta ;

        ros::Publisher init_pose_pub_;
    public:
        pose_recognize_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) ;
        virtual ~pose_recognize_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
    
};
//---------------------------------------------------------------------------------

#endif
