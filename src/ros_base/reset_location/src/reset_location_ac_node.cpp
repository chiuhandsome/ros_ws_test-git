#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <reset_location/TrilaterationAction.h>

int main (int argc, char **argv)
{
  ros::init(argc, argv, "test_Trilateration");

  // create the action client
  // true causes the client to spin its own thread
  actionlib::SimpleActionClient<reset_location::TrilaterationAction> ac("reset_location_as", true);

  ROS_INFO("Waiting for action server to start.");
  // wait for the action server to start
  ac.waitForServer(); //will wait for infinite time

  ROS_INFO("Action server started, sending goal.");
  // send a goal to the action
  reset_location::TrilaterationGoal goal;
  goal.tag1_x =  -2.7392;
  goal.tag1_y= -2.3717;
  goal.tag2_x = -5.00419;
  goal.tag2_y=  -0.04821;
  goal.tag3_x = -2.7192;
  goal.tag3_y= 2.6918;
  ac.sendGoal(goal);

  //wait for the action to return
  bool finished_before_timeout = ac.waitForResult(ros::Duration(30.0));

  if (finished_before_timeout)
  {
    actionlib::SimpleClientGoalState state = ac.getState();
    ROS_INFO("Action finished: %s",state.toString().c_str());
    ROS_INFO("###x: %2.4f  ###y: %2.4f  ###theta: %2.4f",ac.getResult().get()->x, ac.getResult().get()->y, ac.getResult().get()->theta) ; 
  }
  else
    ROS_INFO("Action did not finish before the time out.");

  //exit
  return 0;
}
