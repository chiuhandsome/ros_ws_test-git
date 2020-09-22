// Generated by gencpp from file cellctrl_control_msgs/cell_agv_basetype_cmd.msg
// DO NOT EDIT!


#ifndef CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_AGV_BASETYPE_CMD_H
#define CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_AGV_BASETYPE_CMD_H

#include <ros/service_traits.h>


#include <cellctrl_control_msgs/cell_agv_basetype_cmdRequest.h>
#include <cellctrl_control_msgs/cell_agv_basetype_cmdResponse.h>


namespace cellctrl_control_msgs
{

struct cell_agv_basetype_cmd
{

typedef cell_agv_basetype_cmdRequest Request;
typedef cell_agv_basetype_cmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct cell_agv_basetype_cmd
} // namespace cellctrl_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmd > {
  static const char* value()
  {
    return "11e37d39fe631d47c03fb6e0e1ac23c7";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_agv_basetype_cmd&) { return value(); }
};

template<>
struct DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmd > {
  static const char* value()
  {
    return "cellctrl_control_msgs/cell_agv_basetype_cmd";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_agv_basetype_cmd&) { return value(); }
};


// service_traits::MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmdRequest> should match
// service_traits::MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmd >
template<>
struct MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmd >::value();
  }
  static const char* value(const ::cellctrl_control_msgs::cell_agv_basetype_cmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmdRequest> should match
// service_traits::DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmd >
template<>
struct DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmdRequest>
{
  static const char* value()
  {
    return DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmd >::value();
  }
  static const char* value(const ::cellctrl_control_msgs::cell_agv_basetype_cmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmdResponse> should match
// service_traits::MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmd >
template<>
struct MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cellctrl_control_msgs::cell_agv_basetype_cmd >::value();
  }
  static const char* value(const ::cellctrl_control_msgs::cell_agv_basetype_cmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmdResponse> should match
// service_traits::DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmd >
template<>
struct DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmdResponse>
{
  static const char* value()
  {
    return DataType< ::cellctrl_control_msgs::cell_agv_basetype_cmd >::value();
  }
  static const char* value(const ::cellctrl_control_msgs::cell_agv_basetype_cmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_AGV_BASETYPE_CMD_H