// Generated by gencpp from file car_db_manager_msgs/TargerPos2dParametersCmd.msg
// DO NOT EDIT!


#ifndef CAR_DB_MANAGER_MSGS_MESSAGE_TARGERPOS2DPARAMETERSCMD_H
#define CAR_DB_MANAGER_MSGS_MESSAGE_TARGERPOS2DPARAMETERSCMD_H

#include <ros/service_traits.h>


#include <car_db_manager_msgs/TargerPos2dParametersCmdRequest.h>
#include <car_db_manager_msgs/TargerPos2dParametersCmdResponse.h>


namespace car_db_manager_msgs
{

struct TargerPos2dParametersCmd
{

typedef TargerPos2dParametersCmdRequest Request;
typedef TargerPos2dParametersCmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TargerPos2dParametersCmd
} // namespace car_db_manager_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmd > {
  static const char* value()
  {
    return "3ff1a4c4627a08e7a68201f9c99a163a";
  }

  static const char* value(const ::car_db_manager_msgs::TargerPos2dParametersCmd&) { return value(); }
};

template<>
struct DataType< ::car_db_manager_msgs::TargerPos2dParametersCmd > {
  static const char* value()
  {
    return "car_db_manager_msgs/TargerPos2dParametersCmd";
  }

  static const char* value(const ::car_db_manager_msgs::TargerPos2dParametersCmd&) { return value(); }
};


// service_traits::MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmdRequest> should match
// service_traits::MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmd >
template<>
struct MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmd >::value();
  }
  static const char* value(const ::car_db_manager_msgs::TargerPos2dParametersCmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::car_db_manager_msgs::TargerPos2dParametersCmdRequest> should match
// service_traits::DataType< ::car_db_manager_msgs::TargerPos2dParametersCmd >
template<>
struct DataType< ::car_db_manager_msgs::TargerPos2dParametersCmdRequest>
{
  static const char* value()
  {
    return DataType< ::car_db_manager_msgs::TargerPos2dParametersCmd >::value();
  }
  static const char* value(const ::car_db_manager_msgs::TargerPos2dParametersCmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmdResponse> should match
// service_traits::MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmd >
template<>
struct MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::car_db_manager_msgs::TargerPos2dParametersCmd >::value();
  }
  static const char* value(const ::car_db_manager_msgs::TargerPos2dParametersCmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::car_db_manager_msgs::TargerPos2dParametersCmdResponse> should match
// service_traits::DataType< ::car_db_manager_msgs::TargerPos2dParametersCmd >
template<>
struct DataType< ::car_db_manager_msgs::TargerPos2dParametersCmdResponse>
{
  static const char* value()
  {
    return DataType< ::car_db_manager_msgs::TargerPos2dParametersCmd >::value();
  }
  static const char* value(const ::car_db_manager_msgs::TargerPos2dParametersCmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAR_DB_MANAGER_MSGS_MESSAGE_TARGERPOS2DPARAMETERSCMD_H
