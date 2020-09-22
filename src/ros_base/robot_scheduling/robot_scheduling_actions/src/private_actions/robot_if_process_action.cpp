#include <private_actions/robot_if_process_action.h>
#include <ros_utility_tools/ros_tools.h>
//-----------------------------------------------------------------------------
robot_if_process_action::robot_if_process_action(ros::NodeHandle nh,std::string name_as) : nh_(nh), 
                        if_process_as(nh_,name_as, boost::bind(&robot_if_process_action::if_process_CB, this, _1), false)
{ 
    ROS_INFO("if_process_as.start()");
    if_process_as.start();
}    
//-----------------------------------------------------------------------------
robot_if_process_action::~robot_if_process_action()
{
    
}
//-----------------------------------------------------------------------------
void robot_if_process_action::set_robot_scheduling_parameter(robot_scheduling_parameter* parameter)
{
    parameter_ = parameter ;
}
//-----------------------------------------------------------------------------
void robot_if_process_action::if_process_CB(const robot_scheduling_msgs::robot_interface_processGoalConstPtr& goal)
{
    ROS_INFO("if_process_CB");   
    if (if_process_as.isPreemptRequested() || !ros::ok()){
        ROS_ERROR("if_process_as execution preempted.");
        if_process_as.setPreempted();
        return;
    }
    else{  
        int cmd_type = goal->cmd_type ;
        bool bResult = false ;        
        //--- interface lower Process --------------------------
        if(cmd_type == robot_scheduling_msgs::robot_interface_processGoal::LOWER){
            do_process_lower_function(goal) ;
        }
        //--- Status_code Process ---------------------------
        else if(cmd_type == robot_scheduling_msgs::robot_interface_processGoal::UPPER){
            do_process_upper_function(goal) ;
        }        
    }
}
//-----------------------------------------------------------------------------
void robot_if_process_action::do_process_lower_function(const robot_scheduling_msgs::robot_interface_processGoalConstPtr& goal)
{    
    //int cmd_type = goal->cmd_type ;
    //int data_type = goal->dtat_type ;
    bool bResult = false ;
    robot_scheduling_msgs::robot_interface_processResult _result;

    if(parameter_->get_b_simulation()){
        ROS_INFO("b_simulation - do_process_lower_function");
        parameter_->set_base_ctrl_connected(true);
        bResult = true ;
    }
    /*if(cmd_type == robot_scheduling_msgs::robot_interface_processGoal::SET){
        std::string _pose_name  ;
        if(goal->set_data[0]=="park") _pose_name = "park_pos" ;
        else if(goal->set_data[0]=="home") _pose_name = "home_pos" ;
        else if(goal->set_data[0]=="predock"){
            _pose_name = "pre_dock_pos_"+goal->set_data[1];   
        }
        else if(goal->set_data[0]=="postdock"){
            _pose_name = "post_undock_pos_"+goal->set_data[1];   
        }
        //else if(goal->set_data[0]=="common") _pose_name = "car_database" ;
        ROS_INFO("_pose_name:%s",_pose_name.c_str()); 

        parameter_->set_if_target_pose_id(_pose_name);
        bResult = true ;    
    }  
    else if(cmd_type == robot_scheduling_msgs::robot_interface_processGoal::GET){
        bResult = (parameter_->get_if_target_pose_id() == goal->set_data[0]) ||
                  goal->set_data[0].empty()  ;
        if(bResult){
            std::shared_ptr<ac_locomotor_pos2d> _data = parameter_->get_if_target_pose_pos2d();
            ROS_INFO("_data->pos_x:%f, _data->pos_y:%f ,_data->theta:%f ,_data->rotate_flag:%d",_data->pos_x,_data->pos_y,_data->theta,_data->rotate_flag);
        }
    } */
    //---------------------------------------------------------------------        
    if(bResult){
        _result.result = robot_scheduling_msgs::robot_interface_processResult::OK;
        if_process_as.setSucceeded(_result);      
    }
    else{
        _result.result = robot_scheduling_msgs::robot_interface_processResult::NOT_OK;
        if_process_as.setAborted(_result);      
    } 
    //--------------------------------------------------------------
}
//-----------------------------------------------------------------------------
void robot_if_process_action::do_process_upper_function(const robot_scheduling_msgs::robot_interface_processGoalConstPtr& goal) 
{
    bool bResult = false ;
    robot_scheduling_msgs::robot_interface_processResult _result;

    if(parameter_->get_b_simulation()){
        ROS_INFO("b_simulation - do_process_upper_function");
        //parameter_->set_base_ctrl_connected(true);
        bResult = true ;
    }
    //---------------------------------------------------------------------        
    if(bResult){
        _result.result = robot_scheduling_msgs::robot_interface_processResult::OK;
        if_process_as.setSucceeded(_result);      
    }
    else{
        _result.result = robot_scheduling_msgs::robot_interface_processResult::NOT_OK;
        if_process_as.setAborted(_result);      
    } 
}
//--------------------------------------------------------------------------------
