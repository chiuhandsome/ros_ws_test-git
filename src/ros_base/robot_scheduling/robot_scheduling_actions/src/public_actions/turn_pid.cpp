#include <public_actions/turn_pid.h>
#include <math.h>
#include <geometry_msgs/Twist.h>

#define PI 3.141592
//-----------------------------------------------------------------------------
turn_pid::turn_pid(ros::Publisher pub,double tolerance,double min_speed,double max_speed,
                   double d_KP,double d_KI,double d_KD,bool b_compensation)
{
    //start_pose = new car_pose_2d();
    //last_pose = new car_pose_2d();

    target_theta_ = 0;
    tolerance_ = tolerance;
    min_speed_ = min_speed;
    max_speed_ = max_speed;
    d_KP_ = d_KP;
    d_KI_ = d_KI;
    d_KD_ = d_KD;
    b_compensation_ = b_compensation ;

    action_speed_ = 0 ;
    pub_velocity = pub;
    iterations = 0;
    sumtheta = 0;

  
    b_Run_Flag_ = false ;
}
//-----------------------------------------------------------------------------
turn_pid::turn_pid()
{
}
//-----------------------------------------------------------------------------
turn_pid::~turn_pid()
{
	//if(start_pose) delete start_pose ;
    //if(last_pose) delete last_pose ;
}
//---Publisher-----------------------------------------------------------------
void turn_pid::publishMessage(double theta_speed)
{    
    geometry_msgs::Twist msg;		//preparing message
    msg.linear.x = 0 ;
    msg.linear.y = 0 ;
    msg.angular.z = theta_speed; 
    pub_velocity.publish(msg);		//publishing message
}
//-----------------------------------------------------------------------------
void turn_pid::pid_param_set(double d_KP,double d_KI,double d_KD)
{    
    d_KP_ = d_KP;
    d_KI_ = d_KI;
    d_KD_ = d_KD;
}
//-----------------------------------------------------------------------------
void turn_pid::pid_speed_bound_set(double min_speed,double max_speed)
{  
    min_speed_ = min_speed;
    max_speed_ = max_speed;
}
//-----------------------------------------------------------------------------
void turn_pid::pid_tolerance_set(double tolerance)
{  
    tolerance_ = tolerance ;
}
//-----------------------------------------------------------------------------
void turn_pid::pid_compensation_set(bool b_compensation)
{    
    b_compensation_ = b_compensation;
}
//-----------------------------------------------------------------------------
void turn_pid::pid_run_flag_set(bool b_Run_Flag)
{  
    b_Run_Flag_ = b_Run_Flag;
    if(b_Run_Flag_)
        iterations = 0 ;
}
//-----------------------------------------------------------------------------
void turn_pid::pid_target_set(double target_theta)
{  
    target_theta_ = target_theta;
}
//--- check arrival status -----------------------------------------------------
bool turn_pid::closeEnough()
{ 
    //ROS_INFO("turn_pid closeEnough check !");
    double theta = actual_pose->theta ;
    ROS_INFO("theta:%f",theta);
    ROS_INFO("target_theta_:%f",target_theta_);
    ROS_INFO("tolerance_:%f",tolerance_);
    bool bRet = (fabs(theta - target_theta_) < tolerance_);   
    return bRet ;
}
//---caculating output using PID -----------------------------------------------
double turn_pid::calculatePID(double diff_time, double actualValue, double lastValue, 
							  double reference, double kP, double kD, double kI, double *sum)
{  
  double dOut = 0;
  double error = reference - actualValue;
  double previousError = reference - lastValue;
  double dt = diff_time;
  double derivative = (error - previousError)/diff_time;
  *sum = *sum + error*dt;
  dOut = kP*error + kD*derivative + kI*(*sum);

  ROS_INFO("KI:%g  KD:%g  KP:%g",kI,kD,kP);
  
  return dOut;
}
//------------------------------------------------------------------------------
double turn_pid::turn_action(std::shared_ptr<geometry_msgs::Pose2D> pose)
{
    //ROS_INFO("turn_action !");
    if(actual_pose == NULL){
        actual_pose = std::make_shared<car_pose_2d>();
    }    

    if(!b_Run_Flag_){
        action_speed_ = 0 ;
        return action_speed_ ;
    }
    //---------------------
    //ROS_INFO("turn_action123 !");
    actual_pose->pos_x = pose->x ;
    actual_pose->pos_y = pose->y ;
    actual_pose->theta = pose->theta ;    
    actual_pose->time = ros::Time::now() ;

    bool barrival = closeEnough();
    //ROS_INFO("barrival:%d ",barrival);
    if (barrival) {
        action_speed_ = 0.0 ;
        b_Run_Flag_ = false ;
        return action_speed_;
    }
    //-- data change for first control data --
    if (iterations == 0){
        if(start_pose == NULL)
            start_pose = std::make_shared<car_pose_2d>();
        if(last_pose == NULL)
            last_pose = std::make_shared<car_pose_2d>();
    
        //ROS_INFO("iterations == 0 ");
        //ROS_INFO("start_pose.pos_x: %f ",start_pose->pos_x);
        start_pose->pos_x = actual_pose->pos_x ;
        start_pose->pos_y = actual_pose->pos_y ;
        start_pose->theta = actual_pose->theta ;
        start_pose->time = actual_pose->time ;

        last_pose->pos_x = actual_pose->pos_x ;
        last_pose->pos_y = actual_pose->pos_y ;
        last_pose->theta = actual_pose->theta ;
        last_pose->time = actual_pose->time ;
        //ROS_INFO("iterations == 0 ");
        sumtheta = 0;
    } 
    iterations++;
    //ROS_INFO("iterations == 123 ");
    //Calculation of action delta time.
    double diff_time = actual_pose->time.toSec() - last_pose->time.toSec() ;  
    //ROS_INFO("diff_time:%f",diff_time);
    //-- caculating speed using PID method,if necessary ---
	if(!barrival){
        action_speed_ = calculatePID(diff_time,actual_pose->theta,last_pose->theta,target_theta_,
                                        d_KP_,d_KD_,d_KI_,&sumtheta);	
        //ROS_INFO("origion action_speed_:%f",action_speed_);     
        //ROS_INFO("max_speed_:%f",max_speed_);    
        //ROS_INFO("min_speed_:%f",min_speed_);                               
        if(action_speed_ != 0.0 ){ 
            if(fabs(action_speed_) > max_speed_)
                action_speed_ = copysign(max_speed_,action_speed_);    
            if(fabs(action_speed_) < min_speed_)
                action_speed_ = copysign(min_speed_,action_speed_); 
        }
        //-- Confirm the compensation direction －－－－
        action_speed_ = b_compensation_ ? action_speed_ : -action_speed_;
        ROS_INFO("b_compensation_ ==================>%d",(int)b_compensation_);
        //publishMessage(action_speed_);
	}
    //ROS_INFO("action_speed_:%f",action_speed_);
    return action_speed_ ;
}
//-----------------------------------------------------------------------------
