#include <public_actions/pose_recognize_action.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
pose_recognize_action::pose_recognize_action(ros::NodeHandle nh,std::string name_as,std::string name_rcvr_as) :
                        nh_(nh),//name_as_(name_as),name_rcvr_as_(name_rcvr_as),
                        recognize_as(nh_,name_as, boost::bind(&pose_recognize_action::recognize_CB, this, _1), false),
                        recognize_rcvr_as(nh_,name_rcvr_as, boost::bind(&pose_recognize_action::recognize_rcvr_CB, this, _1), false)
{ 
    _Recovery_current_time = 0;    
    init_pose_pub_ = nh_.advertise<geometry_msgs::PoseWithCovarianceStamped>("initialpose",1);
    ROS_INFO("recognize_as.start()");
    recognize_as.start();
    ROS_INFO("recognize_rcvr_as.start()");
    recognize_rcvr_as.start();
}    
//-----------------------------------------------------------------------------
pose_recognize_action::~pose_recognize_action()
{
    
}
//-----------------------------------------------------------------------------
void pose_recognize_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
}
//-----------------------------------------------------------------------------
void pose_recognize_action::recognize_CB(const robot_scheduling_msgs::pose_recognizeGoalConstPtr& goal)
{
    ROS_INFO("recognize_CB");
    if (recognize_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("run_state_as execution preempted.");
        recognize_as.setPreempted();
        return;
    }
    else{        
        std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params("pose_recognize");  
        int command = goal->command ;
        int out_of_times = check_params->out_of_times ;  
        int timed_out = check_params->timeout ;
        //int current_time = check_params->current_time ; 
        
        robot_scheduling_msgs::pose_recognizeResult _result;
        //---- simulation ----------------
        if(parameter_->get_b_simulation()){
            ROS_INFO("b_simulation - recognize_CB");
            _result.result = robot_scheduling_msgs::pose_recognizeResult::OK ;
            recognize_as.setSucceeded(_result);    
            return ;
        }
        //-----------------------------------
        if(_Recovery_current_time >= out_of_times){
            _result.result = robot_scheduling_msgs::pose_recognizeResult::OUT_OF_TIMES ;
            _Recovery_current_time = 0 ;
            recognize_as.setAborted(_result);  
        }
        else{
            //-- transfer goal's data to move_to_ac --
            double _pos1_x , _pos1_y ,_pos2_x , _pos2_y ,_pos3_x , _pos3_y ;
            parameter_->get_ac_setlocation_params_init_set(_pos1_x , _pos1_y , _pos2_x , _pos2_y ,_pos3_x , _pos3_y);
            std::shared_ptr<reset_location::TrilaterationGoal> goal_ac_ptr = std::make_shared<reset_location::TrilaterationGoal>();  
            goal_ac_ptr->tag1_x = _pos1_x ;
            goal_ac_ptr->tag1_y = _pos1_y ;
            goal_ac_ptr->tag2_x = _pos2_x ;
            goal_ac_ptr->tag2_y = _pos2_y ;
            goal_ac_ptr->tag3_x = _pos3_x ;
            goal_ac_ptr->tag3_y = _pos3_y ;
            Period_timeout = timed_out ;
            actionlib::SimpleClientGoalState result_ac = reset_location_ac_handler(goal->recognize_ac_name,goal_ac_ptr);
            if (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){                          
                _result.result = robot_scheduling_msgs::pose_recognizeResult::OK ;
                
                _result.pose_result.header.stamp = ros::Time::now();
                _result.pose_result.header.frame_id = "map";
                _result.pose_result.pose.pose.position.x = ac_result_pos_x;
                _result.pose_result.pose.pose.position.y = ac_result_pos_y;
                _result.pose_result.pose.covariance[0] = 0.25;
                _result.pose_result.pose.covariance[6 * 1 + 1] = 0.25;
                _result.pose_result.pose.covariance[6 * 5 + 5] = 0.06853891945200942;
                _result.pose_result.pose.pose.orientation.z = sin(ac_result_pos_theta/2);
                _result.pose_result.pose.pose.orientation.w = cos(ac_result_pos_theta/2);
                init_pose_pub_.publish(_result.pose_result);
                ROS_INFO("init_pose Setting to :(%f,%f,%f)",ac_result_pos_x,ac_result_pos_y,ac_result_pos_theta);

                _Recovery_current_time = 0 ;
                recognize_as.setSucceeded(_result);    
            } 
            else{
                _result.result = robot_scheduling_msgs::pose_recognizeResult::NOT_OK ;
                _Recovery_current_time ++ ;
                recognize_as.setAborted(_result);        
            }
        }        
    }
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState pose_recognize_action::reset_location_ac_handler(std::string reset_location_ac_name,std::shared_ptr<reset_location::TrilaterationGoal> goal)
{
    //-- launch ac_agv_moveto and wait _clearmap_servicename service ---  
    if(reset_location_ac == NULL){
        //move_to_ac_name = parameter_->get_move_to_ac_name();
        reset_location_ac = std::make_shared<reset_locationClient>(reset_location_ac_name, true);
        while(!reset_location_ac->waitForServer(ros::Duration(5.0))){
            ROS_INFO("Waiting for action server(%s) to come up",reset_location_ac_name.c_str());
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
    reset_location_ac->sendGoal(*goal,boost::bind(&pose_recognize_action::ac_doneCb, this, _1,_2),
                                      boost::bind(&pose_recognize_action::ac_activeCb, this),
                                      boost::bind(&pose_recognize_action::ac_feedbackCb, this, _1));
    while (!reset_location_ac->waitForResult(ros::Duration(0.5))) {}

    actionlib::SimpleClientGoalState result_ = reset_location_ac->getState() ; 
    //--------------
    return reset_location_ac->getState() ;
}
//-----------------------------------------------------------------------------
void pose_recognize_action::ac_doneCb(const actionlib::SimpleClientGoalState& state,const reset_location::TrilaterationResultConstPtr& result)
{
    ac_result_error_code = result->error_code ;
    ac_result_pos_x = result->x ; 
    ac_result_pos_y = result->y ; 
    ac_result_pos_theta = result->y ;
}
//-----------------------------------------------------------------------------
void pose_recognize_action::ac_activeCb()
{
}
//-----------------------------------------------------------------------------
void pose_recognize_action::ac_feedbackCb(const reset_location::TrilaterationFeedbackConstPtr &fb)
{
    /*if(fb->estimated_distance_remaining > 0.0){
        bTimeoutFlag = ((ros::Time::now() - begin_Time).toSec() > Period_timeout);
        if(bTimeoutFlag){
            cancel_allmission_ac();
        }
    }*/
}
//-----------------------------------------------------------------------------
void pose_recognize_action::recognize_rcvr_CB(const robot_scheduling_msgs::pose_recognize_recoveryGoalConstPtr& goal)
{    
    if (recognize_rcvr_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("run_state_as execution preempted.");
        recognize_rcvr_as.setPreempted();
        return;
    }
    else{        
        robot_scheduling_msgs::pose_recognize_recoveryResult _result;
        //--- pose recognize recovery ----
        if(ac_result_error_code < 0){
            if(ac_result_error_code == -1){         // tag1_group_points_ < tag1_group_points_threshold
                ros::Duration(5).sleep();   // sleep 5 secs 

                _result.result = robot_scheduling_msgs::pose_recognize_recoveryResult::OK ;
                recognize_rcvr_as.setSucceeded(_result);  
            }
            else if(ac_result_error_code == -2){    // groups_count < 3
                std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal_ac_ptr = std::make_shared<robot_scheduling_msgs::self_turn_toGoal>();  
                goal_ac_ptr->command_type = robot_scheduling_msgs::self_turn_toGoal::TURN_REL ;
                goal_ac_ptr->turn_id = "turn";
                goal_ac_ptr->pid_id = "turn";
                goal_ac_ptr->target_angle = 5 ; 
                actionlib::SimpleClientGoalState result_ac = rel_turn_ac_handler(goal->turn_ac_name,goal_ac_ptr);
                if (result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){                          
                    _result.result = robot_scheduling_msgs::pose_recognize_recoveryResult::OK ;
                    recognize_rcvr_as.setSucceeded(_result);  
                }
                else{
                    _result.result = robot_scheduling_msgs::pose_recognize_recoveryResult::NOT_OK ;
                    recognize_rcvr_as.setAborted(_result);      
                }
            }
        }
        else{
            _result.result = robot_scheduling_msgs::pose_recognize_recoveryResult::OK ;
            recognize_rcvr_as.setSucceeded(_result);  
        }        
    }
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState pose_recognize_action::rel_turn_ac_handler(std::string rel_turn_to_ac_name,std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal)
{
    if(rel_turn_to_ac == NULL){
        rel_turn_to_ac = std::make_shared<rel_turn_toClient>(rel_turn_to_ac_name, true);
        while(!rel_turn_to_ac->waitForServer(ros::Duration(5.0))){
            ROS_INFO("Waiting for action server(%s) to come up",rel_turn_to_ac_name.c_str());
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
    rel_turn_to_ac->sendGoal(*goal,boost::bind(&pose_recognize_action::rel_turn_ac_doneCb, this, _1,_2),
                                   boost::bind(&pose_recognize_action::rel_turn_ac_activeCb, this),
                                   boost::bind(&pose_recognize_action::rel_turn_ac_feedbackCb, this, _1));
    while (!rel_turn_to_ac->waitForResult(ros::Duration(0.5))) {}

    actionlib::SimpleClientGoalState result_ = rel_turn_to_ac->getState() ; 
    //--------------
    return rel_turn_to_ac->getState() ;
}
//-----------------------------------------------------------------------------
void pose_recognize_action::rel_turn_ac_doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::self_turn_toResultConstPtr& result)
{
    /*ac_result_error_code = result->error_code ;
    ac_result_pos_x = result->x ; 
    ac_result_pos_y = result->y ; 
    ac_result_pos_theta = result->y ;*/
}
//-----------------------------------------------------------------------------
void pose_recognize_action::rel_turn_ac_activeCb()
{
}
//-----------------------------------------------------------------------------
void pose_recognize_action::rel_turn_ac_feedbackCb(const robot_scheduling_msgs::self_turn_toFeedbackConstPtr &fb)
{
    /*if(fb->estimated_distance_remaining > 0.0){
        bTimeoutFlag = ((ros::Time::now() - begin_Time).toSec() > Period_timeout);
        if(bTimeoutFlag){
            cancel_allmission_ac();
        }
    }*/
}
//--------------------------------------------------------------------------------
