#include <robot_scheduling_service.h>
#include <ros_utility_tools/ros_tools.h>
#include <thread>
#include <boost/algorithm/string/split.hpp>
#include <boost/algorithm/string/classification.hpp>
//-----------------------------------------------------------------------------
robot_scheduling_service::robot_scheduling_service(ros::NodeHandle& nh,std::string srv_upper_name,std::string clt_upper_name,
		   						                   std::string srv_lower_name,std::string clt_lower_name) :nh_(nh)
{     
    cmd_srv_service_for_upper_name = srv_upper_name;
    cmd_clt_service_to_upper_name = clt_upper_name;
    cmd_srv_service_for_lower_name = srv_lower_name;
    cmd_clt_service_to_lower_name = clt_lower_name;
    
    //-- declare client-server service ----
    cmd_srv_service_for_upper = nh_.advertiseService(cmd_srv_service_for_upper_name,&robot_scheduling_service::srv_Eval_service_for_upper, this);
    cmd_srv_service_for_lower = nh_.advertiseService(cmd_srv_service_for_lower_name,&robot_scheduling_service::srv_Eval_service_for_lower, this);
    
    pub_plan_to_exec = nh.advertise<std_msgs::String>("planToExec", 10);
    //---------------------------
    lower_out_of_times = 3 ;
    //-------------------------
    sub_upper_topic_command = nh_.subscribe("hyc_system_topic_command", 10,&robot_scheduling_service::sub_upper_topic_command_CB, this);
}
//-----------------------------------------------------------------------------
robot_scheduling_service ::~robot_scheduling_service()
{
   
}
//--------------------------------------------------------------------------------		
void robot_scheduling_service::sub_upper_topic_command_CB(const robot_scheduling_msgs::robot_topic_command& cmd_msg)
{
    bool b_robot_name = true ; //--- compare robot name --
    if(b_robot_name){
        int cmd_type = cmd_msg.cmd_type ;
        int cmd_id = cmd_msg.cmd_id ;
        std::string cmd_data = cmd_msg.cmd_data ;
        if(cmd_type == robot_scheduling_msgs::robot_topic_command::SET_COMMAND){
            if((cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_STANDBY) ||
                (cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANUAL) ||
                (cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE)){
                    operate_change_decise(cmd_id);
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_ACT ||
                   cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_SET ){
                    manual_change_decise(cmd_id,cmd_data);           
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_PLANTOEXEC_RUN){
                manual_plan_to_exec_decise(cmd_data);
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_PLANTOEXEC_END){
                manual_plan_to_exec_decise("pnpPlanToEnd") ;
            }
            else if((cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE_ACT) ||
                    (cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE_SET)){
                remote_process_decise(cmd_id,cmd_data);
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RESET){
                alarm_reset_decise(cmd_id,cmd_data) ;
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_ACT){
                alarm_recovery_decise(cmd_id,cmd_data) ;
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::SYSTEM_RESTART){
                system_restart_decise(cmd_id,cmd_data) ;
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_ACT ||
                   cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_SET ){
                    alarm_recovery_change_decise(cmd_id,cmd_data);           
            }
        }
        /*else if(cmd_type == robot_scheduling_msgs::robot_topic_command::GET_STATUS){
            if(cmd_id == robot_scheduling_msgs::robot_topic_command::STATUS){
                resp.result = true ;
                resp.result_state = parameter_->get_manual_status() ;    
            } 
        }*/
    }
}
//-----------------------------------------------------------------------------
void robot_scheduling_service ::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
}
//------------------------------------------------------------------------------
bool robot_scheduling_service::split_gen_condition(std::string cond,char delims)
{
    bool bRet = true ;
    v_params_.clear();
    std::vector<std::string> splitted_condition;
    boost::split(splitted_condition, cond, boost::is_any_of(std::array<char,1>{delims}));
    //boost::split(splitted_condition, cond, boost::is_any_of("_"));
    int isize = splitted_condition.size() ;
    v_params_.resize(isize);
    for(int i=0;i<isize;i++){
        v_params_[i] = splitted_condition[i] ;       
    }
    return bRet ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::operate_change_decise(int cmd_id)
{
    bool b_change = false ;
    runstatus_type sys_status = parameter_->get_system_status() ;
    if((sys_status == runstatus_standby) || (sys_status == runstatus_manual) || (sys_status == runstatus_remote)){
        //bool b_manual_none = (parameter_->get_manual_status() == manualstatus_none);
        //bool b_remote_none = (parameter_->get_remote_status() == remotestatus_none);
        //ROS_INFO("=======================================================b_manual_none==>%d,b_remote_none==>%d",b_manual_none,b_remote_none);
        //b_change = (b_manual_none && b_remote_none) ;
        runmode_type runmode_ = parameter_->get_systme_runmode_type();
        b_change = ((runmode_ == runmode_standby) || (runmode_ == runmode_ready)) && 
                   !parameter_->get_plantoexec_run() ;
        if(b_change){
            if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_STANDBY){
                //parameter_->set_system_status(runstatus_standby);  
                parameter_->set_pre_system_status(runstatus_standby);    
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANUAL){
                //parameter_->set_system_status(runstatus_standby);  
                parameter_->set_pre_system_status(runstatus_manual);    
            }
            else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE){
                //parameter_->set_system_status(runstatus_standby);  
                parameter_->set_pre_system_status(runstatus_remote);    
            }
        }
    }
    else{

    }
    return b_change ;
}
//-------------------------------------------------------		
void robot_scheduling_service::set_operate_mode_change(robot_scheduling_msgs::upper_if_command::Request  &req,
								     	               robot_scheduling_msgs::upper_if_command::Response &resp)
{
    int cmd_type = req.upper_cmd.cmd_type ;
    int cmd_id = req.upper_cmd.cmd_id ;  
    //--------------------------
    resp.result = operate_change_decise(cmd_id) ;//b_change ;
    resp.result_state = parameter_->get_pre_system_status() ;
    resp.result_data = convert_str(parameter_->get_system_status()) ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::manual_change_decise(int cmd_id,std::string cmd_data)
{ 
    bool b_change = (parameter_->get_system_status() == runstatus_manual) ;// && 
                    //(parameter_->get_manual_status() == manualstatus_none);        
    if(b_change){
        if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_ACT){
            bool b_run = (bool)strtoint(cmd_data,0);
            parameter_->set_ManualRun_Start(b_run);    
            if(!b_run){
                int act_cmd_id = strtoint(v_params_[0],0) ;
                if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_PLANTOEXEC){
                    parameter_->set_manual_status(manualstatus_none); 
                }                   
            }
        }
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_SET){
             split_gen_condition(cmd_data,',') ;
             int act_cmd_id = strtoint(v_params_[0],0) ;
             std::string act_cmd_paras = "" ;
             if(v_params_.size() > 1){
                act_cmd_paras = v_params_[1] ;                 
             }
            //---------------      
            if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_NONE){
                parameter_->set_manual_status(manualstatus_none);  
            }
            else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_PLANTOEXEC){
                parameter_->set_manual_status(manualstatus_plantoexec);  
            }
            else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_MOVEINT){
                parameter_->set_manual_status(manualstatus_moveint);  
                parameter_->set_if_target_pose_id(act_cmd_paras);  //_pose_name
            }
            else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_MOVE){
                parameter_->set_manual_status(manualstatus_move);   
                parameter_->set_if_target_pose_id(act_cmd_paras);  //_pose_name
            }
            else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_TURN){
                parameter_->set_manual_status(manualstatus_turn);  
                parameter_->set_turn_target_abs_angle(strtodouble(act_cmd_paras,0.0));
            }
            else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_WORKSHEET){
                parameter_->set_manual_status(manualstatus_worksheet); 
                parameter_->set_ac_action_worksheet_name_db(act_cmd_paras) ;    
            }
            else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_SAVE){
                parameter_->set_manual_status(manualstatus_dataproc);  
            }
        }   
    }
    ROS_INFO("b_change:&d",b_change);
    return b_change ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::alarm_recovery_change_decise(int cmd_id,std::string cmd_data)
{   
    bool b_change = (parameter_->get_system_status() == runstatus_pause) ;
    if(b_change){
        if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_ACT){
            bool b_run = (bool)strtoint(cmd_data,0);
            parameter_->set_Alarm_Recovery(b_run);    
            if(!b_run){
                int act_cmd_id = strtoint(v_params_[0],0) ;
                if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_PLANTOEXEC){
                    parameter_->set_recovery_status(recoverystatus_none); 
                }                   
            }
        }
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_SET){ 
             split_gen_condition(cmd_data,',') ;
             int act_cmd_id = strtoint(v_params_[0],0) ;
             std::string act_cmd_paras = "" ;
             if(v_params_.size() > 1){
                act_cmd_paras = v_params_[1] ;                 
             }
            //---------------
            if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_NONE){
                parameter_->set_recovery_status(recoverystatus_none);  
            }
            else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_PLANTOEXEC){
                parameter_->set_recovery_status(recoverystatus_plantoexec);  
            }
        }   
    }

    return b_change ;
}
//-------------------------------------------------------		
void robot_scheduling_service::set_alarm_recovery_change(robot_scheduling_msgs::upper_if_command::Request  &req,
								     	                 robot_scheduling_msgs::upper_if_command::Response &resp)
{
    int cmd_type = req.upper_cmd.cmd_type ;
    int cmd_id = req.upper_cmd.cmd_id ;  
    std::string cmd_data = req.upper_cmd.cmd_data ; 
    //--------------------------
    resp.result = alarm_recovery_change_decise(cmd_id,cmd_data) ; 
    resp.result_state = parameter_->get_recovery_status() ;
}
//-------------------------------------------------------		
void robot_scheduling_service::set_manual_mode_change(robot_scheduling_msgs::upper_if_command::Request  &req,
								     	              robot_scheduling_msgs::upper_if_command::Response &resp)
{
    int cmd_type = req.upper_cmd.cmd_type ;
    int cmd_id = req.upper_cmd.cmd_id ;  
    std::string cmd_data = req.upper_cmd.cmd_data ;  
    //--------------------------
    resp.result = manual_change_decise(cmd_id,cmd_data) ;//b_change ;
    resp.result_state = parameter_->get_manual_status() ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::manual_plan_to_exec_decise(std::string planName)
{
    bool bRet = false ;   
    runstatus_type sys_status = parameter_->get_system_status() ; 
    manualstatus_type manual_status = parameter_->get_manual_status() ;
    if((sys_status == runstatus_manual) && (manual_status == manualstatus_plantoexec)){
        bool b_manual_none = (parameter_->get_manual_status() == manualstatus_none);
        bRet = !planName.empty() && b_manual_none;
        if(bRet){
            pub_plan_to_exec_name.data = planName ;
            pub_plan_to_exec.publish(pub_plan_to_exec_name);
            
        }
    }
    //--------------------------
    return bRet ;
}
//-------------------------------------------------------		
void robot_scheduling_service::set_manual_plan_to_exec(std::string planName,robot_scheduling_msgs::upper_if_command::Response &resp)
{    
    //--------------------------
    resp.result = manual_plan_to_exec_decise(planName) ;//bRet ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::remote_process_decise(int cmd_id,std::string cmd_data)
{
    bool bRet = false ;  
    if(parameter_->get_system_status() == runstatus_remote){
        if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE_ACT){
            bool b_run = (bool)strtoint(cmd_data,0);
            parameter_->set_RemoteRun_Start(b_run);    
            /*if(!b_run){
                int act_cmd_id = strtoint(v_params_[0],0) ;
                if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_PLANTOEXEC){
                    parameter_->set_remote_status(remotestatus_none); 
                }                   
            }*/
            bRet = true ;
        }
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE_SET){
             split_gen_condition(cmd_data,',') ;
             int act_cmd_id = strtoint(v_params_[0],0) ;
             std::string act_cmd_paras = "" ;
             if(v_params_.size() > 1){
                act_cmd_paras = v_params_[1] ;                 
             }
            //---------------      
            if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE_NONE){
                parameter_->set_remote_status(remotestatus_none);  
                bRet = true ;
            }
            else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTEP_WORKSHEET){
                parameter_->set_remote_status(remotestatus_worksheet);  
                parameter_->set_ac_action_worksheet_name_db(act_cmd_paras);
                parameter_->set_RemoteRun_cont_test(false);
                bRet = true ;   
            }
            /*else if(act_cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTEP_WORKSHEET_CONT_TEST){
                parameter_->set_remote_status(remotestatus_worksheet_c_test);  
                parameter_->set_ac_action_worksheet_name_db(act_cmd_paras);
                parameter_->set_RemoteRun_cont_test(true);
                bRet = true ;   
            }*/
        }   
    }

    return bRet ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::alarm_reset_decise(int cmd_id,std::string cmd_data)
{
    bool bRet = false ;   
    runstatus_type sys_status = parameter_->get_system_status() ; 
    if(sys_status == runstatus_alarm) {
        if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RESET){
            parameter_->set_Alarm_Reset((bool)strtoint(cmd_data,0));
            bRet = true ;   
        }    
    }
    //--------------------------
    return bRet ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::alarm_recovery_decise(int cmd_id,std::string cmd_data)
{
    bool bRet = false ;   
    runstatus_type sys_status = parameter_->get_system_status() ; 
    if(sys_status == runstatus_pause) {
        if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_ACT){
            parameter_->set_Alarm_Recovery((bool)strtoint(cmd_data,0));
            bRet = true ;   
        }    
    }
    //--------------------------
    return bRet ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::system_restart_decise(int cmd_id,std::string cmd_data)
{
    bool bRet = false ;   
    runstatus_type sys_status = parameter_->get_system_status() ; 
    if(sys_status == runstatus_pause) {
        if(cmd_id == robot_scheduling_msgs::robot_topic_command::SYSTEM_RESTART){
            parameter_->set_System_ReStart((bool)strtoint(cmd_data,0));
            bRet = true ;   
        }    
    }
    //--------------------------
    return bRet ;
}
//-------------------------------------------------------		
void robot_scheduling_service::set_remote_process(robot_scheduling_msgs::upper_if_command::Request  &req,
								                  robot_scheduling_msgs::upper_if_command::Response &resp)
{
    //--------------------------
    int cmd_id = req.upper_cmd.cmd_id ;
    std::string cmd_data = req.upper_cmd.cmd_data ;
    resp.result = remote_process_decise(cmd_id,cmd_data) ;//bRet ;
}
//-------------------------------------------------------		
void robot_scheduling_service::set_alarm_reset_process(robot_scheduling_msgs::upper_if_command::Request  &req,
								                  robot_scheduling_msgs::upper_if_command::Response &resp)
{
    //--------------------------
    int cmd_id = req.upper_cmd.cmd_id ;
    std::string cmd_data = req.upper_cmd.cmd_data ;
    resp.result = alarm_reset_decise(cmd_id,cmd_data) ;
}
//-------------------------------------------------------		
void robot_scheduling_service::set_alarm_recovery_process(robot_scheduling_msgs::upper_if_command::Request  &req,
								                  robot_scheduling_msgs::upper_if_command::Response &resp)
{
    //--------------------------
    int cmd_id = req.upper_cmd.cmd_id ;
    std::string cmd_data = req.upper_cmd.cmd_data ;
    resp.result = alarm_recovery_decise(cmd_id,cmd_data) ; 
}
//-------------------------------------------------------		
void robot_scheduling_service::set_system_restart_process(robot_scheduling_msgs::upper_if_command::Request  &req,
								                  robot_scheduling_msgs::upper_if_command::Response &resp)
{
    //--------------------------
    int cmd_id = req.upper_cmd.cmd_id ;
    std::string cmd_data = req.upper_cmd.cmd_data ;
    resp.result = system_restart_decise(cmd_id,cmd_data) ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::srv_Eval_service_for_upper(robot_scheduling_msgs::upper_if_command::Request  &req,
								     	                  robot_scheduling_msgs::upper_if_command::Response &resp)
{
    ROS_INFO("srv_Eval_service_for_upper"); 
    //-------------------------
    int cmd_type = req.upper_cmd.cmd_type ;
    int cmd_id = req.upper_cmd.cmd_id ;
    std::string cmd_data = req.upper_cmd.cmd_data ;
    if(cmd_type == robot_scheduling_msgs::robot_topic_command::SET_COMMAND){
        if((cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_STANDBY) ||
           (cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANUAL) ||
           (cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE)){
            set_operate_mode_change(req,resp) ;  
           }    
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_ACT ||
                cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_SET ){                    
            set_manual_mode_change(req,resp);
        }  
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_PLANTOEXEC_RUN){
            set_manual_plan_to_exec(cmd_data,resp) ;
        }
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_MANU_PLANTOEXEC_END){
            set_manual_plan_to_exec("pnpPlanToEnd",resp) ;
        }
        else if((cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE_ACT) ||
                (cmd_id == robot_scheduling_msgs::robot_topic_command::MODE_REMOTE_SET)){
            set_remote_process(req,resp) ;
        }
        
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RESET){
            set_alarm_reset_process(req,resp) ;            
        }
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_ACT){
            set_alarm_recovery_process(req,resp) ;  
        }
        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::SYSTEM_RESTART){
            set_system_restart_process(req,resp) ;              
        }

        else if(cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_ACT ||
                cmd_id == robot_scheduling_msgs::robot_topic_command::ALARM_RECOVERY_SET ){                    
            set_alarm_recovery_change(req,resp);
        } 
    }
    else if(cmd_type == robot_scheduling_msgs::robot_topic_command::GET_STATUS){
        if(cmd_id == robot_scheduling_msgs::robot_topic_command::STATUS){
            resp.result = true ;
            resp.result_state = parameter_->get_manual_status() ;    
        } 
    }
    //---------------------
    /*if(resp.result){
        act_cmd_type = cmd_type ;
		act_cmd_id = cmd_id ;
		act_cmd_data = cmd_data ;
    }*/
    //--------------------
    return true ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::srv_Eval_service_for_lower(robot_scheduling_msgs::lower_if_command::Request  &req,
								     	                  robot_scheduling_msgs::lower_if_command::Response &resp)
{
    ROS_INFO("srv_Eval_service_for_lower"); 

    resp.result = false ;	
    //---- get command from base controller -----
    if(req.cmd_type == robot_scheduling_msgs::lower_if_command::Request::GET_STATUS){
        //-- get car's status ----- 
        if(req.cmd_id == robot_scheduling_msgs::lower_if_command::Request::STATUS){
            resp.result = true ;
            resp.result_state = robot_scheduling_msgs::lower_if_command::Response::OK ;
            int _status = (int)parameter_->get_system_status();
            resp.result_data = convert_str(_status);
        }        
    }
    //---- set command from base controller -----
    else if(req.cmd_type == robot_scheduling_msgs::lower_if_command::Request::SET_COMMAND){
        if(req.cmd_id == robot_scheduling_msgs::lower_if_command::Request::BASE_READY){
            resp.result = true ;
            resp.result_state = robot_scheduling_msgs::lower_if_command::Response::OK ;
            parameter_->set_base_ctrl_ready(true);
            resp.result_data = "";
        }        
    }
    //--------------------
    return true ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::call_service_to_base_ctrl(int call_type,int call_id,std::string call_data)
{
    ROS_INFO("call_service_to_base_ctrl");
    callsrv_lower_cmd_data.request.cmd_type = call_type ;
    callsrv_lower_cmd_data.request.cmd_id = call_id ;    
    callsrv_lower_cmd_data.request.cmd_data = call_data ;

    recovery_times = 0 ;
    b_callsrv_lower_alarm = false ;
    while(true){
        std::this_thread::sleep_for(std::chrono::milliseconds(1)); 
        if(parameter_->get_b_simulation())
            break ;
        else{    
            cmd_clt_service_to_lower.call(callsrv_lower_cmd_data) ; 
            if(callsrv_lower_cmd_data.response.result)  
                break ;
            else{
                recovery_times++ ;    
                b_callsrv_lower_alarm = (recovery_times >= lower_out_of_times);
                if(b_callsrv_lower_alarm)
                    break ;
            }  
        }
    }
    ROS_INFO("call_service_to_base_ctrl123");
    //----------------------------------
    if(b_callsrv_lower_alarm){  
        ROS_INFO("alarm");
        //-- set alarm state & code to robot_scheduling_parameter
        int _status = (int)base_status_type::base_status_alarm;
        parameter_->set_base_status_type(_status);   
    }
    else{
        //-- Get result data ----    
        ROS_INFO("call_type==>%d",(int)call_type);    
        ROS_INFO("call_id==>%d",(int)call_id);  
        if(call_type == robot_scheduling_msgs::lower_if_command::Request::GET_STATUS){
            if(call_id==robot_scheduling_msgs::lower_if_command::Request::BATTERY){
                std::shared_ptr<battery_s_data> _data = std::make_shared<battery_s_data>();
                if(parameter_->get_b_simulation()){
                    _data->status = true;
                    _data->capacity = 0.00;
                    _data->voltage = 0.00;                        
                }
                else{
                    if(split_gen_condition(callsrv_lower_cmd_data.response.result_data,',')){                       
                        _data->status = (bool)strtoint(v_params_[0],0);
                        _data->capacity = strtodouble(v_params_[1],0);
                        _data->voltage = strtodouble(v_params_[2],0);
                        parameter_->set_battery_data(_data);
                    }
                }
                parameter_->set_battery_data(_data);
            }  
            else if(call_id==robot_scheduling_msgs::lower_if_command::Request::STATUS){  
                int _status ;
                if(parameter_->get_b_simulation()){
                    if(parameter_->get_base_status_type() < base_status_standby)
                        _status = (int)base_status_standby ;
                    else
                        _status = parameter_->get_base_status_type() ;
                    ROS_INFO("_status==>%d",_status);    
                        
                }
                else{
                    if(split_gen_condition(callsrv_lower_cmd_data.response.result_data,',')){  
                        _status = strtoint(v_params_[0],0);                         
                    }
                }
                parameter_->set_base_status_type(_status);   
            }            
        }  
        //-- Set parameter data ---- 
        else if(call_type == robot_scheduling_msgs::lower_if_command::Request::SET_COMMAND){
            if(call_id==robot_scheduling_msgs::lower_if_command::Request::BASE_READY){
                bool b_status ;
                if(parameter_->get_b_simulation()){
                    b_status = true ;
                }
                else{
                    if(split_gen_condition(callsrv_lower_cmd_data.response.result_data,',')){  
                        b_status = (bool)strtoint(v_params_[0],0);                         
                    }    
                }
                parameter_->set_base_ctrl_ready(b_status) ;
            }
            else if(call_id==robot_scheduling_msgs::lower_if_command::Request::LED){

            }
            else if(call_id==robot_scheduling_msgs::lower_if_command::Request::MUSIC){

            }
        }  
    }
    //----------------------------------    
    return true ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::call_service_to_host(robot_scheduling_msgs::upper_if_command::Request  &req,
								     	            robot_scheduling_msgs::upper_if_command::Response &resp)
{
    bool bRet = true ;
    std::this_thread::sleep_for(std::chrono::milliseconds(1)); 
    return bRet ;
}
//-------------------------------------------------------		
bool robot_scheduling_service::get_callsrv_lower_cmd_data_response_result(std::string &result_data)
{
    result_data = callsrv_lower_cmd_data.response.result_data ;
    return callsrv_lower_cmd_data.response.result && 
           (callsrv_lower_cmd_data.response.result_state == robot_scheduling_msgs::lower_if_command::Response::OK);
}
//-------------------------------------------------------		
bool robot_scheduling_service::get_callsrv_upper_cmd_data_response_result(std::string &result_data)
{
    result_data = callsrv_upper_cmd_data.response.result_data ;
    return callsrv_upper_cmd_data.response.result && 
           (callsrv_upper_cmd_data.response.result_state == robot_scheduling_msgs::upper_if_command::Response::OK);
}

//-----------------------------------------------------------------------------
