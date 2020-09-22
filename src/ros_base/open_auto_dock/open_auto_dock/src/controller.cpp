/*
 * Copyright 2015 Fetch Robotics Inc
 * Author: Michael Ferguson
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <open_auto_dock/controller.h>

#include <angles/angles.h>

#include <algorithm>
#include <list>
#include <vector>
#include <cmath>

//-----------------------------------------------------------------------------
//-- Controler 建構函式 及 相關控制參數初始設定------------------
BaseController::BaseController(ros::NodeHandle& nh)
{
  // Create publishers
  path_pub_ = nh.advertise<nav_msgs::Path>("path", 10);
  cmd_vel_pub_ = nh.advertise<geometry_msgs::Twist>("cmd_vel", 10);

  Read_CntParameters();

  dist_offset = 1.6*distance_closing - dist_ ;
  // TODO(enhancement): these should be loaded from ROS params
  /*k1_ = 3;
  k2_ = 2;
  min_velocity_ = 0.15;
  max_velocity_ = 0.15;
  max_angular_velocity_ = 2.0;
  beta_ = 0.2;
  lambda_ = 2.0;*/
}
//-----------------------------------------------------------------------------
//---- read control parameters  ------------------------------------------------
//-- 讀取控制參 --------------------------------------------------------------------
void BaseController::Read_CntParameters()
{
    ros::NodeHandle pnh("~");
    if(!pnh.getParam("ratio_r_theta", k1_))
        k1_ = 3.0 ;
    if(!pnh.getParam("ratio_speed_slowsystem", k2_))
        k2_ = 2.0 ;
    if(!pnh.getParam("min_velocity_", min_velocity_))
        min_velocity_ = 0.04 ;
    if(!pnh.getParam("max_velocity_", max_velocity_))
        max_velocity_ = 0.04 ;
    if(!pnh.getParam("max_angular_velocity_", max_angular_velocity_))
        max_angular_velocity_ = 0.18 ;
    if(!pnh.getParam("ratio_velocity_drop", beta_))
        beta_ = 0.2 ;

    if(!pnh.getParam("lambda_", lambda_))
        lambda_ = 2.0 ;
    if(!pnh.getParam("track_dist", dist_))
        dist_ = 0.4 ;
    if(!pnh.getParam("distance_speed", distance_speed))
        distance_speed = 0.75 ;
    if(!pnh.getParam("distance_closing", distance_closing))
        distance_closing = 0.3 ;
    if(!pnh.getParam("distance_closed", distance_closed))
        distance_closed = 0.01 ;

    if(!pnh.getParam("bSimulationRun", bSimulationRun))
        bSimulationRun = false ;
    if(!pnh.getParam("min_backup_rot_error", min_backup_rot_error))
        min_backup_rot_error = 0.034 ;
    if(!pnh.getParam("reverse", reverse))
        reverse = -1 ;

    //-- control parameter for dock_candidate (struct)----
    /*pnh.param<double>("ratio_r_theta", k1_, 3.0);
    pnh.param<double>("ratio_speed_slowsystem", k2_, 2.0);
    pnh.param<double>("min_velocity_", min_velocity_, 0.15);
    pnh.param<double>("max_velocity_", max_velocity_, 0.15);

    pnh.param<double>("max_angular_velocity_", max_angular_velocity_, 0.2);
    pnh.param<double>("ratio_velocity_drop", beta_, 0.2);
    pnh.param<double>("lambda_", lambda_, 2.0);
    pnh.param<double>("track_dist", dist_, 0.4);

    pnh.param<double>("distance_speed", distance_speed, 0.75);
    pnh.param<double>("distance_closing", distance_closing, 0.3);
    pnh.param<double>("distance_closed", distance_closed, 0.01);*/

    /*ROS_INFO("BaseController - distance_closed: [%f]", distance_closed);
    ROS_INFO("BaseController - distance_closing: [%f]", distance_closing);
    ROS_INFO("BaseController - distance_speed: [%f]", distance_speed);

    ROS_INFO("BaseController - dist_: [%f]", dist_);
    ROS_INFO("BaseController - lambda_: [%f]", lambda_);
    ROS_INFO("BaseController - ratio_velocity_drop: [%f]", beta_);
    ROS_INFO("BaseController - max_angular_velocity_: [%f]", max_angular_velocity_);

    ROS_INFO("BaseController - max_velocity_: [%f]", max_velocity_);
    ROS_INFO("BaseController - min_velocity_: [%f]", min_velocity_);
    ROS_INFO("BaseController - ratio_speed_slowsystem: [%f]", k1_);
    ROS_INFO("BaseController - ratio_r_theta: [%f]", k2_);*/

}
//-----------------------------------------------------------------------------
//-- 車體 approach 目標物（docker）控制邏輯 （參考 graceful 控制資料）------------------
//-- 1. 判斷 target 位姿(pose)正確 ? 否，stop()/參數初始化 ，return false
//-- 2. 取得車體 yaw 角度（弳度），利用此角度及 -dist，以極座標，方向朝向車頭 算出 x,y的 offset，
//--    加上後更新 pose.pose.position.x,pose.pose.position.y 資料 （新目標值）
//-- 3. 將 pose 進行 "base_link" 的座標轉換到 pose， 失敗，stop()/參數初始化 ，return false
//-- 4. 計算和目標的距離 _dist
//--    （1）_dist < 0.3 ==> 參數化 :表示車體靠近，縮短 _dist（依目前距離等比例調整）降低 delta 對控制系統的影響
//--    （2）_dist < 0.01 ==> 參數化 :表示車體已達，傳回 true
//-- 5. 計算 delta：車體正前方和 r 之間的夾角
//-- 6. 計算 theta：車體 yaw 角度+delta
//-- 7. 計算 virtual control（a）及 curvature (k)
//-- 8. 以 max_velocity 搭 curvature(k)及其他相關參數來計算速度（v）<- graceful 控制
//--    以和目標物的距離 r 來限制 速度（v）
//--    （1）r<0.75 （r, max_velocity_，v）取最小值，再和min_velocity_取最大值
//--    （2）r>=0.75 (min_velocity_, v)取最大值，再和max_velocity_取最小值
//-- 9. 取旋轉角速度 w = 速度（v）x curvature (k)
//--10. 取 bounded_w ：(-max_angular_velocity_, w)取最大值，再和 max_angular_velocity_ 取最小值
//--    當 w != 0,則 v 也需等比例進行縮放 v*= (bounded_w/w);
//--11. command_.linear.x = v;  command_.angular.z = bounded_w;  cmd_vel_pub_.publish(command_);
//--12. 產生 nav_msgs::Path plan; for debug 使用

