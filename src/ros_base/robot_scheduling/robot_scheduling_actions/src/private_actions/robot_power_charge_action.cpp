#include <private_actions/robot_power_charge_action.h>
#include <ros_utility_tools/ros_tools.h>
#include <thread>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
robot_power_charge_action::robot_power_charge_action(ros::NodeHandle nh,std::string name_as,std::string rcvr_name_as): //,robot_scheduling_parameter* parameter) :
                        nh_(nh),//name_as_(name_as),rcvr_name_as_(rcvr_name_as),
                        power_charge_as_(nh_,name_as, boost::bind(&robot_power_charge_action::power_charge_CB, this, _1), false),
                        power_charge_rcvr_as_(nh_,rcvr_name_as, boost::bind(&robot_power_charge_action::power_charge_rcvr_CB, this, _1), false)
{ 
    _Recovery_to_current_time = 0 ;
    //-----------
    ROS_INFO("power_charge_as_.start()");
    power_charge_as_.start();
    ROS_INFO("power_charge_rcvr_as_.start()");
    power_charge_rcvr_as_.start(); 
}    
//-----------------------------------------------------------------------------
robot_power_charge_action::~robot_power_charge_action()
{
    
}
//-----------------------------------------------------------------------------
void robot_power_charge_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
}
//-----------------------------------------------------------------------------
void robot_power_charge_action::set_robot_scheduling_service(robot_scheduling_service* service)
{
    scheduling_service_ = service ;
}
//-----------------------------------------------------------------------------
/*void robot_power_charge_action::do_power_charge(const robot_scheduling_msgs::power_chargeGoalConstPtr& goal)
{
}*/
//-----------------------------------------------------------------------------
bool robot_power_charge_action::power_charge_one_step(int cmd_seq,std::string &result_data)
{
    int call_type = robot_scheduling_msgs::lower_if_command::Request::SET_COMMAND ;
    int call_id = robot_scheduling_msgs::lower_if_command::Request::POWERCHARGE ;
    std::string call_data = convert_str(cmd_seq); 
    bool bRet = scheduling_service_->call_service_to_base_ctrl(call_type,call_id,call_data) ; 
    std::this_thread::sleep_for(std::chrono::milliseconds(1)); 
    std::string cmd_data ;
    bool bContinue = bRet && scheduling_service_->get_callsrv_lower_cmd_data_response_result(result_data) ; 
    return bContinue ; 
}
//-----------------------------------------------------------------------------
void robot_power_charge_action::power_charge_CB(const robot_scheduling_msgs::power_chargeGoalConstPtr& goal)
{
    if (power_charge_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("run_state_as execution preempted.");
        power_charge_as_.setPreempted();
        return;
    }
    else{
        std::string charge_id = goal->charge_id ;           
        std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params(charge_id);  
        int out_of_times = check_params->out_of_times ;  
        int timed_out = check_params->timeout ; 
        
        robot_scheduling_msgs::power_chargeResult _result;
        robot_scheduling_msgs::power_chargeFeedback _feedback ;
        if(_Recovery_to_current_time >= out_of_times){
            _result.result = robot_scheduling_msgs::power_chargeResult::OUT_OF_TIMES ;
            _Recovery_to_current_time = 0 ;
            power_charge_as_.setAborted(_result);  
            return ;
        }
        int charge_type = goal->charge_type ;
        if(charge_type != robot_scheduling_msgs::power_chargeGoal::CHARGE_IO){
            _result.result = robot_scheduling_msgs::power_chargeResult::NOT_CHARGE_TYPE ;
            _Recovery_to_current_time = 0 ;
            power_charge_as_.setAborted(_result);  
            return ;    
        }
        //-- first, send charge_io_precheck to controller --
        std::string result_data ;
        if(!power_charge_one_step((int)charge_seq_precheck,result_data)){
            _result.result = robot_scheduling_msgs::power_chargeResult::NOT_OK ;
            power_charge_as_.setAborted(_result);  
            _Recovery_to_current_time ++ ;
            return ;      
        }
        else
            _feedback.charge_fb_state = robot_scheduling_msgs::power_chargeFeedback::CHARGE_PRE_CHECK_OK ;            
        //-- second, send charge_io_checked to controller --
        if(!power_charge_one_step((int)charge_seq_check,result_data)){
            _result.result = robot_scheduling_msgs::power_chargeResult::NOT_OK ;
            power_charge_as_.setAborted(_result);  
            _Recovery_to_current_time ++ ;
            return ;      
        }
        else
            _feedback.charge_fb_state = robot_scheduling_msgs::power_chargeFeedback::CHARGE_CHECK_OK ;      
        //-- third, send charge_io_operate to controller --
        if(!power_charge_one_step((int)charge_seq_operate,result_data)){
            _result.result = robot_scheduling_msgs::power_chargeResult::NOT_OK ;
            power_charge_as_.setAborted(_result);  
            _Recovery_to_current_time ++ ;
            return ;      
        }
        else
            _feedback.charge_fb_state = robot_scheduling_msgs::power_chargeFeedback::CHARGEING ;        
        //-- fourth, send cmd_seq_status to controller and get battery data --
        int _period_secs = parameter_->get_acquire_battery_period() ; // get parameter from pameter management
        int _timeout_secs = parameter_->get_power_charge_timeout() ;
        int _target = parameter_->get_charge_voltage_target() ; 
        ros::Time begin_Time = ros::Time::now() ;
        ros::Time cycle_begin_Time = ros::Time::now() ;

        if(!power_charge_one_step((int)charge_seq_status,result_data)){
            _result.result = robot_scheduling_msgs::power_chargeResult::NOT_OK ;
            power_charge_as_.setAborted(_result);  
            _Recovery_to_current_time ++ ;
            return ;      
        }

        bool bResult = true ;
        bool btimeout = false ;
        while(true){
            if(strtoint(result_data,-1) >= _target)
                break ;
            else{
                if(((ros::Time::now() - begin_Time).toSec()) >=  _timeout_secs ){
                    btimeout = true ; break ;
                }
                else{
                    if(((ros::Time::now() - cycle_begin_Time).toSec()) >=  _period_secs ){
                        cycle_begin_Time = ros::Time::now() ;
                        if(!power_charge_one_step((int)charge_seq_status,result_data)){
                            bResult = false ; break ;    
                        } 
                    }    
                }
            }  
        }

        if(btimeout){
            _result.result = robot_scheduling_msgs::power_chargeResult::TIMED_OUT ;
            power_charge_as_.setAborted(_result);  
            _Recovery_to_current_time ++ ;
            //parameter_->set_ac_check_params(goal->charge_id,check_params);  
            return ;              
        }
        else{
            if(!bResult){
                _result.result = robot_scheduling_msgs::power_chargeResult::NOT_OK ;
                power_charge_as_.setAborted(_result);  
                _Recovery_to_current_time ++ ;
                //parameter_->set_ac_check_params(goal->charge_id,check_params);  
                return ;             
            }
        }   
        //-- fifth, send charge_io_finish to controller --
        if(!power_charge_one_step((int)charge_seq_finish,result_data)){
            _result.result = robot_scheduling_msgs::power_chargeResult::NOT_OK ;
            power_charge_as_.setAborted(_result);  
            _Recovery_to_current_time ++ ;
            return ;      
        }
        else{
            _feedback.charge_fb_state = robot_scheduling_msgs::power_chargeFeedback::CHARGE_OK ;
            _result.result = robot_scheduling_msgs::power_chargeResult::OK ;
            power_charge_as_.setSucceeded(_result);
            _Recovery_to_current_time = 0 ;
        }      
        //-----------------
    }
}
//-----------------------------------------------------------------------------
/*void robot_power_charge_action::do_power_charge_rcvr(const robot_scheduling_msgs::power_charge_recoveryGoalConstPtr& goal)
{
}*/
//-----------------------------------------------------------------------------
void robot_power_charge_action::power_charge_rcvr_CB(const robot_scheduling_msgs::power_charge_recoveryGoalConstPtr& goal)
{
    if (power_charge_rcvr_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("power_charge_rcvr_as_ execution preempted.");
        power_charge_rcvr_as_.setPreempted();
        return;
    }
    else{ 
        //move_to_rcvr_ac_name = goal->rcvr_ac_name ;
        //clear_costmap_ac() ;
        robot_scheduling_msgs::power_charge_recoveryResult _result;
        _result.result = robot_scheduling_msgs::power_charge_recoveryResult::OK ;
        power_charge_rcvr_as_.setSucceeded(_result);    
    }
}
//--------------------------------------------------------------------------------
