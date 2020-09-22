#include <public_actions/undock_to_action.h>
#include <std_srvs/Empty.h>
#include <thread>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
undock_to_action::undock_to_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) :
                        nh_(nh),//name_as_(name_as),name_rcvr_as_(name_rcvr_as),
                        undock_to_as_(nh_,name_as, boost::bind(&undock_to_action::undock_to_CB, this, _1), false),
                        undock_to_rcvr_as_(nh_,name_rcvr_as, boost::bind(&undock_to_action::undock_to_rcvr_CB, this, _1), false)
{ 
    _Recovery_current_time = 0 ;
    //-------------------
    ROS_INFO("undock_to_as_.start()");
    undock_to_as_.start();
    ROS_INFO("undock_to_rcvr_as_.start()");
    undock_to_rcvr_as_.start();
}    
//-----------------------------------------------------------------------------
undock_to_action::~undock_to_action()
{
    
}
//-----------------------------------------------------------------------------
void undock_to_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
    ac_cancel_time = parameter->get_ac_cancel_time() ;
}
//-----------------------------------------------------------------------------
void undock_to_action::undock_to_CB(const robot_scheduling_msgs::undock_toGoalConstPtr& goal)
{
    ROS_INFO("undock_toGoalConstPtr");
    if (undock_to_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("power_dock_to_as execution preempted.");
        undock_to_as_.setPreempted();
        return;
    }
    else{ 
        int command = goal->command ;
        //int timed_out = goal->out_of_times ;  
        //int out_of_times = goal->out_of_times ;  
        //int current_time = goal->current_time ; 
        std::string undock_id = goal->undock_id ;   //ex:power dock  

        std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params(undock_id);  
        int out_of_times = (check_params == NULL) ? 5 : check_params->out_of_times ;  
        float timed_out = (check_params == NULL) ? 5 : check_params->timeout ;
        //int current_time = check_params->current_time ; 
        robot_scheduling_msgs::undock_toResult _result;
         ROS_INFO("_Recovery_current_time:%d out_of_times:%d",_Recovery_current_time,out_of_times);
        if(_Recovery_current_time >= out_of_times){
            _result.result = robot_scheduling_msgs::undock_toResult::OUT_OF_TIMES ;
            _Recovery_current_time = 0 ;
            undock_to_as_.setAborted(_result);  
        }
        else{           
            std::string dock_pose_name ;
            ROS_INFO("dock_pose_name");
            std::shared_ptr<ac_locomotor_pos2d> pos2d = parameter_->get_ac_locomotor_params(goal->pre_undock_id);
            if(pos2d == NULL){
                ROS_INFO("dock_pose_name -- pos2d");
                _result.result = robot_scheduling_msgs::undock_toResult::NOT_PREUNDOCK_ID ;
                _Recovery_current_time = 0 ;
                undock_to_as_.setAborted(_result);      
            }
            else{
                //-- get undock rotate type --
                bool bRotate = parameter_->get_ac_dock_rotate_params(undock_id); 
                std::shared_ptr<open_auto_dock_msgs::UndockGoal> goal_ac_ptr = std::make_shared<open_auto_dock_msgs::UndockGoal>();  
                goal_ac_ptr->rotate_in_place = bRotate ;
                
                Period_timeout = timed_out ;
                actionlib::SimpleClientGoalState result_ac = undock_to_ac_handler(goal->undock_ac_name,goal_ac_ptr);//(goal->undock_id,goal_ac_ptr);
                if(bTimeoutFlag){   //-- timeout
                    _result.result = robot_scheduling_msgs::undock_toResult::TIMED_OUT  ;
                    _Recovery_current_time ++ ;
                    undock_to_as_.setAborted(_result);  
                }
                else{
                    if (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){
                        _result.result = robot_scheduling_msgs::undock_toResult::OK ;
                        _Recovery_current_time = 0 ;
                        undock_to_as_.setSucceeded(_result);    
                    } 
                    else{
                        _result.result = robot_scheduling_msgs::undock_toResult::NOT_OK ;
                        _Recovery_current_time ++ ;
                        undock_to_as_.setAborted(_result);        
                    }
                }
                //-- cancel all miossions
                cancel_allmission_ac();
            }
            //parameter_->set_ac_check_params(goal->undock_id,check_params);  
        }        
    }
}
//-----------------------------------------------------------------------------
/*bool undock_to_action::clear_costmap_ac()
{
    std_srvs::Empty srv;
    bool bRet = ros::service::call(move_to_rcvr_ac_name,srv);
    std::this_thread::sleep_for(std::chrono::milliseconds(1)); 
    return bRet ;
}*/
//-----------------------------------------------------------------------------
void undock_to_action::undock_to_rcvr_CB(const robot_scheduling_msgs::undock_to_recoveryGoalConstPtr& goal)
{
    if (undock_to_rcvr_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("undock_to_rcvr_as execution preempted.");
        undock_to_rcvr_as_.setPreempted();
        return;
    }
    else{ 
        //clear_costmap_ac() ;  // recovery action 
        robot_scheduling_msgs::undock_to_recoveryResult _result;
        _result.result = robot_scheduling_msgs::undock_to_recoveryResult::OK ;
        undock_to_rcvr_as_.setSucceeded(_result);    
    }
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState undock_to_action::undock_to_ac_handler(std::string undock_to_ac_name,std::shared_ptr<open_auto_dock_msgs::UndockGoal> goal)
{
    //-- launch ac_agv_moveto and wait _clearmap_servicename service ---  
    if(undock_to_ac_ == NULL){
        //undock_to_ac_name = goal->  >undock_ac_name ;
        undock_to_ac_ = std::make_shared<undock_to_ac>(undock_to_ac_name, true);
        ROS_INFO("undock_to_ac_name: %s",undock_to_ac_name.c_str());
        while(!undock_to_ac_->waitForServer(ros::Duration(5.0))){
            ROS_INFO("Waiting for action server(%s) to come up",undock_to_ac_name.c_str());
        }    
    }
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
    undock_to_ac_->sendGoal(*goal,boost::bind(&undock_to_action::ac_doneCb, this, _1,_2),
                                  boost::bind(&undock_to_action::ac_activeCb, this),
                                  boost::bind(&undock_to_action::ac_feedbackCb, this, _1));
    while (!undock_to_ac_->waitForResult(ros::Duration(0.5))) {}
    //--------------
    return undock_to_ac_->getState() ;
}
//-----------------------------------------------------------------------------
void undock_to_action::ac_doneCb(const actionlib::SimpleClientGoalState& state,const open_auto_dock_msgs::UndockResultConstPtr& result)
{
   
}
//-----------------------------------------------------------------------------
void undock_to_action::ac_activeCb()
{
}
//-----------------------------------------------------------------------------
void undock_to_action::ac_feedbackCb(const open_auto_dock_msgs::UndockFeedbackConstPtr &fb)
{
    if(!fb->undocked){
        bTimeoutFlag = ((ros::Time::now() - begin_Time).toSec() > Period_timeout);
        if(bTimeoutFlag){
            cancel_allmission_ac();
        }
    }
}
//-----------------------------------------------------------------------------
void undock_to_action::cancel_allmission_ac()
{
    undock_to_ac_->cancelAllGoals(); 
    ros::Duration(ac_cancel_time).sleep();     
}
//--------------------------------------------------------------------------------
