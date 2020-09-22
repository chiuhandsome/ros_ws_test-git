// Generated by gencpp from file botcmd_msgs/bot_transfer_cmd.msg
// DO NOT EDIT!


#ifndef BOTCMD_MSGS_MESSAGE_BOT_TRANSFER_CMD_H
#define BOTCMD_MSGS_MESSAGE_BOT_TRANSFER_CMD_H

#include <ros/service_traits.h>


#include <botcmd_msgs/bot_transfer_cmdRequest.h>
#include <botcmd_msgs/bot_transfer_cmdResponse.h>


namespace botcmd_msgs
{

struct bot_transfer_cmd
{

typedef bot_transfer_cmdRequest Request;
typedef bot_transfer_cmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct bot_transfer_cmd
} // namespace botcmd_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::botcmd_msgs::bot_transfer_cmd > {
  static const char* value()
  {
    return "770bce408b30c62eb35300571e79267e";
  }

  static const char* value(const ::botcmd_msgs::bot_transfer_cmd&) { return value(); }
};

template<>
struct DataType< ::botcmd_msgs::bot_transfer_cmd > {
  static const char* value()
  {
    return "botcmd_msgs/bot_transfer_cmd";
  }

  static const char* value(const ::botcmd_msgs::bot_transfer_cmd&) { return value(); }
};


// service_traits::MD5Sum< ::botcmd_msgs::bot_transfer_cmdRequest> should match
// service_traits::MD5Sum< ::botcmd_msgs::bot_transfer_cmd >
template<>
struct MD5Sum< ::botcmd_msgs::bot_transfer_cmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::botcmd_msgs::bot_transfer_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_transfer_cmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::botcmd_msgs::bot_transfer_cmdRequest> should match
// service_traits::DataType< ::botcmd_msgs::bot_transfer_cmd >
template<>
struct DataType< ::botcmd_msgs::bot_transfer_cmdRequest>
{
  static const char* value()
  {
    return DataType< ::botcmd_msgs::bot_transfer_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_transfer_cmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::botcmd_msgs::bot_transfer_cmdResponse> should match
// service_traits::MD5Sum< ::botcmd_msgs::bot_transfer_cmd >
template<>
struct MD5Sum< ::botcmd_msgs::bot_transfer_cmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::botcmd_msgs::bot_transfer_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_transfer_cmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::botcmd_msgs::bot_transfer_cmdResponse> should match
// service_traits::DataType< ::botcmd_msgs::bot_transfer_cmd >
template<>
struct DataType< ::botcmd_msgs::bot_transfer_cmdResponse>
{
  static const char* value()
  {
    return DataType< ::botcmd_msgs::bot_transfer_cmd >::value();
  }
  static const char* value(const ::botcmd_msgs::bot_transfer_cmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BOTCMD_MSGS_MESSAGE_BOT_TRANSFER_CMD_H