bool BaseController::approach(const geometry_msgs::PoseStamped& target)
{
  // Transform pose by -dist_ in the X direction of the dock
  geometry_msgs::PoseStamped pose = target;
  {
    tf::Quaternion q;
    tf::quaternionMsgToTF(pose.pose.orientation, q);
    double theta = angles::normalize_angle(tf::getYaw(q));
    // If the target has an invalid orientation then don't approach it.
    if (!std::isfinite(theta))
    {
      ROS_INFO("approach !std::isfinite(theta)");
      ROS_ERROR_STREAM_NAMED("controller", "Invalid approach target for docking.");
      stop();
      return false ;//true;
    }
    pose.pose.position.x += cos(theta) * -dist_;
    pose.pose.position.y += sin(theta) * -dist_;
  }

  // Transform target into base frame
  try
  {
    pose.header.stamp = ros::Time(0);
    listener_.transformPose("base_link", pose, pose);
    //listener_.transformPose("laser", pose, pose);
  }
  catch (tf::TransformException const &ex)
  {
    ROS_WARN_STREAM_THROTTLE(1.0, "Couldn't get transform from dock to base_link");
    stop();
    return false;
  }

  // Distance to goal
  double r = std::sqrt(pose.pose.position.x * pose.pose.position.x +
                       pose.pose.position.y * pose.pose.position.y);

  ROS_DEBUG("approach r[%f] distance_closing[%f] distance_closed[%f]",r,distance_closing,distance_closed);
  // Once we get close, reduce d_
  if (r < distance_closing)//0.3)
  {
    ROS_DEBUG("r[%f] < distance_closing [%f]",r,distance_closing);
    // This part is trying to bring the target point into the goal but right now it just jumps from
    // some virtual pose to the actual pose. We want to bring it in more gradually.
    dist_ = 0.0;
    //dist_ = 1.6*r - dist_offset  ;
    //if (dist_ < 0.0) dist_ = 0.0;
  }

  // If within distance tolerance, return true
  if (r < distance_closed) //0.01)
  {
    ROS_DEBUG("r[%f] < distance_closed [%f]",r,distance_closed);
    //stop();     //handsome
    return true;
  }

  // Orientation base frame relative to r_
  double delta = std::atan2(-pose.pose.position.y, pose.pose.position.x);
  ROS_DEBUG("Orientation base frame relative to r_ [%f]",delta);
  // Determine orientation of goal frame relative to r_
  tf::Quaternion q;
  tf::quaternionMsgToTF(pose.pose.orientation, q);
  double theta = angles::normalize_angle(tf::getYaw(q) + delta);

  // Compute the virtual control
  double a = atan(-k1_ * theta);
  // Compute curvature (k)
  double k = -1.0/r * (k2_ * (delta - a) + (1 + (k1_/1+((k1_*theta)*(k1_*theta))))*sin(delta));
  /*
  // Compute max_velocity based on curvature
  double v = max_velocity_ / (1 + beta_ * std::pow(fabs(k), lambda_));
  // Limit max velocity based on approaching target (avoids overshoot)
  if (r < distance_speed) //0.75)
  {
    v = std::max(min_velocity_, std::min(std::min(r, max_velocity_), v));
  }
  else
  {
    v = std::min(max_velocity_, std::max(min_velocity_, v));
  }*/
  double v = min_velocity_;
  // Compute angular velocity
  double w = k * v*turn;
  // Bound angular velocity
  double bounded_w = std::min(max_angular_velocity_, std::max(-max_angular_velocity_, w));

  // Make sure that if we reduce w, we reduce v so that kurvature is still followed
  if (w != 0.0)
  {
    v *= (bounded_w/w);
  }

  // Send command to base
  command_.linear.x = v*reverse;
  command_.angular.z = bounded_w;
  ROS_DEBUG("approach publish command:%f %f",command_.linear.x,command_.angular.z);
  cmd_vel_pub_.publish(command_);

  // Create debugging view of path
  nav_msgs::Path plan;
  plan.header.stamp = ros::Time::now();
  plan.header.frame_id = "base_link";
  //plan.header.frame_id = "laser";
  // Add origin
  geometry_msgs::PoseStamped path_pose;
  path_pose.header.frame_id = "base_link";
  //path_pose.header.frame_id = "laser";
  path_pose.pose.orientation.w = 1.0;
  plan.poses.push_back(path_pose);
  double yaw = 0.0;
  for (int i = 0; i < 20; i++)  // 2 sec
  {
    path_pose.pose.position.x += 0.1 * command_.linear.x * cos(yaw);
    path_pose.pose.position.y += 0.1 * command_.linear.x * sin(yaw);
    yaw += 0.1 * command_.angular.z;
    path_pose.pose.orientation.z = sin(theta/2.0);
    path_pose.pose.orientation.w = cos(theta/2.0);

    double dx = path_pose.pose.position.x - pose.pose.position.x;
    double dy = path_pose.pose.position.y - pose.pose.position.y;
    if ((dx * dx + dy * dy) < 0.005)
    {
      break;
    }

    plan.poses.push_back(path_pose);
  }
  // Push goal pose onto path
  plan.poses.push_back(pose);
  // Publish path
  path_pub_.publish(plan);

  return false;
}
//-----------------------------------------------------------------------------
//-- 車體後退的控制 ------------------
//-- 1. 參數資料檢查 distance，rotate_distance
//-- 2. 設定目標為正前方，pose.header.frame_id = "base_link";pose.pose.orientation.w = 1.0;
//--    並進行座標轉換 base_link ->odom，如果是第一次，則進行初始條件設定 start_ = pose; turning_ = false; ready_ = true;
//-- 3. 旋轉條件成立：
//--    （1）取得開始位置及目前位姿的 yaw 角度，如果兩者差距 < 0.05 (弳度) -- 不補
//--    （2）若 兩者差距 > 0.05 (弳度),則進行角度為 rotate_distance 的旋轉
//-- 4. 檢查目前位置 到 開始位置的距離 > 參數 distance
//--    如果有，則先旋轉再直走； 若沒有，則直接後退走

