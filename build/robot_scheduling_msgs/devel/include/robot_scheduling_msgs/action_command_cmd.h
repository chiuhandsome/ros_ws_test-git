// Generated by gencpp from file robot_scheduling_msgs/action_command_cmd.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMD_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMD_H

#include <ros/service_traits.h>


#include <robot_scheduling_msgs/action_command_cmdRequest.h>
#include <robot_scheduling_msgs/action_command_cmdResponse.h>


namespace robot_scheduling_msgs
{

struct action_command_cmd
{

typedef action_command_cmdRequest Request;
typedef action_command_cmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct action_command_cmd
} // namespace robot_scheduling_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_scheduling_msgs::action_command_cmd > {
  static const char* value()
  {
    return "c70509ca0082e9e32c4734aad4c091af";
  }

  static const char* value(const ::robot_scheduling_msgs::action_command_cmd&) { return value(); }
};

template<>
struct DataType< ::robot_scheduling_msgs::action_command_cmd > {
  static const char* value()
  {
    return "robot_scheduling_msgs/action_command_cmd";
  }

  static const char* value(const ::robot_scheduling_msgs::action_command_cmd&) { return value(); }
};


// service_traits::MD5Sum< ::robot_scheduling_msgs::action_command_cmdRequest> should match
// service_traits::MD5Sum< ::robot_scheduling_msgs::action_command_cmd >
template<>
struct MD5Sum< ::robot_scheduling_msgs::action_command_cmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_scheduling_msgs::action_command_cmd >::value();
  }
  static const char* value(const ::robot_scheduling_msgs::action_command_cmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_scheduling_msgs::action_command_cmdRequest> should match
// service_traits::DataType< ::robot_scheduling_msgs::action_command_cmd >
template<>
struct DataType< ::robot_scheduling_msgs::action_command_cmdRequest>
{
  static const char* value()
  {
    return DataType< ::robot_scheduling_msgs::action_command_cmd >::value();
  }
  static const char* value(const ::robot_scheduling_msgs::action_command_cmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_scheduling_msgs::action_command_cmdResponse> should match
// service_traits::MD5Sum< ::robot_scheduling_msgs::action_command_cmd >
template<>
struct MD5Sum< ::robot_scheduling_msgs::action_command_cmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_scheduling_msgs::action_command_cmd >::value();
  }
  static const char* value(const ::robot_scheduling_msgs::action_command_cmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_scheduling_msgs::action_command_cmdResponse> should match
// service_traits::DataType< ::robot_scheduling_msgs::action_command_cmd >
template<>
struct DataType< ::robot_scheduling_msgs::action_command_cmdResponse>
{
  static const char* value()
  {
    return DataType< ::robot_scheduling_msgs::action_command_cmd >::value();
  }
  static const char* value(const ::robot_scheduling_msgs::action_command_cmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMD_H
