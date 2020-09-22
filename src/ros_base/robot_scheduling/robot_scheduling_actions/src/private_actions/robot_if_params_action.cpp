#include <private_actions/robot_if_params_action.h>
#include <ros_utility_tools/ros_tools.h>
//-----------------------------------------------------------------------------
robot_if_params_action::robot_if_params_action(ros::NodeHandle nh,std::string name_as) : //,robot_scheduling_parameter* parameter) :
                        nh_(nh),//name_as_(name_as),
                        if_params_as(nh_,name_as, boost::bind(&robot_if_params_action::if_params_CB, this, _1), false)
{ 
    ROS_INFO("if_params_as.start()");
    if_params_as.start();
}    
//-----------------------------------------------------------------------------
robot_if_params_action::~robot_if_params_action()
{
    
}
//-----------------------------------------------------------------------------
void robot_if_params_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
}
//-----------------------------------------------------------------------------
void robot_if_params_action::if_params_CB(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal)
{
    ROS_INFO("if_params_CB");   
    if (if_params_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("if_params_as execution preempted.");
        if_params_as.setPreempted();
        return;
    }
    else{  
        int data_type = goal->dtat_type ;
        bool bResult = false ;        
        //--- Target_Pose Process --------------------------
        if(data_type == robot_scheduling_msgs::robot_interface_paramsGoal::TARGET_POSE){
            ROS_INFO("TARGET_POSE");  
            do_target_pose_function(goal) ;
        }
        else if(data_type == robot_scheduling_msgs::robot_interface_paramsGoal::FUNCTION_ID){
            ROS_INFO("WORK_SHEET");  
            do_worksheet_function(goal) ;
        }
        else if(data_type == robot_scheduling_msgs::robot_interface_paramsGoal::PARAMETER){
            ROS_INFO("if_params_CB==>PARAMETER");  
            do_parameters_function(goal) ;
        }
        //--- Status_code Process ---------------------------
        //else if(data_type == robot_scheduling_msgs::robot_interface_paramsGoal::STATUS_CODE){
        //    do_status_code_function(goal) ;
        //}        
    }
}
//-----------------------------------------------------------------------------
/*void robot_if_params_action::get_act_worksheet_item_vec()
{
    std::vector<int> items = parameter_->get_ac_action_ws_items_v();
    act_worksheet_item_vec.clear();
    int iSize = items.size();
    for(int i=0;i<iSize;i++){
        act_worksheet_item_vec.push_back(items[i]);    
    }
}
//-----------------------------------------------------------------------------
bool robot_if_params_action::WorkSheet_PreMoveCheck(int step)
{
    
    bool bRun = false ;
    if(step == 0){  
        bRun = true ;
    }
    else{
        std::shared_ptr<ac_action_worksheet> _pre_param = parameter_->get_ac_action_work_ser_no(act_worksheet_item_vec[step-1]);   
        std::shared_ptr<ac_action_worksheet> _param = parameter_->get_ac_action_work_ser_no(act_worksheet_item_vec[step]);   
        bRun = (_param->target_pose_id != _pre_param->target_pose_id);
    }
    return bRun ;    
}*/
//-----------------------------------------------------------------------------
void robot_if_params_action::do_target_pose_function(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal)
{    
    int cmd_type = goal->cmd_type ;
    //int data_type = goal->dtat_type ;
    bool bResult = false ;
     ROS_INFO("goal->set_data[0]:%s",goal->set_data[0].c_str());
    robot_scheduling_msgs::robot_interface_paramsResult _result;
    if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::SET){
        std::string _pose_name  ;
        if(goal->set_data[0]=="park") _pose_name = "park_pos" ;
        else if(goal->set_data[0]=="home") _pose_name = "home_pos" ;
        else if(goal->set_data[0]=="predock"){
            _pose_name = "pre_dock_pos_"+goal->set_data[1];  
        }
        else if(goal->set_data[0]=="postdock"){
            _pose_name = "post_undock_pos_"+goal->set_data[1];  
        }
        else if(goal->set_data[0]=="worksheet"){
            int ser_no = parameter_->get_worksheet_current_index();
            ROS_INFO("database ser_no:%d",ser_no);
            std::shared_ptr<ac_action_worksheet> _param = parameter_->get_ac_action_work_ser_no(ser_no);//(ser_no);
            ROS_INFO("_param->target_pose_id:%s",_param->target_pose_id.c_str());
            _pose_name = parameter_->get_sch_locomotor_pos2d(_param->target_pose_id) ;
        }
        //--------
        /*else if(goal->set_data[0]=="ws_pose_runcheck"){  
            get_act_worksheet_item_vec();  
            int ser_no = parameter_->get_worksheet_current_index();
            bool bRun = WorkSheet_PreMoveCheck(ser_no) ;  
            _result.result = bRun ? robot_scheduling_msgs::robot_interface_paramsResult::OK :
                                    robot_scheduling_msgs::robot_interface_paramsResult::PASS;
            if_params_as.setSucceeded(_result);      
            return ;
        }*/
        ROS_INFO("_pose_name:%s",_pose_name.c_str()); 
        parameter_->set_if_target_pose_id(_pose_name);
        bResult = true ;   
    } 
    //-------------------- 
    else if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::GET){
        bResult = (parameter_->get_if_target_pose_id() == goal->set_data[0]) ||
                  goal->set_data[0].empty()  ;
        if(bResult){
            std::shared_ptr<ac_locomotor_pos2d> _data = parameter_->get_if_target_pose_pos2d();
            ROS_INFO("_data->pos_x:%f, _data->pos_y:%f ,_data->theta:%f ,_data->rotate_flag:%d",_data->pos_x,_data->pos_y,_data->theta,_data->rotate_flag);
        }
    } 
    //---------------------------------------------------------------------        
    if(bResult){
        _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
        if_params_as.setSucceeded(_result);      
    }
    else{
        _result.result = robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK;
        if_params_as.setAborted(_result);      
    } 
    //--------------------------------------------------------------
}
//-----------------------------------------------------------------------------
bool robot_if_params_action::turn_parameter_parse(std::string parameter)
{
    bool bRet = parameter_->split_condition(parameter) ;
    if(bRet){
        double _target = strtodouble(parameter_->v_params_[0],0);
        if(parameter_->v_params_.size()==2){    //-- rel_angle
            double x; double y; double th_deg ;
            bRet = getRobot_map_Pose(x, y, th_deg) ;     
            if(bRet){
                _target = th_deg +strtodouble(parameter_->v_params_[0],0);                         
            }
        }
        //--------------
        if(bRet)
            parameter_->set_turn_target_abs_angle(_target);             
    }

    return bRet ;     
}
//-----------------------------------------------------------------------------
void robot_if_params_action::do_worksheet_function(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal)
{
    int cmd_type = goal->cmd_type ;
    robot_scheduling_msgs::robot_interface_paramsResult _result;
    ROS_INFO("goal->set_data[0]==>%s",goal->set_data[0].c_str());
    if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::SET){
        if(goal->set_data[0]=="worksheet"){
            if(function_cmd_ptr == NULL)
            	function_cmd_ptr = std::make_shared<function_cmd_data>();  
            int ser_no = parameter_->get_worksheet_current_index();
            std::shared_ptr<ac_action_worksheet> _param = parameter_->get_ac_action_work_ser_no(ser_no);  
            function_cmd_ptr->cmd_id = _param->action_function_id ;
            function_cmd_ptr->cmd_params = _param->action_function_params ;
            function_cmd_ptr->cmd_acname = "" ;    
            std::string function_name = parameter_->get_sch_action_function(function_cmd_ptr->cmd_id);  
            std::shared_ptr<ac_action_function> _function = parameter_->get_ac_action_function(function_name);
            if(_function != NULL && !_function->function_ac_name.empty()){
                function_cmd_ptr->cmd_acname = _function->function_ac_name ;                  
            }

            parameter_->set_function_cmd_ptr(function_cmd_ptr);
            _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
            if_params_as.setSucceeded(_result);  
        }  
        else if(goal->set_data[0]=="funcdispatch"){            
            std::shared_ptr<function_cmd_data> cmd_data = parameter_->get_function_cmd_ptr();
            ROS_INFO("cmd_data->cmd_id==>%s",cmd_data->cmd_id.c_str());
            if(cmd_data->cmd_id == "0001"){
                parameter_->set_robot_wait_time(strtodouble(cmd_data->cmd_params,0.0));
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_WAIT;
                if_params_as.setSucceeded(_result);  
            }
            else if(cmd_data->cmd_id == "0002"){
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_TURN;
                if_params_as.setSucceeded(_result);  
            }
            else if(cmd_data->cmd_id == "0003"){
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_DOCK;
                if_params_as.setSucceeded(_result);  
            }
            else if(cmd_data->cmd_id == "0004"){
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::FUNCTION_UNDOCK;
                if_params_as.setSucceeded(_result);  
            }
            //ROS_INFO("_result.result==>%d",_result.result);
            //if_params_as.setSucceeded(_result);  
        }   
        /*else if(goal->set_data[0]=="waittime"){            
            std::shared_ptr<function_cmd_data> cmd_data = parameter_->get_function_cmd_ptr();
            ROS_INFO("cmd_data->cmd_id==>%s",cmd_data->cmd_id.c_str());
            if(cmd_data->cmd_id == "0001"){
                parameter_->set_robot_wait_time(strtodouble(cmd_data->cmd_params,0.0));
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
                if_params_as.setSucceeded(_result); 
            }
        } */  
        else if(goal->set_data[0]=="processturn"){
            if(parameter_->get_ws_abs_turn_set_pass()){ //- assign from other place ----
                parameter_->set_ws_abs_turn_set_pass(false);
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
                if_params_as.setSucceeded(_result);  
            }
            else{   //- assign from worksheet ----
                std::shared_ptr<function_cmd_data> cmd_data = parameter_->get_function_cmd_ptr();
                bool bRet = turn_parameter_parse(cmd_data->cmd_params) ;
                if(bRet){
                    parameter_->set_turn_action_name(cmd_data->cmd_acname) ;
                    _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
                    if_params_as.setSucceeded(_result);  
                }
                else{
                    _result.result = robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK; 
                    if_params_as.setAborted(_result);   
                }
            }
        }
        else if(goal->set_data[0]=="turnreltarget"){
            bool b_abs ; double _angle ;
            double _target = parameter_->get_turn_target_abs_angle();  
            double x; double y; double th_deg ;
            bool b_result = getRobot_map_Pose(x, y, th_deg) ; 
            if(b_result){
                double rel_angle = _target - th_deg ;
                rel_angle = parameter_->compensate_rel_angle(rel_angle) ;
                parameter_->set_turn_action_rel_angle(rel_angle);
                ROS_INFO("parameter_->set_turn_action_rel_angle(rel_angle)==>%f",rel_angle);
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;  
            }
            else{
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK;    
            }
            if_params_as.setSucceeded(_result);
        }
    }
    else if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::GET){
    }
    /*int cmd_type = goal->cmd_type ;
    //bool bResult = false ;
    robot_scheduling_msgs::robot_interface_paramsResult _result;
    if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::SET){
        if(function_cmd_ptr == NULL)
            	function_cmd_ptr = std::make_shared<function_cmd_data>();   

        if(goal->set_data[0]=="worksheet"){
            int ser_no = parameter_->get_worksheet_current_index();
            ROS_INFO("database ser_no:%d",ser_no);
            std::shared_ptr<ac_action_worksheet> _param = parameter_->get_ac_action_work_ser_no(ser_no);  
            function_cmd_ptr->cmd_id = _param->action_function_id ;
            function_cmd_ptr->cmd_params = _param->action_function_params ;

            _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
            if_params_as.setSucceeded(_result);    
        }
        else if(goal->set_data[0]=="functiontype"){
        }
        else{
            function_cmd_ptr->cmd_id = goal->set_data[0];      
            function_cmd_ptr->cmd_params = goal->set_data[1];    
        }
            
        std::string function_name = parameter_->get_sch_action_function(function_cmd_ptr->cmd_id);  
        std::shared_ptr<ac_action_function> _function = parameter_->get_ac_action_function(function_name);
        if(_function != NULL && !_function->function_ac_name.empty()){
            function_cmd_ptr->cmd_acname = _function->function_ac_name ;                  
        }
        else
            function_cmd_ptr->cmd_acname = "" ;    
        
        parameter_->set_function_cmd_ptr(function_cmd_ptr);
        //bResult = true ; 
    }
    else if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::GET){
        //bResult = true ; 
    }
    //---------------------------------------------------------------------        
    if(bResult){
        _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
        if_params_as.setSucceeded(_result);      
    }
    else{
        _result.result = robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK;
        if_params_as.setAborted(_result);      
    } */
}
//-----------------------------------------------------------------------------
/*void robot_if_params_action::do_status_code_function(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal)
{
    int cmd_type = goal->cmd_type ;
    int data_type = goal->dtat_type ;
    bool bResult = false ;
    robot_scheduling_msgs::robot_interface_paramsResult _result;
    if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::SET){
        int _type = strtoint(goal->set_data[0],-1);
        bResult = (_type >= 0) ;       

        if(bResult){
            std::string _code = goal->set_data[1] ; 
            ROS_INFO("SET ==> _type:%d,_code:%s",_type,_code.c_str());
            parameter_->set_if_status_code_type((status_code_type)_type,_code);            

            _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
            if_params_as.setSucceeded(_result);      
        }
        else{
            _result.result = robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK;
            if_params_as.setAborted(_result);      
        } 
    }  
    else if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::GET){
        status_code_type _type ; std::string _code ;
        parameter_->get_if_status_code_type(_type,_code) ;
        ROS_INFO("GET ==> _type:%d,_code:%s",_type,_code.c_str());
        bResult = ((int)_type > 0) ; 
        if(bResult){
            _result.result = (_type == status_code_pass) ? robot_scheduling_msgs::robot_interface_paramsResult::PASS :
                             ((_type == status_code_alarm) ? robot_scheduling_msgs::robot_interface_paramsResult::ALARM :
                                                             robot_scheduling_msgs::robot_interface_paramsResult::STATUS);
            if_params_as.setSucceeded(_result);      
        }
        else{
            _result.result = robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK;
            if_params_as.setAborted(_result);      
        } 
    }  
}*/
//-----------------------------------------------------------------------------
bool robot_if_params_action::getRobot_map_Pose(double &x, double &y, double &th_deg,std::string frame_name)
{
    if(trans_pose == nullptr)
        trans_pose = std::make_shared<tf2_ros::TransformListener>(tf2_buffer,nh_); 
    try{
        tf_geometry = tf2_buffer.lookupTransform("map" ,frame_name, ros::Time(0), ros::Duration(3));
        x = tf_geometry.transform.translation.x;
        y = tf_geometry.transform.translation.y;
        tf2::Quaternion q;
		fromMsg(tf_geometry.transform.rotation,q);
        th_deg = DEG(getYaw(q));  
        ROS_INFO("th_deg:%f",th_deg);
    }
    catch (tf2::TransformException &e) {
      ROS_ERROR("tf2::TransformException==>%s", e.what());
      return false;      
    }
    return true ;
}
//-----------------------------------------------------------------------------
void robot_if_params_action::do_parameters_function(const robot_scheduling_msgs::robot_interface_paramsGoalConstPtr& goal)
{
    int cmd_type = goal->cmd_type ;
    robot_scheduling_msgs::robot_interface_paramsResult _result;
    ROS_INFO("goal->set_data[0]==>%s",goal->set_data[0].c_str());
    //------------------
    if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::SET){
        if(goal->set_data[0]=="turn_abs_angle"){
            double abs_target = strtodouble(goal->set_data[1],0.0) ;
            bool bRel_flag = (goal->set_data[2]=="1") ;
            bool bStatus = true ;
            if(bRel_flag){
                double x; double y; double th_deg ;
                bStatus = getRobot_map_Pose(x, y, th_deg) ;
                if(bStatus){
                    abs_target = th_deg + abs_target ;                         
                }    
            }
            if(bStatus){
                parameter_->set_turn_target_abs_angle(abs_target); 
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;
                if_params_as.setSucceeded(_result);  
            }
            else{
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK;
                if_params_as.setAborted(_result);      
            }
        }
        else if(goal->set_data[0]=="turn_rel_angle"){
            bool b_abs ; double _angle ;
            double _target = parameter_->get_turn_target_abs_angle();  
            double x; double y; double th_deg ;
            bool b_result = getRobot_map_Pose(x, y, th_deg) ; 
            if(b_result){
                double rel_angle = _target - th_deg ;
                rel_angle = parameter_->compensate_rel_angle(rel_angle) ;
                parameter_->set_turn_action_rel_angle(rel_angle);
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;  
                if_params_as.setSucceeded(_result); 
            }
            else{
                _result.result = robot_scheduling_msgs::robot_interface_paramsResult::NOT_OK;  
                if_params_as.setAborted(_result);      
            }               
        }
    }
    //-------------------
    else if(cmd_type == robot_scheduling_msgs::robot_interface_paramsGoal::GET){
        if(goal->set_data[0]=="turn_abs_angle"){
            _result.result = robot_scheduling_msgs::robot_interface_paramsResult::OK;  
            if_params_as.setSucceeded(_result); 
        }
    }
}
//--------------------------------------------------------------------------------
