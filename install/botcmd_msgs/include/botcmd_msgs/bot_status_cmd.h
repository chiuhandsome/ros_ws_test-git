// Generated by gencpp from file botcmd_msgs/bot_status_cmd.msg
// DO NOT EDIT!


#ifndef BOTCMD_MSGS_MESSAGE_BOT_STATUS_CMD_H
#define BOTCMD_MSGS_MESSAGE_BOT_STATUS_CMD_H

#include <ros/service_traits.h>


#include <botcmd_msgs/bot_status_cmdRequest.h>
#include <botcmd_msgs/bot_status_cmdResponse.h>


namespace botcmd_msgs
{

struct bot_status_cmd
{

typedef bot_status_cmdRequest Request;
typedef bot_status_cmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct bot_status_cmd
} // namespace botcmd_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::botcmd_msgs::bot_status_cmd > {
  static const char* value()
  {
    return "78fe28ceb8cdb5fbcfec0625a620666c";
  }

  static const char* value(const ::botcmd_msgs::bot_status_cmd&) { return value(); }
};

template<>
struct DataType< ::botcmd_msgs::bot_status_cmd > {
  static const char* value()
  {
    return "botcmd_msgs/bot_status_cmd";
  }

  static const char* value(const ::botcmd_msgs::bot_status_cmd&) { return value(); }
};


// service_traits::MD5Sum< ::botcmd_msgs::bot_status_cmdRequest> should match
// service_traits::MD5Sum< ::botcmd_msgs::bot_status_cmd >
template<>
struct MD5Sum< ::botcmd_msgs::bot_status_cmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::botcmd_msgs::bot_status_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_status_cmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::botcmd_msgs::bot_status_cmdRequest> should match
// service_traits::DataType< ::botcmd_msgs::bot_status_cmd >
template<>
struct DataType< ::botcmd_msgs::bot_status_cmdRequest>
{
  static const char* value()
  {
    return DataType< ::botcmd_msgs::bot_status_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_status_cmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::botcmd_msgs::bot_status_cmdResponse> should match
// service_traits::MD5Sum< ::botcmd_msgs::bot_status_cmd >
template<>
struct MD5Sum< ::botcmd_msgs::bot_status_cmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::botcmd_msgs::bot_status_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_status_cmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::botcmd_msgs::bot_status_cmdResponse> should match
// service_traits::DataType< ::botcmd_msgs::bot_status_cmd >
template<>
struct DataType< ::botcmd_msgs::bot_status_cmdResponse>
{
  static const char* value()
  {
    return DataType< ::botcmd_msgs::bot_status_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_status_cmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BOTCMD_MSGS_MESSAGE_BOT_STATUS_CMD_H