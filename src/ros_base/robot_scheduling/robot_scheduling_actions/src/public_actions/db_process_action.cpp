#include <public_actions/db_process_action.h>
#include <ros_utility_tools/table_mongodbstore_client.h>
#include <ros_utility_tools/ros_tools.h>
#include <thread>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
db_process_action::db_process_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) :
                        nh_(nh),//name_as_(name_as),name_rcvr_as_(name_rcvr_as),
                        db_process_as_(nh_,name_as, boost::bind(&db_process_action::db_process_CB, this, _1), false),
                        db_process_rcvr_as_(nh_,name_rcvr_as, boost::bind(&db_process_action::db_process_rcvr_CB, this, _1), false)
{ 
    _Recovery_current_time = 0;    
    ROS_INFO("db_process_as_.start()");
    db_process_as_.start();
    ROS_INFO("db_process_rcvr_as_.start()");
    db_process_rcvr_as_.start();
}    
//-----------------------------------------------------------------------------
db_process_action::~db_process_action()
{
    
}
//-----------------------------------------------------------------------------
void db_process_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
}
//-----------------------------------------------------------------------------
void db_process_action::db_process_CB(const robot_scheduling_msgs::db_processGoalConstPtr& goal)
{
    ROS_INFO("db_process_CB");
    //ROS_INFO("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$==================================goal->cmd_id:%d",(int)goal->cmd_id);
    //--- Wait for the action server
    if (db_process_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("db_process_as_ execution preempted.");
        db_process_as_.setPreempted();
        return;
    }
    else{    
        bool b_Check = false ; 
        bool b_data_return = false ;        
        std::shared_ptr<car_db_manager_msgs::car_db_processGoal> goal_ac_ptr = std::make_shared<car_db_manager_msgs::car_db_processGoal>();  
        int cmd_id = goal->cmd_id ;  
        std::string cmd_data = goal->cmd_data ;
        bool b_zero_check = (cmd_data == "parameter_db_check") ;   
        ROS_INFO("cmd_id:%d , cmd_data:%s , goal->db_process_ac_name:%s",cmd_id,cmd_data.c_str(),goal->db_process_ac_name.c_str());        

        if((cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_CHKPARAMS) ||
           (cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_POSE_ID) ||
           (cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_FUNC_ID) ||
           (cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_ALMCODE) ||
           (cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_OPCODE) ||
           (cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_WKSHEET) ||
           (cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_PIDPARAMS)){
            if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_CHKPARAMS)
                goal_ac_ptr->table_name = "check_parameters" ;
            else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_POSE_ID)
                goal_ac_ptr->table_name = "targer_pos2d_parameters" ;
            else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_FUNC_ID)
                goal_ac_ptr->table_name = "action_function_parameters" ;
            else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_ALMCODE)
                goal_ac_ptr->table_name = "alarmcode_parameters" ;
            else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_OPCODE)
                goal_ac_ptr->table_name = "operatecode_parameters" ;
            else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_WKSHEET)
                goal_ac_ptr->table_name = "work_sheet_items" ;
            else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_PIDPARAMS)
                goal_ac_ptr->table_name = "pid_ctrl_parameters" ;

            goal_ac_ptr->cmd_id = (int)edb_tb_edit_query ;                        
            goal_ac_ptr->update_data = "" ; 
            if(cmd_data.empty()){  //-- get all records ---
                ROS_INFO("Get all");
                goal_ac_ptr->query_base_index = (int)edb_tb_search_all ;
                goal_ac_ptr->query_opt_index = 0 ;  //--- no use --
                goal_ac_ptr->query_parameter = "all" ; 
            }
            else{           //-- get assigned records ---
                //-- search base_name ---                   
                if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_CHKPARAMS){
                    goal_ac_ptr->query_base_index = (int)edb_tb_search_unique_code; 
                    goal_ac_ptr->query_opt_index =  0 ; //(int)edynamic_check_parameters_search_base_name ; 
                }
                else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_POSE_ID){
                    goal_ac_ptr->query_base_index = (int)edb_tb_search_unique_code; 
                    goal_ac_ptr->query_opt_index =  0 ; //(int)edynamic_targer_pos2d_parameters_search_base_name ; 
                }
                else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_FUNC_ID){
                    goal_ac_ptr->query_base_index = (int)edb_tb_search_unique_code; 
                    goal_ac_ptr->query_opt_index =  0 ; //(int)edynamic_action_function_parameters_search_base_name ; 
                }
                else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_ALMCODE){
                    goal_ac_ptr->query_base_index = (int)edb_tb_search_unique_code; 
                    goal_ac_ptr->query_opt_index =  0 ; //(int)edynamic_targer_pos2d_parameters_search_base_name ; 
                }
                else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_OPCODE){
                    goal_ac_ptr->query_base_index = (int)edb_tb_search_unique_code; 
                    goal_ac_ptr->query_opt_index =  0 ; //(int)edynamic_action_function_parameters_search_base_name ; 
                }
                else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_PIDPARAMS){
                    goal_ac_ptr->query_base_index = (int)edb_tb_search_unique_code; 
                    goal_ac_ptr->query_opt_index =  0 ; //(int)edynamic_action_function_parameters_search_base_name ; 
                }
                else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_WKSHEET){
                    goal_ac_ptr->query_base_index = (int)edb_tb_search_special ;
                    goal_ac_ptr->query_opt_index =  0 ;                                        
                    if(cmd_data == "parameter_db" || cmd_data == "parameter_db_check"){
                        cmd_data = parameter_->get_ac_action_worksheet_name_db(); 
                    }
                    int found = cmd_data.find(",");
                    if(found < 0 ) // > std::string::npos)
                        cmd_data = cmd_data + "," + cmd_data ;    
                }
                goal_ac_ptr->query_parameter = cmd_data ; 
            }
            b_Check = true ;  
            b_data_return = true ;
        }
        else{
            if((cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_SET_ALMHIST) ||
                (cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_SET_OPHIST) ){
                //ROS_INFO("cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_SET_ALMHIST");    
                if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_SET_ALMHIST)
                    goal_ac_ptr->table_name = "car_alarm_history" ;
                else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_SET_OPHIST)
                    goal_ac_ptr->table_name = "car_operate_history" ; 
                ROS_INFO("goal_ac_ptr->table_name:%s",goal_ac_ptr->table_name.c_str());     
                
                goal_ac_ptr->cmd_id = (int)edb_tb_edit_add ;                        
                    
                goal_ac_ptr->query_base_index = 0 ;//(int)edb_tb_search_all ;
                goal_ac_ptr->query_opt_index = 0 ;  //--- no use --
                goal_ac_ptr->query_parameter = "" ;  
                goal_ac_ptr->update_data = cmd_data ;  
                b_Check = true ;   
            }
            /*else{
                if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_INTERRUPE){
                    ROS_INFO("<<<<<   DBCMD_INTERRUPE >>>>>>>");
                    goal_ac_ptr->cmd_id = 99 ;    
                    b_Check = true ;
                }
            }*/
        }        
        //------------------------------------------
        //ROS_INFO("b_Check:%d",(int)b_Check);    
        robot_scheduling_msgs::db_processResult _result;

        if (!b_Check){
            _result.result = robot_scheduling_msgs::db_processResult::PARAM_ERROR ;
            db_process_as_.setAborted(_result); 
            return ;
        }
        else{
            std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params("db_process"); 
            int out_of_times = (check_params == NULL) ? 5 : check_params->out_of_times ;  
            int timed_out = (check_params == NULL) ? 5 : check_params->timeout ;    
            if(_Recovery_current_time >= out_of_times){
                _result.result = robot_scheduling_msgs::db_processResult::OUT_OF_TIMES ;
                _Recovery_current_time = 0 ;
                db_process_as_.setAborted(_result);  
            }
            else{
                actionlib::SimpleClientGoalState result_ac = db_process_ac_handler(goal->db_process_ac_name,goal_ac_ptr);
                if (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){  
                    if(b_data_return){
                        if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_CHKPARAMS){
                            parameter_set_checkparameters(cmd_data.empty());                               
                        }
                        else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_POSE_ID){
                            parameter_set_pose_2d(cmd_data.empty());                               
                        }
                        else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_FUNC_ID){
                            parameter_set_action_function(cmd_data.empty());                               
                        }
                        else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_ALMCODE){
                            parameter_set_alarmcode(cmd_data.empty());                               
                        }
                        else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_OPCODE){
                            parameter_set_operatecode(cmd_data.empty());                               
                        }
                        else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_PIDPARAMS){
                            parameter_set_pid_ctrl(cmd_data.empty());                               
                        }
                        else if(cmd_id == robot_scheduling_msgs::db_processGoal::DBCMD_GET_WKSHEET){
                            parameter_set_action_worksheet_no();  
                        }
                    }  
                    bool b_data_return_result = !b_zero_check ? true : (result_data_vector.size() > 0) ;
                    ROS_INFO("b_data_return_result:%d",b_data_return_result);
                    _result.result = b_data_return_result ? robot_scheduling_msgs::db_processResult::OK :
                                                            robot_scheduling_msgs::db_processResult::NOT_OK ;                  
                    //-----------------
                    _Recovery_current_time = 0 ;
                    db_process_as_.setSucceeded(_result);    
                } 
                else{
                    _result.result = robot_scheduling_msgs::db_processResult::NOT_OK ;
                    _Recovery_current_time ++ ;
                    db_process_as_.setAborted(_result);        
                }
                //ROS_INFO("waiting end");
            }
            //ROS_INFO("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$==================================goal->cmd_id:%d  ====>end!!",(int)goal->cmd_id);
        }
    }
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState db_process_action::db_process_ac_handler(std::string db_process_ac_name,std::shared_ptr<car_db_manager_msgs::car_db_processGoal> goal)
{
    //ROS_INFO("db_process_ac_handler ======>   goal->cmd_id:%d",goal->cmd_id);;
    if(db_process_ac_name.empty())
        db_process_ac_name = "/db_process" ;    
    //-- launch ac_agv_moveto and wait _clearmap_servicename service ---  
    if(db_process_ac_ == NULL){
        //move_to_ac_name = parameter_->get_move_to_ac_name();
        db_process_ac_ = std::make_shared<db_process_Client>(db_process_ac_name, true);
        while(!db_process_ac_->waitForServer(ros::Duration(5.0))){
            ROS_INFO("Waiting for action server(%s) to come up",db_process_ac_name.c_str());
        }   
    }

    //------------------------
    /*if((int)goal->cmd_id == 99){
        db_process_ac_->cancelAllGoals();  
        return actionlib::SimpleClientGoalState::SUCCEEDED ;   
    }*/
    //-- Waiting for a correct clock－time ----
    double secs =ros::Time::now().toSec();
    while (secs==0) {  // NEEDED OTHERWISE CLOCK WILL BE 0 AND GOAL_ID IS NOT SET CORRECTLY
        ROS_ERROR_STREAM("Time is null: " << ros::Time::now());
        ros::Duration(0.1).sleep();  
        secs =ros::Time::now().toSec();
    }
    //-------------------------------------
    ROS_INFO("goal->table_name:%s",goal->table_name.c_str());

    db_process_ac_->sendGoal(*goal,boost::bind(&db_process_action::ac_doneCb, this, _1,_2),
                                      boost::bind(&db_process_action::ac_activeCb, this),
                                      boost::bind(&db_process_action::ac_feedbackCb, this, _1));

    //bool bInterrupe = false ;
    while (!db_process_ac_->waitForResult(ros::Duration(0.5)) ) {
        /*std::this_thread::sleep_for(std::chrono::milliseconds(1));
        if(parameter_->get_interrupt_AlarmCodeAll()){
            ROS_INFO(" ============= interrupe action =====================");
            bInterrupe = true ;
            break;
        }*/
    }
    /*if(bInterrupe){
        db_process_ac_->cancelAllGoals();  
        parameter_->reset_interrupt_AlarmCodeAll();
        ROS_INFO(" ============= interrupe action cancelAllGoals =====================");
        return actionlib::SimpleClientGoalState::SUCCEEDED ;      
    }
    else{*/
        actionlib::SimpleClientGoalState result_ = db_process_ac_->getState() ;     
        //--------------
        //db_process_ac_->cancelAllGoals(); 
        return result_ ;//db_process_ac_->getState() ;
    //}
}
//-----------------------------------------------------------------------------
void db_process_action::ac_doneCb(const actionlib::SimpleClientGoalState& state,const car_db_manager_msgs::car_db_processResultConstPtr& result)
{
    ROS_INFO("ac_doneCb");
    if(state == actionlib::SimpleClientGoalState::SUCCEEDED){
        //car_db_manager_msgs::car_db_processResult::ConstPtr _result = db_process_ac_->getResult(); 
        int counter = result->result_data.size();
        result_data_vector.clear();
        for(int i=0;i<counter;i++){
            result_data_vector.push_back(result->result_data[i]);  
        }
        ROS_INFO("counter = result_data_vector.size()==>%d",result_data_vector.size());
    }
}
//-----------------------------------------------------------------------------
void db_process_action::ac_activeCb()
{
}
//-----------------------------------------------------------------------------
void db_process_action::ac_feedbackCb(const car_db_manager_msgs::car_db_processFeedbackConstPtr &fb)
{
    
}
//-----------------------------------------------------------------------------
void db_process_action::db_process_rcvr_CB(const robot_scheduling_msgs::db_process_recoveryGoalConstPtr& goal)
{    
    if (db_process_rcvr_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("run_state_as execution preempted.");
        db_process_rcvr_as_.setPreempted();
        return;
    }
    else{   
        robot_scheduling_msgs::db_process_recoveryResult _result;
        _result.result = robot_scheduling_msgs::db_process_recoveryResult::OK ;
        db_process_rcvr_as_.setSucceeded(_result);  
    }
}
//-----------------------------------------------------------------------------
void db_process_action::paras_to_proc_data_vector(std::string parameter)
{
    trans_data_vector.clear();
    int found = parameter.find(",");
    ROS_INFO("parameter:%s",parameter.c_str());

    while(found!=std::string::npos){
        trans_data_vector.push_back(parameter.substr(0,found));   
        parameter = parameter.substr(found+1,parameter.length()-found-1);
        found = parameter.find(",");
    }
    trans_data_vector.push_back(parameter);  
}
//-----------------------------------------------------------------------------
void db_process_action::parameter_set_checkparameters(bool bFull)
{
    int counter = bFull ? result_data_vector.size() : 1 ;
    for(int i=0;i<counter;i++){
        paras_to_proc_data_vector(result_data_vector[i]);

        std::shared_ptr<ac_check_params> _data = std::make_shared<ac_check_params>();
        std::string ac_name = trans_data_vector[2];     // base_name
        _data->out_of_times = strtoint(trans_data_vector[3],0);
        _data->timeout = strtofloat(trans_data_vector[4],0.0);
        ROS_INFO("set ac_name:%s _data->out_of_times:%d _data->timeout:%f",ac_name.c_str(),_data->out_of_times,_data->timeout);    

        if(bFull){
            parameter_->set_ac_check_params(ac_name,_data);  
            std::shared_ptr<ac_check_params> _data1 =  parameter_->get_ac_check_params(ac_name);//("pre_dock");
            ROS_INFO("get ac_name:%s result _data1->out_of_times:%d result _data1->timeout:%f",ac_name.c_str(),_data1->out_of_times,_data1->timeout); 
        }    
        else{
            parameter_->set_ac_check_params_db(ac_name ,_data);
            ac_check_params* _data1 = parameter_->get_ac_check_params_db(ac_name);
            ROS_INFO("get ac_name_db:%s result _data1->out_of_times:%d result _data1->timeout:%f",ac_name.c_str(),_data1->out_of_times,_data1->timeout); 
        }        
    }
}
//-----------------------------------------------------------------------------
void db_process_action::parameter_set_pose_2d(bool bFull)
{
    ROS_INFO("parameter_set_pose_2d");
    int counter = bFull ? result_data_vector.size() : 1 ;
    for(int i=0;i<counter;i++){
        paras_to_proc_data_vector(result_data_vector[i]);
        std::shared_ptr<ac_locomotor_pos2d> _data = std::make_shared<ac_locomotor_pos2d>();
        std::string pose_id = trans_data_vector[1];     // pose_id
        std::string ac_name = trans_data_vector[2];     // base_name
        _data->pos_x = strtodouble(trans_data_vector[3],0.0);
        _data->pos_y = strtodouble(trans_data_vector[4],0.0);
        _data->theta = strtodouble(trans_data_vector[5],0.0);
        _data->rotate_flag = strtoint(trans_data_vector[6],0.0);
        ROS_INFO("set ac_name:%s _data->pos_x:%f _data->pos_y:%f _data->theta:%f _data->rotate_flag:%d",
                 ac_name.c_str(),_data->pos_x,_data->pos_y,_data->theta,_data->rotate_flag);   

        if(bFull){
            parameter_->set_sch_locomotor_pos2d(pose_id,ac_name);  
            parameter_->set_ac_locomotor_params(ac_name,_data);              
            std::shared_ptr<ac_locomotor_pos2d> _data1 =  parameter_->get_ac_locomotor_params(ac_name);//("pre_dock");
            ROS_INFO("get ac_name:%s _data1->pos_x:%f _data1->pos_y:%f _data1->theta:%f _data1->rotate_flag:%d",
                    ac_name.c_str(),_data1->pos_x,_data1->pos_y,_data1->theta,_data1->rotate_flag);  
        }
        else{
            parameter_->set_ac_pose_2d_db(ac_name ,_data);
            ac_locomotor_pos2d* _data1 = parameter_->get_ac_pose_2d_db(ac_name);
            ROS_INFO("get ac_name:%s _data1->pos_x:%f _data1->pos_y:%f _data1->theta:%f _data1->rotate_flag:%d",
                    ac_name.c_str(),_data1->pos_x,_data1->pos_y,_data1->theta,_data1->rotate_flag);  
        }         
    }
}
//-----------------------------------------------------------------------------
void db_process_action::parameter_set_action_function(bool bFull)
{
    int counter = bFull ? result_data_vector.size() : 1 ;
    for(int i=0;i<counter;i++){
        paras_to_proc_data_vector(result_data_vector[i]);
        std::shared_ptr<ac_action_function> _data = std::make_shared<ac_action_function>();
        std::string function_id = trans_data_vector[1];     // pose_id
        std::string ac_name = trans_data_vector[2];     // base_name
        _data->function_id = trans_data_vector[1];
        _data->function_name = trans_data_vector[2];
        _data->function_level = strtoint(trans_data_vector[3],0);
        _data->function_ac_name = trans_data_vector[4];
        _data->function_desc_eng = trans_data_vector[5];
        _data->function_desc_tc = trans_data_vector[6];
        _data->function_desc_sc = trans_data_vector[7];

        ROS_INFO("set ac_name:%s _data->function_id:%s _data->function_name:%s _data->function_level:%d _data->function_ac_name:%s _data->function_desc_eng:%s _data->function_desc_tc:%s _data->function_desc_sc:%s",
                 ac_name.c_str(),_data->function_id.c_str(),_data->function_name.c_str(),_data->function_level,_data->function_ac_name.c_str(),_data->function_desc_eng.c_str(),
                                 _data->function_desc_tc.c_str(),_data->function_desc_sc.c_str());   

        if(bFull){
            parameter_->set_sch_action_function(function_id,ac_name);  
            parameter_->set_ac_action_function(ac_name,_data);  
            std::shared_ptr<ac_action_function> _data1 =  parameter_->get_ac_action_function(ac_name);//("pre_dock");
            ROS_INFO("get ac_name:%s _data1->function_id:%s _data1->function_name:%s _data1->function_level:%d _data->function_ac_name:%s _data1->function_desc_eng:%s _data1->function_desc_tc:%s _data1->function_desc_sc:%s",
                 ac_name.c_str(),_data1->function_id.c_str(),_data1->function_name.c_str(),_data1->function_level,_data1->function_ac_name.c_str(),_data1->function_desc_eng.c_str(),
                                 _data1->function_desc_tc.c_str(),_data1->function_desc_sc.c_str());  
        }
        else{
            parameter_->set_act_action_function_db(ac_name ,_data);
            ac_action_function* _data1 = parameter_->get_act_action_function_db(ac_name);
            ROS_INFO("get ac_name:%s _data1->function_id:%s _data1->function_name:%s _data1->function_level:%d _data->function_ac_name:%s _data1->function_desc_eng:%s _data1->function_desc_tc:%s _data1->function_desc_sc:%s",
                 ac_name.c_str(),_data1->function_id.c_str(),_data1->function_name.c_str(),_data1->function_level,_data1->function_ac_name.c_str(),_data1->function_desc_eng.c_str(),
                                 _data1->function_desc_tc.c_str(),_data1->function_desc_sc.c_str());   
        }           
    }
}
//-----------------------------------------------------------------------------
void db_process_action::parameter_set_alarmcode(bool bFull)
{
    int counter = bFull ? result_data_vector.size() : 1 ;
    for(int i=0;i<counter;i++){
        paras_to_proc_data_vector(result_data_vector[i]);
        std::shared_ptr<ac_alarm_code> _data = std::make_shared<ac_alarm_code>();
        std::string ac_name = trans_data_vector[2];     // base_name
        _data->alarm_id = trans_data_vector[1];
        _data->alarm_name = trans_data_vector[2];
        _data->alarm_level = strtoint(trans_data_vector[3],0);
        _data->alarm_desc_eng = trans_data_vector[4];
        _data->alarm_desc_tc = trans_data_vector[5];
        _data->alarm_desc_sc = trans_data_vector[6];

        ROS_INFO("set ac_name:%s _data->alarm_id:%s _data->alarm_name:%s _data->alarm_level:%d _data->alarm_desc_eng:%s _data->alarm_desc_tc:%s _data->alarm_desc_sc:%s",
                 ac_name.c_str(),_data->alarm_id.c_str(),_data->alarm_name.c_str(),_data->alarm_level,_data->alarm_desc_eng.c_str(),
                                 _data->alarm_desc_tc.c_str(),_data->alarm_desc_sc.c_str());   

        if(bFull){
            parameter_->set_ac_alarm_code(ac_name,_data);  
            std::shared_ptr<ac_alarm_code> _data1 =  parameter_->get_ac_alarm_code(ac_name);//("pre_dock");
            ROS_INFO("get ac_name:%s _data1->alarm_id:%s _data1->alarm_name:%s _data1->alarm_level:%d _data1->alarm_desc_eng:%s _data1->alarm_desc_tc:%s _data1->alarm_desc_sc:%s",
                 ac_name.c_str(),_data1->alarm_id.c_str(),_data1->alarm_name.c_str(),_data1->alarm_level,_data1->alarm_desc_eng.c_str(),
                                 _data1->alarm_desc_tc.c_str(),_data1->alarm_desc_sc.c_str());  
        }
        else{
            parameter_->set_act_alarm_code_db(ac_name ,_data);
            ac_alarm_code* _data1 = parameter_->get_act_alarm_code_db(ac_name);
            ROS_INFO("get ac_name:%s _data1->alarm_id:%s _data1->alarm_name:%s _data1->alarm_level:%d _data1->alarm_desc_eng:%s _data1->alarm_desc_tc:%s _data1->alarm_desc_sc:%s",
                 ac_name.c_str(),_data1->alarm_id.c_str(),_data1->alarm_name.c_str(),_data1->alarm_level,_data1->alarm_desc_eng.c_str(),
                                 _data1->alarm_desc_tc.c_str(),_data1->alarm_desc_sc.c_str());   
        }           
    }
}
//-----------------------------------------------------------------------------
void db_process_action::parameter_set_operatecode(bool bFull)
{
    int counter = bFull ? result_data_vector.size() : 1 ;
    for(int i=0;i<counter;i++){
        paras_to_proc_data_vector(result_data_vector[i]);
        std::shared_ptr<ac_operate_code> _data = std::make_shared<ac_operate_code>();
        std::string ac_name = trans_data_vector[2];     // base_name
        _data->operate_id = trans_data_vector[1];
        _data->operate_name = trans_data_vector[2];
        _data->operate_level = strtoint(trans_data_vector[3],0);
        _data->operate_desc_eng = trans_data_vector[4];
        _data->operate_desc_tc = trans_data_vector[5];
        _data->operate_desc_sc = trans_data_vector[6];

        ROS_INFO("set ac_name:%s _data->operate_id:%s _data->operate_name:%s _data->operate_level:%d _data->operate_desc_eng:%s _data->operate_desc_tc:%s _data->operate_desc_sc:%s",
                 ac_name.c_str(),_data->operate_id.c_str(),_data->operate_name.c_str(),_data->operate_level,_data->operate_desc_eng.c_str(),
                                 _data->operate_desc_tc.c_str(),_data->operate_desc_sc.c_str());   

        if(bFull){
            parameter_->set_ac_operate_code(ac_name,_data);  
            std::shared_ptr<ac_operate_code> _data1 =  parameter_->get_ac_operate_code(ac_name);//("pre_dock");
            ROS_INFO("get ac_name:%s _data1->operate_id:%s _data1->operate_name:%s _data1->operate_level:%d _data1->operate_desc_eng:%s _data1->operate_desc_tc:%s _data1->operate_desc_sc:%s",
                 ac_name.c_str(),_data1->operate_id.c_str(),_data1->operate_name.c_str(),_data1->operate_level,_data1->operate_desc_eng.c_str(),
                                 _data1->operate_desc_tc.c_str(),_data1->operate_desc_sc.c_str());  
        }
        else{
            parameter_->set_act_operate_code_db(ac_name ,_data);
            ac_operate_code* _data1 = parameter_->get_act_operate_code_db(ac_name);
            ROS_INFO("get ac_name:%s _data1->operate_id:%s _data1->operate_name:%s _data1->operate_level:%d _data1->operate_desc_eng:%s _data1->operate_desc_tc:%s _data1->operate_desc_sc:%s",
                 ac_name.c_str(),_data1->operate_id.c_str(),_data1->operate_name.c_str(),_data1->operate_level,_data1->operate_desc_eng.c_str(),
                                 _data1->operate_desc_tc.c_str(),_data1->operate_desc_sc.c_str());   
        }           
    }
}
//-----------------------------------------------------------------------------
void db_process_action::parameter_set_pid_ctrl(bool bFull)
{
    int counter = bFull ? result_data_vector.size() : 1 ;
    for(int i=0;i<counter;i++){
        paras_to_proc_data_vector(result_data_vector[i]);
        std::shared_ptr<pid_ctrl_params> _data = std::make_shared<pid_ctrl_params>();
        std::string ac_name = trans_data_vector[2];     // base_name
        _data->target = strtodouble(trans_data_vector[3],0.0);
        _data->tolerance = strtodouble(trans_data_vector[4],0.0);
        _data->min_bound = strtodouble(trans_data_vector[5],0.0);
        _data->max_bound = strtodouble(trans_data_vector[6],0.0);
        _data->d_KP = strtodouble(trans_data_vector[7],0.0);
        _data->d_KI = strtodouble(trans_data_vector[8],0.0);
        _data->d_KD = strtodouble(trans_data_vector[9],0.0);
        _data->b_compensation = (bool)strtoint(trans_data_vector[10],0.0);
        ROS_INFO("============================================>>>trans_data_vector[7]:%s _data->d_KP:%g",trans_data_vector[7].c_str(),_data->d_KP);

        ROS_INFO("set=>ac_name:%s _data->target:%f _data->tolerance:%f _data->min_bound:%f _data->max_bound:%f _data->d_KP:%f _data->d_KI:%f _data->d_KI:%f _data->b_compensation:%d",
                 ac_name.c_str(),_data->target,_data->tolerance,_data->min_bound,_data->max_bound,
                                 _data->d_KP,_data->d_KI,_data->d_KD,_data->b_compensation);   

        if(bFull){
            parameter_->set_ac_pid_ctrl_params(ac_name,_data);  
            std::shared_ptr<pid_ctrl_params> _data1 =  parameter_->get_ac_pid_ctrl_params(ac_name) ;//    ->get_ac_pid_ctrl_params_(ac_name);//("pre_dock");
            ROS_INFO("get=>ac_name:%s _data1->target:%f _data1->tolerance:%f _data1->min_bound:%f _data1->max_bound:%f _data1->d_KP:%f _data1->d_KI:%f _data1->d_KI:%f _data1->b_compensation:%d",
                 ac_name.c_str(),_data1->target,_data1->tolerance,_data1->min_bound,_data1->max_bound,
                                 _data1->d_KP,_data1->d_KI,_data1->d_KD,_data1->b_compensation);   
        }
        else{
            parameter_->set_ac_pid_ctrl_params_db(ac_name ,_data);
            pid_ctrl_params* _data1 = parameter_->get_ac_pid_ctrl_params_db(ac_name);
            ROS_INFO("get=>ac_name:%s _data1->target:%f _data1->tolerance:%f _data1->min_bound:%f _data1->max_bound:%f _data1->d_KP:%f _data1->d_KI:%f _data1->d_KI:%f _data1->b_compensation:%d",
                 ac_name.c_str(),_data1->target,_data1->tolerance,_data1->min_bound,_data1->max_bound,
                                 _data1->d_KP,_data1->d_KI,_data1->d_KD,_data1->b_compensation);  
        }           
    }
}
//-----------------------------------------------------------------------------
void db_process_action::parameter_set_action_worksheet_no()
{
    parameter_->clear_ac_action_worksheet_map();
    
    int counter = result_data_vector.size() ;
    for(int i=0;i<counter;i++){
        paras_to_proc_data_vector(result_data_vector[i]);
        std::shared_ptr<ac_action_worksheet> _data = std::make_shared<ac_action_worksheet>();
        int item_ser_no = strtoint(trans_data_vector[3],0);      
        _data->worksheet_no = trans_data_vector[1];
        _data->worksheet_item_name = trans_data_vector[2];
        _data->item_ser_no = strtoint(trans_data_vector[3],0);
        _data->target_pose_id = trans_data_vector[5];
        _data->action_function_id = trans_data_vector[6];
        _data->action_function_params = trans_data_vector[7];
        
        parameter_->set_ac_action_worksheet_name_db(_data->worksheet_no);
        parameter_->set_ac_action_worksheet(item_ser_no,_data);  

        ROS_INFO("trans_data_vector[5]:%s _data->target_pose_id:%s",trans_data_vector[5].c_str(),_data->target_pose_id.c_str());
        ROS_INFO("trans_data_vector[6]:%s _data->action_function_id:%s",trans_data_vector[6].c_str(),_data->action_function_id.c_str());
    }
}
//--------------------------------------------------------------------------------
