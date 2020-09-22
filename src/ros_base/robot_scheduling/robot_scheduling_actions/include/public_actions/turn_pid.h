#ifndef turn_pid_H
#define turn_pid_H

#include "ros/ros.h"
#include <geometry_msgs/Pose2D.h>
//-----------------------------------------------------------------------------
struct car_pose_2d   
{
  double pos_x, pos_y, theta;   
  ros::Time time ; 
};
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//*****************************************************************************
//** pid controller                                                          **
//*****************************************************************************
//-----------------------------------------------------------------------------
class turn_pid
{
    private:
        //car_pose_2d *start_pose;      
        //car_pose_2d *last_pose;   
        std::shared_ptr<car_pose_2d> start_pose ;  
        std::shared_ptr<car_pose_2d> last_pose ;      
        double tolerance_, min_speed_,max_speed_ ;
        double d_KP_ , d_KI_, d_KD_ ;
        bool b_Run_Flag_ ;
        double target_theta_ ;
        ros::Publisher pub_velocity;  
        void publishMessage(double theta_speed);
        int iterations ;
        double sumtheta ;
        double action_speed_ ;
        bool b_compensation_ ;

        std::shared_ptr<car_pose_2d> actual_pose ;  
    public:
        turn_pid(ros::Publisher pub,double tolerance,double min_speed,double max_speed,
                double d_KP,double d_KI,double d_KD,bool b_compensation = true);  
        turn_pid();  
        ~turn_pid();

        void pid_param_set(double d_KP,double d_KI,double d_KD);
        void pid_speed_bound_set(double min_speed,double max_speed);
        void pid_tolerance_set(double tolerance);
        void pid_run_flag_set(bool b_Run_Flag);
        void pid_target_set(double target_theta);
        void pid_compensation_set(bool b_compensation);

        bool closeEnough();
        double calculatePID(double diff_time, double actualValue, double lastValue, double reference, 
                            double kP, double kD, double kI, double *sum);
        double turn_action(std::shared_ptr<geometry_msgs::Pose2D> pose) ;

};
//---------------------------------------------------------------------------------

#endif