bool BaseController::backup(double distance, double rotate_distance)
{
  // If the inputs are invalid then don't backup.
  if (!std::isfinite(distance) ||
      !std::isfinite(rotate_distance))
  {
    ROS_ERROR_STREAM_NAMED("controller", "Backup parameters are not valid.");
    stop();
    return true;
  }
  //ROS_INFO("rotate_distance:%f",rotate_distance);
  // Get current base pose in odombackup
  geometry_msgs::PoseStamped pose;
  pose.header.frame_id = "base_link";
  //pose.header.frame_id = "laser";
  pose.pose.orientation.w = 1.0;

  try
  {
    listener_.waitForTransform("odom", //"laser",//"odom",
                               pose.header.frame_id,
                               pose.header.stamp,
                               ros::Duration(0.1));
    listener_.transformPose("odom", pose, pose);
    //listener_.transformPose("laser", pose, pose);
  }
  catch (tf::TransformException const &ex)
  {
    //ROS_INFO("tf::TransformException");
    ROS_WARN_STREAM_THROTTLE(1.0, "Couldn't get transform from base_link to odom");
    stop();
    return false;
  }

  // If just getting started, stow starting pose
  if (!ready_)
  {
    start_ = pose;
    turning_ = false;
    ready_ = true;
  }

  if (turning_)
  {
    // Get yaw angles
    tf::Quaternion q1, q2;
    tf::quaternionMsgToTF(start_.pose.orientation, q1);
    tf::quaternionMsgToTF(pose.pose.orientation, q2);
    // double ang_start = angles::normalize_angle(tf::getYaw(q1));
    // double ang_end = angles::normalize_angle(tf::getYaw(q2));
    double theta = angles::normalize_angle(tf::getYaw(q2) - tf::getYaw(q1));
    double error = angles::normalize_angle(rotate_distance - theta);
    //ROS_INFO("ang_start:[%f],ang_end:[%f],theta:[%f],rotate_distance:[%f]",ang_start,ang_end,theta,rotate_distance);
    //ROS_INFO("theta:%f,error:%f",fabs(theta),fabs(error));
    if (fabs(error) < min_backup_rot_error ) //0.18)
    {
      stop();
      return true;
    }
    else if (rotate_distance > 0.0)
    {
      //command_.angular.z = std::min(2.0, fabs(error)*2.0);
      command_.angular.z = std::min(max_angular_velocity_, fabs(error)*max_angular_velocity_);
      //min_angular_velocity = 0.18
      command_.angular.z = std::copysign(std::max(fabs(command_.angular.z),0.18),command_.angular.z);
    }
    else
    {
      //command_.angular.z = std::max(-2.0, -fabs(error)*2.0);
      command_.angular.z = std::max(-max_angular_velocity_, -fabs(error)*max_angular_velocity_);
      //min_angular_velocity = 0.18
      command_.angular.z = std::copysign(std::max(fabs(command_.angular.z),0.18),command_.angular.z);
    }
    //ROS_INFO("rotate_distance:%f,command_.angular.z:%f",rotate_distance,command_.angular.z);
  }
  else
  {
    double dx = pose.pose.position.x - start_.pose.position.x;
    double dy = pose.pose.position.y - start_.pose.position.y;
    //ROS_INFO("Back distance: %f %f",distance,(dx * dx + dy * dy));
    if ((dx * dx + dy * dy) >= (distance * distance))
    {
      if (rotate_distance == 0.0)
      {
        stop();
        return true;
      }
      else
      {
        turning_ = true;
        command_.linear.x = 0.0;
      }
    }
    else
    {
      command_.linear.x = -0.1*reverse;
    }
  }
  cmd_vel_pub_.publish(command_);
  return false;
}
//-----------------------------------------------------------------------------
//-- 取得目前車體下的 command ------------------
bool BaseController::getCommand(geometry_msgs::Twist& command)
{
  command = command_;
  return true;
}
//-----------------------------------------------------------------------------
//-- 車體停止移動，並且reset相關控制旗標，以確保下次啟動參數 ------------------
void BaseController::stop()
{
  command_ = geometry_msgs::Twist();
  //ROS_INFO("Stop publish command:%f %f",command_.linear.x,command_.angular.z);
  cmd_vel_pub_.publish(command_);

  // Reset the backup controller
  ready_ = false;

  // Reset the approach controller
  dist_ = 0.4;
}
//-----------------------------------------------------------------------------
