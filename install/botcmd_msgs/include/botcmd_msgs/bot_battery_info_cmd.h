// Generated by gencpp from file botcmd_msgs/bot_battery_info_cmd.msg
// DO NOT EDIT!


#ifndef BOTCMD_MSGS_MESSAGE_BOT_BATTERY_INFO_CMD_H
#define BOTCMD_MSGS_MESSAGE_BOT_BATTERY_INFO_CMD_H

#include <ros/service_traits.h>


#include <botcmd_msgs/bot_battery_info_cmdRequest.h>
#include <botcmd_msgs/bot_battery_info_cmdResponse.h>


namespace botcmd_msgs
{

struct bot_battery_info_cmd
{

typedef bot_battery_info_cmdRequest Request;
typedef bot_battery_info_cmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct bot_battery_info_cmd
} // namespace botcmd_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::botcmd_msgs::bot_battery_info_cmd > {
  static const char* value()
  {
    return "37f5b24189cc92ce3ca44682c06b0a43";
  }

  static const char* value(const ::botcmd_msgs::bot_battery_info_cmd&) { return value(); }
};

template<>
struct DataType< ::botcmd_msgs::bot_battery_info_cmd > {
  static const char* value()
  {
    return "botcmd_msgs/bot_battery_info_cmd";
  }

  static const char* value(const ::botcmd_msgs::bot_battery_info_cmd&) { return value(); }
};


// service_traits::MD5Sum< ::botcmd_msgs::bot_battery_info_cmdRequest> should match
// service_traits::MD5Sum< ::botcmd_msgs::bot_battery_info_cmd >
template<>
struct MD5Sum< ::botcmd_msgs::bot_battery_info_cmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::botcmd_msgs::bot_battery_info_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_battery_info_cmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::botcmd_msgs::bot_battery_info_cmdRequest> should match
// service_traits::DataType< ::botcmd_msgs::bot_battery_info_cmd >
template<>
struct DataType< ::botcmd_msgs::bot_battery_info_cmdRequest>
{
  static const char* value()
  {
    return DataType< ::botcmd_msgs::bot_battery_info_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_battery_info_cmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::botcmd_msgs::bot_battery_info_cmdResponse> should match
// service_traits::MD5Sum< ::botcmd_msgs::bot_battery_info_cmd >
template<>
struct MD5Sum< ::botcmd_msgs::bot_battery_info_cmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::botcmd_msgs::bot_battery_info_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_battery_info_cmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::botcmd_msgs::bot_battery_info_cmdResponse> should match
// service_traits::DataType< ::botcmd_msgs::bot_battery_info_cmd >
template<>
struct DataType< ::botcmd_msgs::bot_battery_info_cmdResponse>
{
  static const char* value()
  {
    return DataType< ::botcmd_msgs::bot_battery_info_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_battery_info_cmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BOTCMD_MSGS_MESSAGE_BOT_BATTERY_INFO_CMD_H
