#include <public_actions/pose_move_to_action.h>
#include <std_srvs/Empty.h>
#include <thread>
#include <tf2/utils.h>
#include "tf2_ros/transform_listener.h"
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
pose_move_to_action::pose_move_to_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as):
                        nh_(nh),
                        move_to_as(nh_,name_as, boost::bind(&pose_move_to_action::move_to_CB, this, _1), false),
                        move_to_rcvr_as(nh_,name_rcvr_as, boost::bind(&pose_move_to_action::move_to_rcvr_CB, this, _1), false)
{     
    _Recovery_move_to_current_time = 0 ;
    //-------------------
    ROS_INFO("move_to_as.start()");
    move_to_as.start();
    ROS_INFO("move_to_rcvr_as.start()");
    move_to_rcvr_as.start();
    //--- robot stop service declare ----
    srvsev_robot_stop =  nh_.advertiseService("move_stop_cmdsrv",&pose_move_to_action::srv_Eval_move_stop,this);
    cltsev_robot_stop = nh_.serviceClient<std_srvs::Trigger>("move_stop_cmdsrv");
    pub_move_stop = nh.advertise<std_msgs::Empty>("/locomotor_stop", 10);
}    
//-----------------------------------------------------------------------------
pose_move_to_action::~pose_move_to_action()
{
    
}
//-----------------------------------------------------------------------------
void pose_move_to_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
    ac_cancel_time = parameter->get_ac_cancel_time() ;
    ac_clearmap_time = parameter->get_ac_clearmap_time() ;
}
//-----------------------------------------------------------------------------
void pose_move_to_action::move_to_CB(const robot_scheduling_msgs::pose_move_toGoalConstPtr& goal)
{
    ROS_INFO("move_to_CB");
    if (move_to_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("pose_move_to_as execution preempted.");
        move_to_as.setPreempted();
        return;
    }
    else{ 
        int command = goal->command ;
        ROS_INFO("command==>%d",command);
        //-- Add Move Stop condition check -----
        if(command == robot_scheduling_msgs::pose_move_toGoal::CMD_STOP){
            run_move_stop_function();
            return ;
        }
        ROS_INFO("command==>%d",command);
        //--------------------------------------        
        std::string pose_id = goal->pose_id ;          
        ROS_INFO(pose_id.c_str());
        std::string db_run_type = pose_id ;   
        //---------------
        if((db_run_type == "car_database") || (db_run_type == "car_database_test")){
            int ser_no = parameter_->get_worksheet_current_index();
            ROS_INFO("database ser_no:%d",ser_no);
            std::shared_ptr<ac_action_worksheet> _param = parameter_->get_ac_action_work_ser_no(ser_no);//(ser_no);
            ROS_INFO("database _param:%s",_param->target_pose_id.c_str());
            pose_id = parameter_->get_sch_locomotor_pos2d(_param->target_pose_id);  
            ROS_INFO("database pose_id:%s",pose_id.c_str());
        }
        else if(db_run_type == "assign_data" || db_run_type == "Action"){
            pose_id = parameter_->get_if_target_pose_id();   
            ROS_INFO("pose_id:%s",pose_id.c_str());  
            std::shared_ptr<ac_locomotor_pos2d> pos2d = parameter_->get_ac_locomotor_params(pose_id);
            ROS_INFO("pos2d->pos_x:%f, pos2d->pos_y:%f ,pos2d->theta:%f ,pos2d->rotate_flag:%d",pos2d->pos_x,pos2d->pos_y,pos2d->theta,pos2d->rotate_flag); 
        }
        //-----------------
        std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params(pose_id);  
        int out_of_times , timed_out ;
        if(check_params == nullptr){
            out_of_times = 5 ;
            timed_out = 50000;  
        }
        else{
            out_of_times = check_params->out_of_times ;  
            timed_out = check_params->timeout ;
        }
        ROS_INFO("_Recovery_move_to_current_time : %d,timed_out:%d",_Recovery_move_to_current_time,timed_out);
        robot_scheduling_msgs::pose_move_toResult _result;
        if(_Recovery_move_to_current_time >= out_of_times){
            _result.result = robot_scheduling_msgs::pose_move_toResult::OUT_OF_TIMES ;
            _Recovery_move_to_current_time = 0 ;
            move_to_as.setAborted(_result);  
        }
        else{  
            ROS_INFO("get_ac_locomotor_params pose_id : %s",pose_id.c_str());
            std::shared_ptr<ac_locomotor_pos2d> pos2d = parameter_->get_ac_locomotor_params(pose_id);
            if(pos2d == NULL){
                _result.result = robot_scheduling_msgs::pose_move_toResult::NOT_POSE_ID ;
                _Recovery_move_to_current_time = 0 ;
                move_to_as.setAborted(_result);      
            }
            else{
                //-- transfer goal's data to move_to_ac --
                std::shared_ptr<locomotor_msgs::NavigateToPoseGoal> goal_ac_ptr = std::make_shared<locomotor_msgs::NavigateToPoseGoal>();  
                goal_ac_ptr->goal.header.frame_id = goal->frame_id ;
                //goal_ac_ptr->goal.header.seq = goal->goal.header.seq ;
                goal_ac_ptr->goal.header.stamp = ros::Time::now(); ;//goal->goal.header.stamp ;
                goal_ac_ptr->goal.pose.x = pos2d->pos_x;//goal->goal.pose.x ; 
                goal_ac_ptr->goal.pose.y = pos2d->pos_y;;//goal->goal.pose.y ;
                goal_ac_ptr->goal.pose.theta = pos2d->theta; //goal->goal.pose.theta ;
                //--------------------------------
                if(db_run_type == "car_database_test"){
                    ROS_INFO("car_database_test ==>  pose_id: %s,pos2d->pos_x:%f ,pos2d->pos_y:%f ,pos2d->theta:%f ",pose_id.c_str(),pos2d->pos_x,pos2d->pos_y,pos2d->theta);
                    _result.result = robot_scheduling_msgs::pose_move_toResult::OK ;
                    _Recovery_move_to_current_time = 0 ;
                    move_to_as.setSucceeded(_result); 
                    ROS_INFO("car_database_test end");    
                    //return ;
                }
                else{
                    //---------------------------------
                    Period_timeout = timed_out ;
                    actionlib::SimpleClientGoalState result_ac = move_to_ac_handler(goal->move_ac_name,goal_ac_ptr,goal->command);
                    if(bTimeoutFlag){   //-- timeout
                        _result.result = robot_scheduling_msgs::pose_move_toResult::TIMED_OUT  ;
                        _Recovery_move_to_current_time ++ ;
                        move_to_as.setAborted(_result);  
                    }
                    else{
                        if (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){                          
                            _result.result = robot_scheduling_msgs::pose_move_toResult::OK ;
                            _Recovery_move_to_current_time = 0 ;
                            move_to_as.setSucceeded(_result);    
                            ROS_INFO("setSucceeded");
                        } 
                        else{
                            _result.result = robot_scheduling_msgs::pose_move_toResult::NOT_OK ;
                            _Recovery_move_to_current_time ++ ;
                            move_to_as.setAborted(_result); 
                            ROS_INFO("setAborted");       
                        }
                    }
                    //-- cancel all miossions
                    cancel_allmission_ac();
                }
            }
        }        
    }
}
//-----------------------------------------------------------------------------
bool pose_move_to_action::clear_costmap_ac()
{
    std_srvs::Empty srv;
    bool bRet = ros::service::call(move_to_rcvr_ac_name,srv);
    std::this_thread::sleep_for(std::chrono::milliseconds(1)); 
    return bRet ;
}
//-----------------------------------------------------------------------------
void pose_move_to_action::move_to_rcvr_CB(const robot_scheduling_msgs::pose_move_to_recoveryGoalConstPtr& goal)
{
    if (move_to_rcvr_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("pose_move_to_rcvr_as execution preempted.");
        move_to_rcvr_as.setPreempted();
        return;
    }
    else{ 
        move_to_rcvr_ac_name = goal->rcvr_ac_name ;
        clear_costmap_ac() ;
        robot_scheduling_msgs::pose_move_to_recoveryResult _result;
        _result.result = robot_scheduling_msgs::pose_move_to_recoveryResult::OK ;
        move_to_rcvr_as.setSucceeded(_result);    
    }
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState pose_move_to_action::move_to_ac_handler(std::string move_to_ac_name,std::shared_ptr<locomotor_msgs::NavigateToPoseGoal> goal,int cmd_id)
{
    //-- launch ac_agv_moveto and wait _clearmap_servicename service ---  
    if(move_to_ac == NULL){
        //move_to_ac_name = parameter_->get_move_to_ac_name();
        move_to_ac = std::make_shared<locomotor_ac>(move_to_ac_name, true);
        
    }
    while(!move_to_ac->waitForServer(ros::Duration(5.0))){
        ROS_INFO("Waiting for action server(%s) to come up",move_to_ac_name.c_str());
    }    
    //----run interrupt --------
    /*if(cmd_id == robot_scheduling_msgs::pose_move_toGoal::CMD_INTERRUPE){
        move_to_ac->cancelAllGoals();  
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
    begin_Time = ros::Time::now() ;
    bTimeoutFlag = false ;
    move_to_ac->sendGoal(*goal,boost::bind(&pose_move_to_action::ac_doneCb, this, _1,_2),
                                boost::bind(&pose_move_to_action::ac_activeCb, this),
                                boost::bind(&pose_move_to_action::ac_feedbackCb, this, _1));
    bool bInterrupe = false ;
    while (!move_to_ac->waitForResult(ros::Duration(0.5))) {
        if(parameter_->get_interrupt_move()){
            bInterrupe = true ;
            break;
        }
    }
    //ROS_INFO("move_to_ac waitForResult");
    if(bInterrupe){
        move_to_ac->cancelAllGoals();  
        parameter_->reset_interrupt_move();
        return actionlib::SimpleClientGoalState::SUCCEEDED ;      
    }
    else{
    //--------------
        return move_to_ac->getState() ;
    }
}
//-----------------------------------------------------------------------------
void pose_move_to_action::ac_doneCb(const actionlib::SimpleClientGoalState& state,const locomotor_msgs::NavigateToPoseResultConstPtr& result)
{
   
}
//-----------------------------------------------------------------------------
void pose_move_to_action::ac_activeCb()
{
}
//-----------------------------------------------------------------------------
void pose_move_to_action::ac_feedbackCb(const locomotor_msgs::NavigateToPoseFeedbackConstPtr &fb)
{
    if(fb->estimated_distance_remaining > 0.0){
        bTimeoutFlag = ((ros::Time::now() - begin_Time).toSec() > Period_timeout);
        if(bTimeoutFlag){
            cancel_allmission_ac();
        }
    }
}
//-----------------------------------------------------------------------------
void pose_move_to_action::cancel_allmission_ac()
{
    move_to_ac->cancelAllGoals(); 
    ros::Duration(ac_cancel_time).sleep();     
}
//-----------------------------------------------------------------------------
bool pose_move_to_action::srv_Eval_move_stop(std_srvs::Trigger::Request &req,std_srvs::Trigger::Response &res)
{
    std_msgs::Empty _cmd ;
    pub_move_stop.publish(_cmd);

    res.success = true;
	return true;
}
//-----------------------------------------------------------------------------
bool pose_move_to_action::callsrv_move_stop()
{
    std_srvs::Trigger empty;
    //ros::service::waitForService("move_stop_cmdsrv");
    return cltsev_robot_stop.call(empty);    
}
//-----------------------------------------------------------------------------
void pose_move_to_action::run_move_stop_function()
{
    callsrv_move_stop();

    robot_scheduling_msgs::pose_move_toResult _result;
    _result.result = robot_scheduling_msgs::pose_move_toResult::OK ;
    move_to_as.setSucceeded(_result);  
}
//--------------------------------------------------------------------------------
