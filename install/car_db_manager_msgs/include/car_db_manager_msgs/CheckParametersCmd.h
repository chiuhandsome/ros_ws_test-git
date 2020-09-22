// Generated by gencpp from file car_db_manager_msgs/CheckParametersCmd.msg
// DO NOT EDIT!


#ifndef CAR_DB_MANAGER_MSGS_MESSAGE_CHECKPARAMETERSCMD_H
#define CAR_DB_MANAGER_MSGS_MESSAGE_CHECKPARAMETERSCMD_H

#include <ros/service_traits.h>


#include <car_db_manager_msgs/CheckParametersCmdRequest.h>
#include <car_db_manager_msgs/CheckParametersCmdResponse.h>


namespace car_db_manager_msgs
{

struct CheckParametersCmd
{

typedef CheckParametersCmdRequest Request;
typedef CheckParametersCmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CheckParametersCmd
} // namespace car_db_manager_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::car_db_manager_msgs::CheckParametersCmd > {
  static const char* value()
  {
    return "67b016518b6edaa947e54833be560697";
  }

  static const char* value(const ::car_db_manager_msgs::CheckParametersCmd&) { return value(); }
};

template<>
struct DataType< ::car_db_manager_msgs::CheckParametersCmd > {
  static const char* value()
  {
    return "car_db_manager_msgs/CheckParametersCmd";
  }

  static const char* value(const ::car_db_manager_msgs::CheckParametersCmd&) { return value(); }
};


// service_traits::MD5Sum< ::car_db_manager_msgs::CheckParametersCmdRequest> should match
// service_traits::MD5Sum< ::car_db_manager_msgs::CheckParametersCmd >
template<>
struct MD5Sum< ::car_db_manager_msgs::CheckParametersCmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::car_db_manager_msgs::CheckParametersCmd >::value();
  }
  static const char* value(const ::car_db_manager_msgs::CheckParametersCmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::car_db_manager_msgs::CheckParametersCmdRequest> should match
// service_traits::DataType< ::car_db_manager_msgs::CheckParametersCmd >
template<>
struct DataType< ::car_db_manager_msgs::CheckParametersCmdRequest>
{
  static const char* value()
  {
    return DataType< ::car_db_manager_msgs::CheckParametersCmd >::value();
  }
  static const char* value(const ::car_db_manager_msgs::CheckParametersCmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::car_db_manager_msgs::CheckParametersCmdResponse> should match
// service_traits::MD5Sum< ::car_db_manager_msgs::CheckParametersCmd >
template<>
struct MD5Sum< ::car_db_manager_msgs::CheckParametersCmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::car_db_manager_msgs::CheckParametersCmd >::value();
  }
  static const char* value(const ::car_db_manager_msgs::CheckParametersCmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::car_db_manager_msgs::CheckParametersCmdResponse> should match
// service_traits::DataType< ::car_db_manager_msgs::CheckParametersCmd >
template<>
struct DataType< ::car_db_manager_msgs::CheckParametersCmdResponse>
{
  static const char* value()
  {
    return DataType< ::car_db_manager_msgs::CheckParametersCmd >::value();
  }
  static const char* value(const ::car_db_manager_msgs::CheckParametersCmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAR_DB_MANAGER_MSGS_MESSAGE_CHECKPARAMETERSCMD_H
