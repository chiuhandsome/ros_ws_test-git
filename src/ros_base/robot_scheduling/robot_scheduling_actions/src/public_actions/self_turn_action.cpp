#include <public_actions/self_turn_action.h>
//---------------------------------------------------------------------------------
//*********************************************************************************
//** robot_turn_action                                                           **
//*********************************************************************************
//---------------------------------------------------------------------------------
robot_turn_action::robot_turn_action(ros::NodeHandle nh,std::string robot_turn_as_name,std::string name_rcvr_as) :
                        nh_(nh),//turn_to_name_as_(turn_to_name_as),
                        robot_turn_as_(nh_,robot_turn_as_name, boost::bind(&robot_turn_action::turn_to_CB, this, _1), false),
                        turn_rcvr_as_(nh_,name_rcvr_as, boost::bind(&robot_turn_action::robot_turn_rcvr_CB, this, _1), false)

{ 
    _Recovery_current_time = 0 ;
    //-------------------
    ROS_INFO("robot_turn_as_.start()");
    robot_turn_as_.start();
    ROS_INFO("robot_turn_rcvr_as.start()");
    turn_rcvr_as_.start();
}    
//-----------------------------------------------------------------------------
robot_turn_action::~robot_turn_action()
{
        
}
//-----------------------------------------------------------------------------
void robot_turn_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;  
}
//-----------------------------------------------------------------------------
double robot_turn_action::get_real_turn_target(double turn_target)
{
    double d_Ret = turn_target ;
    if(fabs(turn_target)>360.0){
        d_Ret = fmod(turn_target,360.0);
    }
    return d_Ret ;
}
//-----------------------------------------------------------------------------
void robot_turn_action::turn_to_CB(const robot_scheduling_msgs::self_turn_toGoalConstPtr& goal)
{
    ROS_INFO("turn_to_CB");
    if (robot_turn_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("robot_turn_as_ execution preempted.");
        robot_turn_as_.setPreempted();
        return;
    }
    else{
        robot_scheduling_msgs::self_turn_toResult _result;  
        std::shared_ptr<pid_ctrl_params> pid_ctrl = parameter_->get_ac_pid_ctrl_params(goal->pid_id);
        if(pid_ctrl == NULL){
            _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_PID_ID ;
            _Recovery_current_time = 0 ;
            robot_turn_as_.setAborted(_result);      
        }
        else{
            std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params(goal->turn_id);  
            if(check_params == NULL){
                _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_PARAMSCHK_ID ;
                _Recovery_current_time = 0 ;
                robot_turn_as_.setAborted(_result);          
            }  
            else{
                if(_Recovery_current_time >= check_params->out_of_times){
                    _result.result = robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES ;
                    _Recovery_current_time = 0 ;
                    robot_turn_as_.setAborted(_result);  
                }
                else{
                    std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal_ac_ptr = std::make_shared<robot_scheduling_msgs::self_turn_toGoal>(); 
                    //ROS_INFO("goal->command_type==>%s",goal->command_type.c_str()) ;
                    if(goal->command_type == "Action"){
                        goal_ac_ptr->command_id = robot_scheduling_msgs::self_turn_toGoal::TURN_REL ;  
                        goal_ac_ptr->turn_id = goal->turn_id ;
                        goal_ac_ptr->pid_id = goal->pid_id ;
                        goal_ac_ptr->target_angle = (int)get_real_turn_target(parameter_->get_turn_action_rel_angle());//goal->target_angle ;
                        goal_ac_ptr->time_out = check_params->timeout ;
                        goal_ac_ptr->turn_ac_name = parameter_->get_turn_action_name();//goal->turn_ac_name ;   
                        //ROS_INFO("goal_ac_ptr->turn_id==>%s,goal_ac_ptr->pid_id==>%s",goal_ac_ptr->turn_id.c_str(),goal_ac_ptr->pid_id.c_str()) ;
                        //ROS_INFO("goal_ac_ptr->target_angle==>%f,goal_ac_ptr->time_out==>%f",goal_ac_ptr->target_angle,goal_ac_ptr->time_out) ;
                        //ROS_INFO("goal_ac_ptr->turn_ac_name==>%s",goal_ac_ptr->turn_ac_name.c_str()) ;
                    }
                    else{
                        goal_ac_ptr->command_id = goal->command_id ;  
                        goal_ac_ptr->turn_id = goal->turn_id ;
                        goal_ac_ptr->pid_id = goal->pid_id ;
                        goal_ac_ptr->target_angle = get_real_turn_target(goal->target_angle) ;
                        goal_ac_ptr->time_out = check_params->timeout ;
                        goal_ac_ptr->turn_ac_name = goal->turn_ac_name ;
                    }
                    actionlib::SimpleClientGoalState result_ac = robot_turn_ac_handler(goal->turn_ac_name,goal_ac_ptr); 
                    robot_scheduling_msgs::self_turn_toResultConstPtr ac_result = robot_turn_action_client_->get_robot_turn_ac_result() ;  
                    if(result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){
                        if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::OK){
                            _result.result = robot_scheduling_msgs::self_turn_toResult::OK ;
                            _Recovery_current_time = 0 ;
                            robot_turn_as_.setSucceeded(_result);        
                        }
                    } 
                    else{
                        if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_OK){
                            _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_OK ;
                            _Recovery_current_time++ ;
                            robot_turn_as_.setAborted(_result);        
                        }   
                        else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::TIMED_OUT){
                            _result.result = robot_scheduling_msgs::self_turn_toResult::TIMED_OUT ;
                            _Recovery_current_time++ ;
                            robot_turn_as_.setAborted(_result);        
                        }   
                        else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES){
                            _result.result = robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES ;
                            _Recovery_current_time = 0 ;
                            robot_turn_as_.setAborted(_result);        
                        }   
                        /*else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_PID_ID){
                            _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_PID_ID ;
                            _Recovery_current_time = 0 ;
                            robot_turn_as_.setAborted(_result);        
                        } 
                        else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_POSE_ID){
                            _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_POSE_ID ;
                            _Recovery_current_time = 0 ;
                            robot_turn_as_.setAborted(_result);        
                        }*/ 
                        else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP){
                            _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP ;
                            _Recovery_current_time = 0 ;
                            robot_turn_as_.setAborted(_result);        
                        } 
                    }  
                }
            }  
        }
        /*//ROS_INFO("turn_to_CB123");
        //ROS_INFO("goal->turn_id:%s",goal->turn_id.c_str());
        //std::shared_ptr<ac_check_params> check_params = parameter_->get_ac_check_params(goal->turn_id);  
        //int out_of_times = (check_params == NULL) ? 5 :check_params->out_of_times ;  
        //double timed_out = (check_params == NULL) ? 5 :check_params->timeout ;
        //ROS_INFO("turn_to_CB456");
        int out_of_times =  5  ;  
        double timed_out =  500000  ;
        robot_scheduling_msgs::self_turn_toResult _result;      
        //ROS_INFO("_Recovery_current_time:%d out_of_times:%d",_Recovery_current_time,out_of_times);  
        if(_Recovery_current_time >= out_of_times){
            _result.result = robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES ;
            _Recovery_current_time = 0 ;
            robot_turn_as_.setAborted(_result);  
        }
        else{
            //std::string dock_pose_name ;
            std::shared_ptr<pid_ctrl_params> pid_ctrl = std::make_shared<pid_ctrl_params>();
            pid_ctrl->target = 0 ;
            pid_ctrl->tolerance = 0.2 ;
            pid_ctrl->min_bound = 0 ;
            pid_ctrl->max_bound = 0 ;
            pid_ctrl->d_KP = 0 ;
            pid_ctrl->d_KI = 0 ;
            pid_ctrl->b_compensation = true ;//false ;
            if(pid_ctrl == NULL){
                _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_PID_ID ;
                _Recovery_current_time = 0 ;
                robot_turn_as_.setAborted(_result);      
            }
            else{                
                std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal_ac_ptr = std::make_shared<robot_scheduling_msgs::self_turn_toGoal>(); 
                goal_ac_ptr->command_id = goal->command_id ;  
                goal_ac_ptr->turn_id = goal->turn_id ;
                goal_ac_ptr->pid_id = goal->pid_id ;
                goal_ac_ptr->target_angle = goal->target_angle ;
                goal_ac_ptr->time_out = timed_out ;
                goal_ac_ptr->turn_ac_name = goal->turn_ac_name ;
                actionlib::SimpleClientGoalState result_ac = robot_turn_ac_handler(goal->turn_ac_name,goal_ac_ptr); 
                robot_scheduling_msgs::self_turn_toResultConstPtr ac_result = robot_turn_action_client_->get_robot_turn_ac_result() ;              
                if(result_ac == actionlib::SimpleClientGoalState::SUCCEEDED){
                    if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::OK){
                        _result.result = robot_scheduling_msgs::self_turn_toResult::OK ;
                        _Recovery_current_time = 0 ;
                        robot_turn_as_.setSucceeded(_result);        
                    }
                }
                else{
                    if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_OK){
                        _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_OK ;
                        _Recovery_current_time++ ;
                        robot_turn_as_.setAborted(_result);        
                    }   
                    else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::TIMED_OUT){
                        _result.result = robot_scheduling_msgs::self_turn_toResult::TIMED_OUT ;
                        _Recovery_current_time++ ;
                        robot_turn_as_.setAborted(_result);        
                    }   
                    else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES){
                        _result.result = robot_scheduling_msgs::self_turn_toResult::OUT_OF_TIMES ;
                        _Recovery_current_time = 0 ;
                        robot_turn_as_.setAborted(_result);        
                    }   
                    else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_PID_ID){
                        _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_PID_ID ;
                        _Recovery_current_time = 0 ;
                        robot_turn_as_.setAborted(_result);        
                    } 
                    else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_POSE_ID){
                        _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_POSE_ID ;
                        _Recovery_current_time = 0 ;
                        robot_turn_as_.setAborted(_result);        
                    } 
                    else if(ac_result->result == robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP){
                        _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP ;
                        _Recovery_current_time = 0 ;
                        robot_turn_as_.setAborted(_result);        
                    } 
                }
            }
        }*/
    }
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState robot_turn_action::robot_turn_ac_handler(std::string robot_turn_ac_name,std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal)
{      
    if(robot_turn_action_client_ == NULL){
        robot_turn_action_client_ = std::make_shared<robot_turn_action_client>(nh_) ; 
        robot_turn_action_client_->set_robot_scheduling_parameter(parameter_);
    }
    robot_turn_action_client_->set_TimeoutFlag(false);
    return robot_turn_action_client_->do_robot_turn_ac(robot_turn_ac_name,goal);
}
//-----------------------------------------------------------------------------
void robot_turn_action::robot_turn_rcvr_CB(const robot_scheduling_msgs::self_turn_to_recoveryGoalConstPtr& goal)
{
    if (turn_rcvr_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("turn_rcvr_as_ execution preempted.");
        turn_rcvr_as_.setPreempted();
        return;
    }
    else{ 
        //move_to_rcvr_ac_name = goal->rcvr_ac_name ;
        //clear_costmap_ac() ;
        robot_scheduling_msgs::self_turn_to_recoveryResult _result;
        _result.result = robot_scheduling_msgs::self_turn_to_recoveryResult::OK ;
        turn_rcvr_as_.setSucceeded(_result);    
    }
}
//---------------------------------------------------------------------------------
//*********************************************************************************
//** robot_turn_action_client                                                    **
//*********************************************************************************
//---------------------------------------------------------------------------------
robot_turn_action_client::robot_turn_action_client(ros::NodeHandle nh) : nh_(nh)
{ 
}  
//-----------------------------------------------------------------------------
robot_turn_action_client::~robot_turn_action_client()
{
        
}  
//-----------------------------------------------------------------------------
void robot_turn_action_client::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
}
//-----------------------------------------------------------------------------
void robot_turn_action_client::set_TimeoutFlag(bool bFlag)
{
    bTimeoutFlag = bFlag ;    
}
//-----------------------------------------------------------------------------
bool robot_turn_action_client::get_TimeoutFlag()
{
    return bTimeoutFlag  ;    
}
//-----------------------------------------------------------------------------
actionlib::SimpleClientGoalState robot_turn_action_client::do_robot_turn_ac(std::string robot_turn_ac_name,std::shared_ptr<robot_scheduling_msgs::self_turn_toGoal> goal)
{                
    if(robot_turn_ac_ == NULL){
        //dock_to_ac_name = goal->dock_ac_name;
        robot_turn_ac_ = std::make_shared<robot_turn_ac>(robot_turn_ac_name, true);
        while(!robot_turn_ac_->waitForServer(ros::Duration(5.0))){
            ROS_INFO("Waiting for action server(%s) to come up",robot_turn_ac_name.c_str());
        }    
    }
    //----run interrupt --------
    if(goal->command_id == robot_scheduling_msgs::self_turn_toGoal::TURN_INTERRUPE){
        robot_turn_ac_->cancelAllGoals();  
        return actionlib::SimpleClientGoalState::SUCCEEDED ;   
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
    robot_turn_ac_->sendGoal(*goal,boost::bind(&robot_turn_action_client::ac_doneCb, this, _1,_2),
                                boost::bind(&robot_turn_action_client::ac_activeCb, this),
                                boost::bind(&robot_turn_action_client::ac_feedbackCb, this, _1));
    while (!robot_turn_ac_->waitForResult(ros::Duration(0.5))) {}
    //--------------
    return robot_turn_ac_->getState() ;
}
//-----------------------------------------------------------------------------
void robot_turn_action_client::ac_doneCb(const actionlib::SimpleClientGoalState& state,const robot_scheduling_msgs::self_turn_toResultConstPtr& result)
{
   
}
//-----------------------------------------------------------------------------
void robot_turn_action_client::ac_activeCb()
{
    
}
//-----------------------------------------------------------------------------
void robot_turn_action_client::ac_feedbackCb(const robot_scheduling_msgs::self_turn_toFeedbackConstPtr &fb)
{
    if(!fb->tuened){
        bTimeoutFlag = ((ros::Time::now() - begin_Time).toSec() > Period_timeout);
        ROS_INFO("bTimeoutFlag:%d");
    }
}
//-----------------------------------------------------------------------------
robot_scheduling_msgs::self_turn_toResultConstPtr robot_turn_action_client::get_robot_turn_ac_result()
{
    return robot_turn_ac_->getResult();
}
//---------------------------------------------------------------------------------
//*********************************************************************************
//** self_turn_action                                                            **
//*********************************************************************************
//---------------------------------------------------------------------------------
self_turn_action::self_turn_action(ros::NodeHandle nh,std::string self_turn_as_name) :
                        nh_(nh),//turn_to_name_as_(turn_to_name_as),
                        self_turn_as_(nh_,self_turn_as_name, boost::bind(&self_turn_action::self_turn_to_CB, this, _1), false)
{ 
    _Recovery_current_time = 0 ;
    bTimeoutFlag = false ;
    /*if(!parameter_->get_b_simulation())
        turn_velPub_ = nh_.advertise<geometry_msgs::Twist>("cmd_vel",10);     
    else    
        turn_velPub_ = nh_.advertise<geometry_msgs::Twist>("/mobile_base/commands/velocity",10);  */
    //-------------------
    ROS_INFO("self_turn_as_.start()");
    self_turn_as_.start();
}    
//-----------------------------------------------------------------------------
self_turn_action::~self_turn_action()
{
        
}
//-----------------------------------------------------------------------------
void self_turn_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;    
    //------------------
    if(!parameter_->get_b_simulation())
        turn_velPub_ = nh_.advertise<geometry_msgs::Twist>("/cmd_vel",10);     
    else    
        turn_velPub_ = nh_.advertise<geometry_msgs::Twist>("/mobile_base/commands/velocity",10);  
}
//-----------------------------------------------------------------------------
bool self_turn_action::getRobot_map_Pose(double &x, double &y, double &th_deg,std::string frame_name)
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
        //ROS_INFO("th_deg:%f",th_deg);
    }
    catch (tf2::TransformException &e) {
      ROS_ERROR("tf2::TransformException==>%s", e.what());
      return false;      
    }
    return true ;
}
//-----------------------------------------------------------------------------
double self_turn_action::set_turn_pidaction(double x, double y, double th_deg)
{
    double d_angle = 0.0; //-0.2 ;//0.0;
    if(current_pose == NULL)
        current_pose = std::make_shared<geometry_msgs::Pose2D>();    

    double _pose_th = th_deg - base_th_deg ;
    if(_pose_th > 180) 
        _pose_th = 360 -_pose_th ;
    else if(_pose_th < -180) 
        _pose_th = -360 -_pose_th;   

    delta_deg += _pose_th ;     
    base_th_deg = th_deg ;   

    current_pose->x = x ;
    current_pose->y = y ;   
    current_pose->theta = delta_deg ;//_pose_th ; //th_deg ;   
    d_angle = turn_pid_->turn_action(current_pose) ;
    return d_angle ;     
}
//-----------------------------------------------------------------------------
void self_turn_action::self_turn_to_CB(const robot_scheduling_msgs::self_turn_toGoalConstPtr& goal)
{
    if (self_turn_as_.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("self_turn_as_ execution preempted.");
        self_turn_as_.setPreempted();
        return;
    }
    else{         
        robot_scheduling_msgs::self_turn_toResult _result;
        std::shared_ptr<pid_ctrl_params> pid_ctrl = parameter_->get_ac_pid_ctrl_params(goal->pid_id);
        ROS_INFO("pid_ctrl=====>KP:%g  KI:%g  KD:%g",pid_ctrl->d_KP,pid_ctrl->d_KI,pid_ctrl->d_KD);
        if(pid_ctrl == NULL){
            _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_PID_ID ;
            _Recovery_current_time = 0 ;
            self_turn_as_.setAborted(_result);      
        }
        else{
            if(turn_pid_ == NULL)
                turn_pid_ = std::make_shared<turn_pid>();

            turn_pid_->pid_param_set(pid_ctrl->d_KP,pid_ctrl->d_KI,pid_ctrl->d_KD);
            turn_pid_->pid_speed_bound_set(pid_ctrl->min_bound,pid_ctrl->max_bound);
            //turn_pid_->pid_tolerance_set(pid_ctrl->tolerance);  
            turn_pid_->pid_tolerance_set(2);    
            turn_pid_->pid_compensation_set(pid_ctrl->b_compensation);    
            turn_pid_->pid_run_flag_set(false);   
            turn_pid_->pid_target_set(goal->target_angle);    
            turn_pid_->pid_run_flag_set(true); 
            Period_timeout = 500000;//goal->time_out ;

            //geometry_msgs::Twist vel;
            vel.linear.x = 0 ;
            vel.linear.y = 0 ;
            vel.linear.z = 0 ;
            vel.angular.x = 0 ;
            vel.angular.y = 0 ;
            vel.angular.z = 0 ;
            double x,y,th_deg;
            bool b_pose = getRobot_map_Pose(x, y, th_deg);
            if(!b_pose){
                _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP ;
                _Recovery_current_time = 0 ;
                self_turn_as_.setAborted(_result);  
                vel.angular.z = 0.0 ;  
                turn_velPub_.publish(vel); 
            }
            else{
                ros::Rate loop_rate(10);   // 10Hz
                bool bResult = false ;
                bool bTomeout = false ;
                double angular_z = 0 ;
                begin_Time = ros::Time::now() ;
                robot_scheduling_msgs::self_turn_toFeedback _feedback ;
                _feedback.tuened = false ;
                base_th_deg = th_deg ;
                delta_deg = 0 ;
                while(ros::ok() && b_pose){                    
                    //ROS_INFO("while start !!");
                    _feedback.delta_angle = th_deg ;  
                    double angular_z = set_turn_pidaction(x,y,th_deg) ; 
                    //----------------
                    if(parameter_->get_b_simulation()){
                        angular_z = (angular_z>0) ? 0.2 : -0.2 ;
                    }
                    //-----------------
                    vel.angular.z = angular_z ;//-0.2 ;
                    //ROS_INFO("vel.angular.z:%f",vel.angular.z);
                    turn_velPub_.publish(vel);   
                    loop_rate.sleep();    
                    //ROS_INFO("turn_velPub_.publish(vel);  ");       
                    if(turn_pid_->closeEnough()){
                        ROS_INFO("closeEnough!");
                        _feedback.tuened = true ;
                        bResult = true ; break ;
                    }
                    else{                        
                        if((ros::Time::now() - begin_Time).toSec() > Period_timeout){
                            ROS_INFO("timeout!==>%f",Period_timeout);
                            bTomeout = true ; break ;    
                        }
                        else{
                            b_pose = getRobot_map_Pose(x, y, th_deg);
                            if(b_pose){
                                vel.angular.z = set_turn_pidaction(x,y,th_deg) ;  
                                turn_velPub_.publish(vel); 
                                loop_rate.sleep();    
                                //ROS_INFO("turn_velPub_.publish(vel)!");           
                            }
                            else{
                                vel.angular.z = 0.0 ;  
                                turn_velPub_.publish(vel);   
                                //ROS_INFO("turn_velPub_.publish(vel) 11111222222");       
                            }

                        }
                    }                    
                }
                ROS_INFO("turn finish!");
                //bTomeout = true ;

                if(!b_pose){
                    _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_POSE_MAP ;
                    _Recovery_current_time = 0 ;
                    self_turn_as_.setAborted(_result);  
                }  
                else{
                    if(bResult){                        
                        _result.result = robot_scheduling_msgs::self_turn_toResult::OK ;
                        _Recovery_current_time = 0 ;
                        self_turn_as_.setSucceeded(_result);  
                    }
                    else if(bTomeout){
                        ROS_INFO("robot_scheduling_msgs::self_turn_toResult::TIMED_OUT");     
                        _result.result = robot_scheduling_msgs::self_turn_toResult::TIMED_OUT ;
                        _Recovery_current_time = 0 ;
                        self_turn_as_.setAborted(_result);  
                    }
                    else{
                        _result.result = robot_scheduling_msgs::self_turn_toResult::NOT_OK ;
                        _Recovery_current_time = 0 ;
                        self_turn_as_.setAborted(_result);      
                    }
                }
            }
        }
    }
}
//------------------------------------------------------------------------------
