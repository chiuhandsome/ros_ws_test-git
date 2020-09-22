#include <private_actions/robot_command_action.h>
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
robot_command_action::robot_command_action(ros::NodeHandle nh,std::string name_as) : //,robot_scheduling_parameter* parameter) :
                        nh_(nh),//name_as_(name_as),
                        command_as(nh_,name_as, boost::bind(&robot_command_action::command_CB, this, _1), false)
{ 
    ROS_INFO("command_as.start()");
    command_as.start();
}    
//-----------------------------------------------------------------------------
robot_command_action::~robot_command_action()
{
    
}
//-----------------------------------------------------------------------------
void robot_command_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
}
//-----------------------------------------------------------------------------
void robot_command_action::do_command_dispatch(const robot_scheduling_msgs::robot_commandGoalConstPtr& goal)
{
    runstatus_type _status = parameter_->get_system_status() ;      // get current status
    command_type _precommand = parameter_->get_upper_precommand() ; // get pre_command from upper's call  
    //ROS_INFO("========================================  _precommand : %d   _status:%d",_precommand,_status);  
    command_type _command ;
    if(_status == runstatus_none){
        if(_precommand == cmd_upper_unknow){
            ROS_INFO("cmd_upper_unknow");  
            parameter_->set_upper_command(cmd_upper_unknow) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
    }
    else if(_status == runstatus_unknow){
        if(_precommand == cmd_upper_initpose){
            parameter_->set_upper_command(cmd_upper_initpose) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
    }
    else if(_status == runstatus_initpose){
        if(_precommand == cmd_upper_standby){
            parameter_->set_upper_command(cmd_upper_standby) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
        else if(_precommand == cmd_upper_alarm){
            parameter_->set_upper_command(cmd_upper_alarm) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
    }
    else if(_status == runstatus_standby){
        if(_precommand == cmd_upper_manual_run){
            parameter_->set_upper_command(cmd_upper_manual_run) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
        else if(_precommand == cmd_upper_remote){
            parameter_->set_upper_command(cmd_upper_remote) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
        else if(_precommand == cmd_upper_alarm){
            parameter_->set_upper_command(cmd_upper_alarm) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
        else if(_precommand == cmd_upper_exit){
            parameter_->set_upper_command(cmd_upper_exit) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
    }
    else if(_status == runstatus_manual_run){
        if(_precommand == cmd_upper_remote){
            parameter_->set_upper_command(cmd_upper_remote) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
        else if(_precommand == cmd_upper_standby){
            parameter_->set_upper_command(cmd_upper_standby) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
        else if(_precommand == cmd_upper_alarm){
            parameter_->set_upper_command(cmd_upper_alarm) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
    }
    else if(_status == runstatus_remote){
        if(_precommand == cmd_upper_standby){
            parameter_->set_upper_command(cmd_upper_standby) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
        else if(_precommand == cmd_upper_alarm){
            parameter_->set_upper_command(cmd_upper_alarm) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }
    }
    else if(_status == runstatus_alarm){
        /*if(_precommand == cmd_upper_alarm_reset){
            parameter_->set_upper_command(cmd_upper_alarm_reset) ;   
            //parameter_->set_upper_precommand(command_none) ;   
        }*/
    }
    //--- be continue ......
}
//-----------------------------------------------------------------------------
void robot_command_action::command_CB(const robot_scheduling_msgs::robot_commandGoalConstPtr& goal)
{
    if (command_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("run_state_as execution preempted.");
        command_as.setPreempted();
        return;
    }
    else{
        robot_scheduling_msgs::robot_commandResult _result;
        //-- get upper command ----
        command_type _cmd = parameter_->get_upper_command();
        if(goal->command == robot_scheduling_msgs::robot_commandGoal::GET){            
            _result.result = (_cmd == goal->set_status) ? robot_scheduling_msgs::robot_commandResult::OK :
                                                          robot_scheduling_msgs::robot_commandResult::NOT_OK;
            command_as.setSucceeded(_result);  
        }
        //-- set command ----
        else if(goal->command == robot_scheduling_msgs::robot_commandGoal::SET){
            command_type status = (command_type)goal->set_status ;
            parameter_->set_upper_command(status);
            _result.result = robot_scheduling_msgs::robot_commandResult::OK ;
            command_as.setSucceeded(_result); 
        }
        //-- do command ----
        else if(goal->command == robot_scheduling_msgs::robot_commandGoal::DISPATCH){
            do_command_dispatch(goal) ;
            _result.result = robot_scheduling_msgs::robot_commandResult::OK ;
            command_as.setSucceeded(_result); 
        }
        else{
            _result.result = robot_scheduling_msgs::robot_commandResult::TIMED_OUT ;  
            command_as.setAborted(_result);    
        }
    }
}
//--------------------------------------------------------------------------------
