// Generated by gencpp from file pnp_msgs/PNPClearBuffer.msg
// DO NOT EDIT!


#ifndef PNP_MSGS_MESSAGE_PNPCLEARBUFFER_H
#define PNP_MSGS_MESSAGE_PNPCLEARBUFFER_H

#include <ros/service_traits.h>


#include <pnp_msgs/PNPClearBufferRequest.h>
#include <pnp_msgs/PNPClearBufferResponse.h>


namespace pnp_msgs
{

struct PNPClearBuffer
{

typedef PNPClearBufferRequest Request;
typedef PNPClearBufferResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PNPClearBuffer
} // namespace pnp_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pnp_msgs::PNPClearBuffer > {
  static const char* value()
  {
    return "70dde2d68f4afb0b125abb038f75e1e5";
  }

  static const char* value(const ::pnp_msgs::PNPClearBuffer&) { return value(); }
};

template<>
struct DataType< ::pnp_msgs::PNPClearBuffer > {
  static const char* value()
  {
    return "pnp_msgs/PNPClearBuffer";
  }

  static const char* value(const ::pnp_msgs::PNPClearBuffer&) { return value(); }
};


// service_traits::MD5Sum< ::pnp_msgs::PNPClearBufferRequest> should match
// service_traits::MD5Sum< ::pnp_msgs::PNPClearBuffer >
template<>
struct MD5Sum< ::pnp_msgs::PNPClearBufferRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pnp_msgs::PNPClearBuffer >::value();
  }
  static const char* value(const ::pnp_msgs::PNPClearBufferRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pnp_msgs::PNPClearBufferRequest> should match
// service_traits::DataType< ::pnp_msgs::PNPClearBuffer >
template<>
struct DataType< ::pnp_msgs::PNPClearBufferRequest>
{
  static const char* value()
  {
    return DataType< ::pnp_msgs::PNPClearBuffer >::value();
  }
  static const char* value(const ::pnp_msgs::PNPClearBufferRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pnp_msgs::PNPClearBufferResponse> should match
// service_traits::MD5Sum< ::pnp_msgs::PNPClearBuffer >
template<>
struct MD5Sum< ::pnp_msgs::PNPClearBufferResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pnp_msgs::PNPClearBuffer >::value();
  }
  static const char* value(const ::pnp_msgs::PNPClearBufferResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pnp_msgs::PNPClearBufferResponse> should match
// service_traits::DataType< ::pnp_msgs::PNPClearBuffer >
template<>
struct DataType< ::pnp_msgs::PNPClearBufferResponse>
{
  static const char* value()
  {
    return DataType< ::pnp_msgs::PNPClearBuffer >::value();
  }
  static const char* value(const ::pnp_msgs::PNPClearBufferResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PNP_MSGS_MESSAGE_PNPCLEARBUFFER_H
