#include <public_actions/dock_to_action.h>
#include <thread>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
dock_to_action::dock_to_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) :
                        nh_(nh),//name_as_(name_as),name_rcvr_as_(name_rcvr_as),
                        dock_to_as_(nh_,name_as, boost::bind(&dock_to_action::dock_to_CB, this, _1), false),
                        dock_to_rcvr_as_(nh_,name_rcvr_as, boost::bind(&dock_to_action::dock_to_rcvr_CB, this, _1), false)
{   
    _Recovery_current_time = 0 ;
    //-------------------
    ROS_INFO("dock_to_as_.start()");
    dock_to_as_.start();
    ROS_INFO("dock_to_rcvr_as_.start()");
    dock_to_rcvr_as_.start();
}    
//-----------------------------------------------------------------------------
dock_to_action::~dock_to_action()
{
    
}
//-----------------------------------------------------------------------------
void dock_to_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
    ac_cancel_time = parameter->get_ac_cancel_time() ;
}
//-----------------------------------------------------------------------------
void dock_to_action::dock_to_CB(const robot_scheduling_msgs::dock_toGoalConstPtr& goal)
{
    if (dock_to_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("power_dock_to_as execution preempted.");
        dock_to_as_.setPreempted();
        return;
    }
    else{ 
        std::string dock_id = goal->dock_id ;   //ex:power dock  

        std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params(dock_id);  
        int out_of_times = check_params->out_of_times ;  
        int timed_out = check_params->timeout ;
        //int current_time = check_params->current_time ; 
        robot_scheduling_msgs::dock_toResult _result;
        if(_Recovery_current_time >= out_of_times){
            _result.result = robot_scheduling_msgs::dock_toResult::OUT_OF_TIMES ;
            _Recovery_current_time = 0 ;
            dock_to_as_.setAborted(_result);  
        }
        else{           
            std::string dock_pose_name ;
            std::shared_ptr<ac_locomotor_pos2d> pos2d = parameter_->get_ac_locomotor_params(goal->pre_dock_id);
            if(pos2d == NULL){
                _result.result = robot_scheduling_msgs::dock_toResult::NOT_PREDOCK_ID ;
                _Recovery_current_time = 0 ;
                dock_to_as_.setAborted(_result);      
            }
            else{
            //-- transfer goal's data to move_to_ac --
                std::shared_ptr<open_auto_dock_msgs::DockGoal> goal_ac_ptr = std::make_shared<open_auto_dock_msgs::DockGoal>();  
                goal_ac_ptr->dock_pose.header.frame_id = goal->frame_id ;
                //goal_ac_ptr->goal.header.seq = goal->goal.header.seq ;
                goal_ac_ptr->dock_pose.header.stamp = ros::Time::now(); ;//goal->goal.header.stamp ;
                goal_ac_ptr->dock_pose.pose.position.x = pos2d->pos_x; 
                goal_ac_ptr->dock_pose.pose.position.y = pos2d->pos_y; 
                goal_ac_ptr->dock_pose.pose.orientation.w = cos(pos2d->theta / 2);
                
                Period_timeout = timed_out ;
                actionlib::SimpleClientGoalState result_ac = dock_to_ac_handler(goal->dock_ac_name,goal_ac_ptr);
                if(bTimeoutFlag){   //-- timeout
                    _result.result = robot_scheduling_msgs::dock_toResult::TIMED_OUT  ;
                    _Recovery_current_time ++ ;
                    dock_to_as_.setAborted(_result);  
                }
                else{
                    if (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){
                        _result.result = robot_scheduling_msgs::dock_toResult::OK ;
                        _Recovery_current_time = 0 ;
                        dock_to_as_.setSucceeded(_result);    
                    } 
                    else{
                        _result.result = robot_scheduling_msgs::dock_toResult::NOT_OK ;
                        _Recovery_current_time ++ ;
                        dock_to_as_.setAborted(_result);        
                    }
                }
                //-- cancel all miossions
                cancel_allmission_ac();
            }
            //parameter_->set_ac_check_params(goal->dock_id,check_params);  
        }        
    }
}
//-----------------------------------------------------------------------------
/*bool dock_to_action::clear_costmap_ac()
{
    std_srvs::Empty srv;
    bool bRet = ros::service::call(move_to_rcvr_ac_name,srv);
    std::this_thread::sleep_for(std::chrono::milliseconds(1)); 
    return bRet ;
}*/
//-----------------------------------------------------------------------------
void dock_to_action::dock_to_rcvr_CB(const robot_scheduling_msgs::dock_to_recoveryGoalConstPtr& goal)
{
    if (dock_to_rcvr_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("dock_to_rcvr_as execution preempted.");
        dock_to_rcvr_as_.setPreempted();
        return;
    }
    else{ 
        //clear_costmap_ac() ;
        robot_scheduling_msgs::dock_to_recoveryResult _result;
        _result.result = robot_scheduling_msgs::dock_to_recoveryResult::OK ;
        dock_to_rcvr_as_.setSucceeded(_result);    
    }
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState dock_to_action::dock_to_ac_handler(std::string dock_to_ac_name,std::shared_ptr<open_auto_dock_msgs::DockGoal> goal)
{
    //-- launch ac_agv_moveto and wait _clearmap_servicename service ---  
    if(dock_to_ac_ == NULL){
        //dock_to_ac_name = goal->dock_ac_name;
        dock_to_ac_ = std::make_shared<dock_to_ac>(dock_to_ac_name, true);
        while(!dock_to_ac_->waitForServer(ros::Duration(5.0))){
            ROS_INFO("Waiting for action server(%s) to come up",dock_to_ac_name.c_str());
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
    dock_to_ac_->sendGoal(*goal,boost::bind(&dock_to_action::ac_doneCb, this, _1,_2),
                                boost::bind(&dock_to_action::ac_activeCb, this),
                                boost::bind(&dock_to_action::ac_feedbackCb, this, _1));
    while (!dock_to_ac_->waitForResult(ros::Duration(0.5))) {}
    //--------------
    return dock_to_ac_->getState() ;
}
//-----------------------------------------------------------------------------
void dock_to_action::ac_doneCb(const actionlib::SimpleClientGoalState& state,const open_auto_dock_msgs::DockResultConstPtr& result)
{
   
}
//-----------------------------------------------------------------------------
void dock_to_action::ac_activeCb()
{
}
//-----------------------------------------------------------------------------
void dock_to_action::ac_feedbackCb(const open_auto_dock_msgs::DockFeedbackConstPtr &fb)
{
    if(!fb->docked){
        bTimeoutFlag = ((ros::Time::now() - begin_Time).toSec() > Period_timeout);
        if(bTimeoutFlag){
            cancel_allmission_ac();
        }
    }
}
//-----------------------------------------------------------------------------
void dock_to_action::cancel_allmission_ac()
{
    dock_to_ac_->cancelAllGoals(); 
    ros::Duration(ac_cancel_time).sleep();     
}
//--------------------------------------------------------------------------------
