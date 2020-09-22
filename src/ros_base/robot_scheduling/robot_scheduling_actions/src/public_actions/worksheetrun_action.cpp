#include <public_actions/worksheetrun_action.h>
#include <ros_utility_tools/table_mongodbstore_client.h>
#include <ros_utility_tools/ros_tools.h>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
worksheetrun_action::worksheetrun_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) :
                        nh_(nh),//name_as_(name_as),name_rcvr_as_(name_rcvr_as),
                        worksheetrun_as_(nh_,name_as, boost::bind(&worksheetrun_action::worksheetrun_as_CB, this, _1), false)//,
                        //db_process_rcvr_as_(nh_,name_rcvr_as, boost::bind(&db_process_action::db_process_rcvr_CB, this, _1), false)
{ 
    bWorkNextItem_AutoTurn = true ;

    ROS_INFO("db_process_as_.start()");
    worksheetrun_as_.start();
}    
//-----------------------------------------------------------------------------
worksheetrun_action::~worksheetrun_action()
{
    
}
//-----------------------------------------------------------------------------
void worksheetrun_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
}
//-----------------------------------------------------------------------------
void worksheetrun_action::get_act_worksheet_item_vec()
{
    std::vector<int> items = parameter_->get_ac_action_ws_items_v();
    ROS_INFO("items size ==>%d ",items.size());
    act_worksheet_item_vec.clear();
    int iSize = items.size();
    for(int i=0;i<iSize;i++){
        act_worksheet_item_vec.push_back(items[i]);    
    }
    ROS_INFO("act_worksheet_item_vec size ==>%d ",act_worksheet_item_vec.size());
}
//-----------------------------------------------------------------------------
bool worksheetrun_action::WorkSheet_PreMoveCheck(int step)
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
}
//-----------------------------------------------------------------------------
bool worksheetrun_action::WorkSheet_PostTurnCheck(int step)
{    
    bool bRun = false ;
    if(parameter_->get_ws_post_turn_flag()){
        if(step >= (act_worksheet_item_vec.size()-1)){  
            ROS_INFO("step >= (act_worksheet_item_vec.size()-1)");
            bRun = false ;
        }
        else{
            ROS_INFO("============>");
            std::shared_ptr<ac_action_worksheet> _next_param = parameter_->get_ac_action_work_ser_no(act_worksheet_item_vec[step+1]);   
            std::shared_ptr<ac_action_worksheet> _param = parameter_->get_ac_action_work_ser_no(act_worksheet_item_vec[step]);   
            bRun = (_param->target_pose_id != _next_param->target_pose_id) && bWorkNextItem_AutoTurn;
            ROS_INFO("param->target_pose_id==>%s _next_param->target_pose_id==>%s",_param->target_pose_id.c_str(),_next_param->target_pose_id.c_str());
            //ROS_INFO("param->target_pose_id==>%s  _next_param->target_pose_id==>%s",param->target_pose_id.c_str(),_next_param->target_pose_id.c_str());
            if(bRun){
                //--- calculation tartget angle ---
                std::string ac_name = parameter_->get_sch_locomotor_pos2d(_param->target_pose_id);
                std::string ac_name_next = parameter_->get_sch_locomotor_pos2d(_next_param->target_pose_id);
                std::shared_ptr<ac_locomotor_pos2d> _pos2d =  parameter_->get_ac_locomotor_params(ac_name); 
                std::shared_ptr<ac_locomotor_pos2d> _pos2d_next =  parameter_->get_ac_locomotor_params(ac_name_next); 
                double det_x = _pos2d_next->pos_x - _pos2d->pos_x ;
                double det_y = _pos2d_next->pos_y - _pos2d->pos_y ;                 
                double _angle = std::atan2(det_y,det_x) ;
                ROS_INFO("det_x==>%f det_y==>%f _angle==>%f",det_x,det_y,_angle);
                double _target = DEG(_angle) ;  //PI --> Deg
                ROS_INFO("_target value==>%f",_target);
                //-- set abs_target to parameter ---
                parameter_->set_ws_abs_turn_set_pass(true);
                parameter_->set_turn_target_abs_angle(_target) ;
                bRun = true ;
            }
        }
    }
    return bRun ;    
}
//-----------------------------------------------------------------------------
void worksheetrun_action::worksheetrun_as_CB(const robot_scheduling_msgs::worksheetrunGoalConstPtr& goal)
{
    ROS_INFO("worksheetrun_as_CB");
    if (worksheetrun_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("worksheetrun_as_CB execution preempted.");
        worksheetrun_as_.setPreempted();
        return;
    }
    else{   
        std::shared_ptr<robot_scheduling_msgs::worksheetrunGoal> goal_ac_ptr = std::make_shared<robot_scheduling_msgs::worksheetrunGoal>();  
        int cmd_id = goal->cmd_id ;  
        std::string cmd_data = goal->cmd_data ; 
        ROS_INFO("cmd_id:%d , cmd_data:%s ",cmd_id,cmd_data.c_str()); 
        robot_scheduling_msgs::worksheetrunResult _result;
        if(cmd_id == robot_scheduling_msgs::worksheetrunGoal::WS_DETAILCHECK){
            bool bDetal_check = (worksheet_items > 0);            
            _result.result = bDetal_check ? robot_scheduling_msgs::worksheetrunResult::OK :
                             robot_scheduling_msgs::worksheetrunResult::NOT_OK ;
            worksheetrun_as_.setSucceeded(_result); 
            worksheet_current_item = 0 ;  
            ROS_INFO("<< worksheet_current_item: %d>>",worksheet_current_item); 
        }
        else if(cmd_id == robot_scheduling_msgs::worksheetrunGoal::WS_RUNCHECK){
            bool bWorkSheet_Start = parameter_->get_WorkSheetRun_Start();            
            _result.result = bWorkSheet_Start ? robot_scheduling_msgs::worksheetrunResult::OK :
                             robot_scheduling_msgs::worksheetrunResult::PASS ;
            worksheetrun_as_.setSucceeded(_result); 
            worksheet_current_item = 0 ;  
            ROS_INFO("<< WS_RUNCHECK status: %d>>",(int)bWorkSheet_Start); 
        }
        else if(cmd_id == robot_scheduling_msgs::worksheetrunGoal::WS_RUN){
            //get_act_worksheet_item_vec(); 
            worksheet_items = parameter_->get_ac_action_worksheet_size();
            ROS_INFO("<< WS_RUN::parameter_->get_ac_action_worksheet_size(): %d>>",worksheet_items); 
            if(worksheet_items > 0){
                _result.result = robot_scheduling_msgs::worksheetrunResult::OK ;
                worksheetrun_as_.setSucceeded(_result);       
            }
            else{
                _result.result = robot_scheduling_msgs::worksheetrunResult::NOT_OK ;
                worksheetrun_as_.setAborted(_result);      
            }
        }
        else if(cmd_id == robot_scheduling_msgs::worksheetrunGoal::WS_RUNFINISh){
            ROS_INFO("<< WS_RUNFINISh::worksheet_current_item:%d   worksheet_items:%d>>",worksheet_current_item,worksheet_items); 
            if(worksheet_current_item >= worksheet_items){
                parameter_->set_remote_status(remotestatus_none);
                _result.result = robot_scheduling_msgs::worksheetrunResult::OK ;
                worksheetrun_as_.setSucceeded(_result);  
            }
            else{
                parameter_->set_remote_status(remotestatus_worksheet);
                parameter_->set_worksheet_current_index(worksheet_current_item);
                _result.result = robot_scheduling_msgs::worksheetrunResult::NOT_FINISH ;
                worksheetrun_as_.setSucceeded(_result);     
            }            
        }
        else if(cmd_id == robot_scheduling_msgs::worksheetrunGoal::WS_RUNNEXT){
            worksheet_current_item++ ;
            _result.result = robot_scheduling_msgs::worksheetrunResult::OK ;
            worksheetrun_as_.setSucceeded(_result);     
        }
        else if(cmd_id == robot_scheduling_msgs::worksheetrunGoal::WS_ASSIGNINDEX){
            parameter_->set_worksheet_current_index(worksheet_current_item);
            _result.result = robot_scheduling_msgs::worksheetrunResult::OK ;
            worksheetrun_as_.setSucceeded(_result);         
        }
        else if(cmd_id == robot_scheduling_msgs::worksheetrunGoal::WS_POSERUNCHECK){
            //ROS_INFO("robot_scheduling_msgs::worksheetrunGoal::WS_POSERUNCHECK");
            get_act_worksheet_item_vec();  
            int ser_no = parameter_->get_worksheet_current_index();
            bool bRun = WorkSheet_PreMoveCheck(ser_no) ;  
            _result.result = bRun ? robot_scheduling_msgs::worksheetrunResult::OK :
                                    robot_scheduling_msgs::worksheetrunResult::PASS;
            worksheetrun_as_.setSucceeded(_result);     
        }
        else if(cmd_id == robot_scheduling_msgs::worksheetrunGoal::WS_POSTTURNCHECK){
            ROS_INFO("robot_scheduling_msgs::worksheetrunGoal::WS_POSTTURNCHECK");
            get_act_worksheet_item_vec();  
            int ser_no = parameter_->get_worksheet_current_index();
            bool bRun = WorkSheet_PostTurnCheck(ser_no) ;  
            _result.result = bRun ? robot_scheduling_msgs::worksheetrunResult::OK :
                                    robot_scheduling_msgs::worksheetrunResult::PASS;
            worksheetrun_as_.setSucceeded(_result);     
        }
    }
}
//--------------------------------------------------------------------------------
