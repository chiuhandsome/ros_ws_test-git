#include <public_actions/function_run_action.h>
//#include <std_srvs/Empty.h>
#include <thread>
//#include <tf2/utils.h>
//#include "tf2_ros/transform_listener.h"
#include <ros_utility_tools/ros_tools.h>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
function_run_action::function_run_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) :
                        nh_(nh),//name_as_(name_as),name_rcvr_as_(name_rcvr_as),
                        //turn_name_as_(turn_name_as),name_turn_rcvr_as_(name_turn_rcvr_as),
                        function_run_as_(nh_,name_as, boost::bind(&function_run_action::function_run_CB, this, _1), false),
                        function_run_rcvr_as_(nh_,name_rcvr_as, boost::bind(&function_run_action::function_run_rcvr_CB, this, _1), false)
{     
    //_function_run_current_time = 0 ;
    //-------------------
    ROS_INFO("function_run_as_.start()");
    function_run_as_.start();
    ROS_INFO("function_run_rcvr_as_.start()");
    function_run_rcvr_as_.start();
}    
//-----------------------------------------------------------------------------
function_run_action::~function_run_action()
{
    
}
//-----------------------------------------------------------------------------
void function_run_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
}
//-----------------------------------------------------------------------------
void function_run_action::function_run_CB(const robot_scheduling_msgs::function_runGoalConstPtr& goal)
{
    ROS_INFO("function_run_CB");
    if (function_run_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("function_run_as_ execution preempted.");
        function_run_as_.setPreempted();
        return;
    }
    else{ 
        std::string action_func_id = "" ;        
        std::string cmd_id = goal->cmd_id ;
        std::string cmd_params = goal->cmd_data ;
        std::string cmd_acname = goal->cmd_ac_name ;
        //-----------------
        std::string db_run_type = goal->cmd_id ;
        if(db_run_type == "Parameter"){
            std::shared_ptr<function_cmd_data> act_function_cmd = parameter_->get_function_cmd_ptr();   
            cmd_id = act_function_cmd->cmd_id ;
            cmd_params = act_function_cmd->cmd_params ;
            cmd_acname = act_function_cmd->cmd_acname ; 
        }
        else if((db_run_type == "car_database") || (db_run_type == "car_database_test")){
            int act_index = parameter_->get_worksheet_current_index();
            std::shared_ptr<ac_action_worksheet> act_worksheet = parameter_->get_ac_action_work_ser_no(act_index);
            cmd_id = act_worksheet->action_function_id ;
            cmd_params = act_worksheet->action_function_params ;
            std::string function_name = parameter_->get_sch_action_function(cmd_id);  
            std::shared_ptr<ac_action_function> _function = parameter_->get_ac_action_function(function_name);
            if(_function != NULL && !_function->function_ac_name.empty()){
                cmd_acname = _function->function_ac_name ;                  
            }
        }
        //----------------
        robot_scheduling_msgs::function_runResult _result;
        if(cmd_acname.empty() || cmd_params.empty() || cmd_id.empty()){
            _result.result = robot_scheduling_msgs::function_runResult::NOT_FUNCTION_ID ;
            function_run_as_.setAborted(_result);      
        }
        else{
            if(db_run_type == "car_database_test"){        
                ROS_INFO("cmd_id:%s cmd_params:%s cmd_acname:%s",cmd_id.c_str(),cmd_params.c_str(),cmd_acname.c_str());                      
                if(cmd_id !="0001"){    
                    _result.result = robot_scheduling_msgs::function_runResult::OK ;
                    function_run_as_.setSucceeded(_result); 
                    ROS_INFO("car_database_test end");   
                    return ;
                }
            }
            //----------------------------
            actionlib::SimpleClientGoalState result_ac = function_run_ac_handler(cmd_id,cmd_params,cmd_acname);

            if(bTimeout_flag){   //-- timeout
                _result.result = robot_scheduling_msgs::function_runResult::TIMED_OUT  ;
                //_function_run_current_time ++ ;
                function_run_as_.setAborted(_result);  
            }
            else{
                if (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){                          
                    _result.result = robot_scheduling_msgs::function_runResult::OK ;
                    //_function_run_current_time = 0 ;
                    function_run_as_.setSucceeded(_result);    
                } 
                else{
                    _result.result = robot_scheduling_msgs::function_runResult::NOT_OK ;
                    //_function_run_current_time ++ ;
                    function_run_as_.setAborted(_result);        
                }
            }
            //-------------------------------
            if(db_run_type == "car_database_test"){   
                ROS_INFO("car_database_test end");  
            }
        }
    }
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState function_run_action::function_run_ac_handler(std::string cmd_id,std::string cmd_params,std::string cmd_acname)
{
    std::string _ac_name = cmd_acname; 
    //-----------------------
    if(cmd_id == "0001"){   //-- time wait ---
        bTimeout_flag = false ;
        if(_ac_name.empty())
            _ac_name = "robot_time_wait" ;
        double cmd_time = strtodouble(cmd_params,0.0);
        std::shared_ptr<robot_scheduling_msgs::time_waitGoal> goal_ac_ptr = std::make_shared<robot_scheduling_msgs::time_waitGoal>(); 
        goal_ac_ptr->cmd_time = cmd_time ;   
        goal_ac_ptr->time_wait_ac_name = _ac_name ;

        if(time_wait_action_client_ == NULL){
            time_wait_action_client_ = std::make_shared<time_wait_action_client>(nh_) ; 
            time_wait_action_client_->set_robot_scheduling_parameter(parameter_);
        }
        actionlib::SimpleClientGoalState result_ac = time_wait_action_client_->do_time_wait_ac(_ac_name,goal_ac_ptr);
        return result_ac ;
    }
    else if(cmd_id == "0002"){   //-- turn ---
        if(_ac_name.empty())
            _ac_name = "robot_selfturn_to" ;
        double angle = strtodouble(cmd_params,0.0);
        std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal_ac_ptr = std::make_shared<robot_scheduling_msgs::self_turn_toGoal>();
        goal_ac_ptr->command_type = robot_scheduling_msgs::self_turn_toGoal::TURN_REL ;
        goal_ac_ptr->pid_id = "turn";
        goal_ac_ptr->target_angle = angle;

        if(robot_turn_action_client_ == NULL){
            robot_turn_action_client_ = std::make_shared<robot_turn_action_client>(nh_) ; 
            robot_turn_action_client_->set_robot_scheduling_parameter(parameter_);
        }
        robot_turn_action_client_->set_TimeoutFlag(false);
        actionlib::SimpleClientGoalState result_ac = robot_turn_action_client_->do_robot_turn_ac(_ac_name,goal_ac_ptr);
        bTimeout_flag = robot_turn_action_client_->get_TimeoutFlag();
        return result_ac ; 
    }
}
//-----------------------------------------------------------------------------
void function_run_action::function_run_rcvr_CB(const robot_scheduling_msgs::function_run_recoveryGoalConstPtr& goal)
{
}
//--------------------------------------------------------------------------------
