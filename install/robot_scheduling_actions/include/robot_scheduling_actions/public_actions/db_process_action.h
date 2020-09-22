#ifndef db_process_action_H
#define db_process_action_H

#include <ros/ros.h>
#include <vector>
#include <robot_scheduling_parameter.h>
#include <actionlib/server/simple_action_server.h>
#include <robot_scheduling_msgs/db_processAction.h>
#include <robot_scheduling_msgs/db_process_recoveryAction.h>

//--- declare for db_process actionlib-client call 
#include <actionlib/client/simple_action_client.h>
#include <car_db_manager_msgs/car_db_processAction.h>

//#include <car_db_manager_bridge/car_db_manager_tables/parameters_tables.h>
//#include <car_db_manager_bridge/car_db_related_tables/worksheet_data_tables.h>
//---------------------------------------------------------------------------------
class db_process_action
{
    using db_process_as = actionlib::SimpleActionServer<robot_scheduling_msgs::db_processAction> ;
    using db_process_rcvr_as = actionlib::SimpleActionServer<robot_scheduling_msgs::db_process_recoveryAction> ;

    using db_process_Client = actionlib::SimpleActionClient<car_db_manager_msgs::car_db_processAction>;

    private:
        ros::NodeHandle nh_;
        robot_scheduling_parameter* parameter_;
        //-----------------------------
        db_process_as db_process_as_;  
        //std::string name_as_ ;
        void db_process_CB(const robot_scheduling_msgs::db_processGoalConstPtr& goal);
        //-----------------------------
        db_process_rcvr_as db_process_rcvr_as_;  
        //std::string name_rcvr_as_ ;
        void db_process_rcvr_CB(const robot_scheduling_msgs::db_process_recoveryGoalConstPtr& goal);    
        int _Recovery_current_time ;    
        //--- declare for pose_recognize actionlib-client call
        std::string db_process_ac_name ;
        std::shared_ptr<db_process_Client> db_process_ac_;
        //actionlib::SimpleClientGoalState db_process_ac_handler(std::string db_process_ac_name,std::shared_ptr<car_db_manager_msgs::car_db_processGoal> goal);
        actionlib::SimpleClientGoalState db_process_ac_handler(std::string db_process_ac_name,std::shared_ptr<car_db_manager_msgs::car_db_processGoal> goal);
        void ac_doneCb(const actionlib::SimpleClientGoalState& state,const car_db_manager_msgs::car_db_processResultConstPtr& result);
        void ac_activeCb();
        void ac_feedbackCb(const car_db_manager_msgs::car_db_processFeedbackConstPtr &fb);    
        //-----------------------------
        /*ros::Time begin_Time ;
        bool bTimeoutFlag ;
        int Period_timeout ;
        int ac_result_error_code ;
        double ac_result_pos_x, ac_result_pos_y, ac_result_pos_theta ;*/
        //-----------------------------
        std::vector<std::string> trans_data_vector ;
        std::vector<std::string> result_data_vector ;
        //std::vector<std::string> ac_result_data_vector ;

		void paras_to_proc_data_vector(std::string parameter) ;  
        void parameter_set_checkparameters(bool bFull);  
        void parameter_set_pose_2d(bool bFull);  
        void parameter_set_action_function(bool bFull);  
        void parameter_set_alarmcode(bool bFull);  
        void parameter_set_operatecode(bool bFull);  
        void parameter_set_pid_ctrl(bool bFull);  
        void parameter_set_action_worksheet_no();  

        //bool b_setac_break ;
        
    public:
        db_process_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) ;
        virtual ~db_process_action();
        void set_robot_scheduling_parameter(robot_scheduling_parameter* parameter);
        
    
};
//---------------------------------------------------------------------------------

#endif
