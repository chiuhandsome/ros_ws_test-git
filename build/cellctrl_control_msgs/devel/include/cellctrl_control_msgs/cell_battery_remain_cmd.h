// Generated by gencpp from file cellctrl_control_msgs/cell_battery_remain_cmd.msg
// DO NOT EDIT!


#ifndef CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_BATTERY_REMAIN_CMD_H
#define CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_BATTERY_REMAIN_CMD_H

#include <ros/service_traits.h>


#include <cellctrl_control_msgs/cell_battery_remain_cmdRequest.h>
#include <cellctrl_control_msgs/cell_battery_remain_cmdResponse.h>


namespace cellctrl_control_msgs
{

struct cell_battery_remain_cmd
{

typedef cell_battery_remain_cmdRequest Request;
typedef cell_battery_remain_cmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct cell_battery_remain_cmd
} // namespace cellctrl_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmd > {
  static const char* value()
  {
    return "04e8785354304652029d909ae1c4c266";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_battery_remain_cmd&) { return value(); }
};

template<>
struct DataType< ::cellctrl_control_msgs::cell_battery_remain_cmd > {
  static const char* value()
  {
    return "cellctrl_control_msgs/cell_battery_remain_cmd";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_battery_remain_cmd&) { return value(); }
};


// service_traits::MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmdRequest> should match
// service_traits::MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmd >
template<>
struct MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmd >::value();
  }
  static const char* value(const ::cellctrl_control_msgs::cell_battery_remain_cmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cellctrl_control_msgs::cell_battery_remain_cmdRequest> should match
// service_traits::DataType< ::cellctrl_control_msgs::cell_battery_remain_cmd >
template<>
struct DataType< ::cellctrl_control_msgs::cell_battery_remain_cmdRequest>
{
  static const char* value()
  {
    return DataType< ::cellctrl_control_msgs::cell_battery_remain_cmd >::value();
  }
  static const char* value(const ::cellctrl_control_msgs::cell_battery_remain_cmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmdResponse> should match
// service_traits::MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmd >
template<>
struct MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cellctrl_control_msgs::cell_battery_remain_cmd >::value();
  }
  static const char* value(const ::cellctrl_control_msgs::cell_battery_remain_cmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cellctrl_control_msgs::cell_battery_remain_cmdResponse> should match
// service_traits::DataType< ::cellctrl_control_msgs::cell_battery_remain_cmd >
template<>
struct DataType< ::cellctrl_control_msgs::cell_battery_remain_cmdResponse>
{
  static const char* value()
  {
    return DataType< ::cellctrl_control_msgs::cell_battery_remain_cmd >::value();
  }
  static const char* value(const ::cellctrl_control_msgs::cell_battery_remain_cmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_BATTERY_REMAIN_CMD_H
