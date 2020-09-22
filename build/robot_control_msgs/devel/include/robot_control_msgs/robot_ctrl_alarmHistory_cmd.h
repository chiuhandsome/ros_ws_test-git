// Generated by gencpp from file robot_control_msgs/robot_ctrl_alarmHistory_cmd.msg
// DO NOT EDIT!


#ifndef ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ALARMHISTORY_CMD_H
#define ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ALARMHISTORY_CMD_H

#include <ros/service_traits.h>


#include <robot_control_msgs/robot_ctrl_alarmHistory_cmdRequest.h>
#include <robot_control_msgs/robot_ctrl_alarmHistory_cmdResponse.h>


namespace robot_control_msgs
{

struct robot_ctrl_alarmHistory_cmd
{

typedef robot_ctrl_alarmHistory_cmdRequest Request;
typedef robot_ctrl_alarmHistory_cmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct robot_ctrl_alarmHistory_cmd
} // namespace robot_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd > {
  static const char* value()
  {
    return "86160692f07e28ff6a400e75ea300139";
  }

  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmHistory_cmd&) { return value(); }
};

template<>
struct DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd > {
  static const char* value()
  {
    return "robot_control_msgs/robot_ctrl_alarmHistory_cmd";
  }

  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmHistory_cmd&) { return value(); }
};


// service_traits::MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest> should match
// service_traits::MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd >
template<>
struct MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd >::value();
  }
  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest> should match
// service_traits::DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd >
template<>
struct DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest>
{
  static const char* value()
  {
    return DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd >::value();
  }
  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmHistory_cmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse> should match
// service_traits::MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd >
template<>
struct MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd >::value();
  }
  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse> should match
// service_traits::DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd >
template<>
struct DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse>
{
  static const char* value()
  {
    return DataType< ::robot_control_msgs::robot_ctrl_alarmHistory_cmd >::value();
  }
  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmHistory_cmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ALARMHISTORY_CMD_H