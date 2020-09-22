// Generated by gencpp from file mongodb_store_msgs/MongoUpdateMsg.msg
// DO NOT EDIT!


#ifndef MONGODB_STORE_MSGS_MESSAGE_MONGOUPDATEMSG_H
#define MONGODB_STORE_MSGS_MESSAGE_MONGOUPDATEMSG_H

#include <ros/service_traits.h>


#include <mongodb_store_msgs/MongoUpdateMsgRequest.h>
#include <mongodb_store_msgs/MongoUpdateMsgResponse.h>


namespace mongodb_store_msgs
{

struct MongoUpdateMsg
{

typedef MongoUpdateMsgRequest Request;
typedef MongoUpdateMsgResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MongoUpdateMsg
} // namespace mongodb_store_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mongodb_store_msgs::MongoUpdateMsg > {
  static const char* value()
  {
    return "c9a34b8e3509040b39c21bb4f3c2ca95";
  }

  static const char* value(const ::mongodb_store_msgs::MongoUpdateMsg&) { return value(); }
};

template<>
struct DataType< ::mongodb_store_msgs::MongoUpdateMsg > {
  static const char* value()
  {
    return "mongodb_store_msgs/MongoUpdateMsg";
  }

  static const char* value(const ::mongodb_store_msgs::MongoUpdateMsg&) { return value(); }
};


// service_traits::MD5Sum< ::mongodb_store_msgs::MongoUpdateMsgRequest> should match
// service_traits::MD5Sum< ::mongodb_store_msgs::MongoUpdateMsg >
template<>
struct MD5Sum< ::mongodb_store_msgs::MongoUpdateMsgRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mongodb_store_msgs::MongoUpdateMsg >::value();
  }
  static const char* value(const ::mongodb_store_msgs::MongoUpdateMsgRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mongodb_store_msgs::MongoUpdateMsgRequest> should match
// service_traits::DataType< ::mongodb_store_msgs::MongoUpdateMsg >
template<>
struct DataType< ::mongodb_store_msgs::MongoUpdateMsgRequest>
{
  static const char* value()
  {
    return DataType< ::mongodb_store_msgs::MongoUpdateMsg >::value();
  }
  static const char* value(const ::mongodb_store_msgs::MongoUpdateMsgRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mongodb_store_msgs::MongoUpdateMsgResponse> should match
// service_traits::MD5Sum< ::mongodb_store_msgs::MongoUpdateMsg >
template<>
struct MD5Sum< ::mongodb_store_msgs::MongoUpdateMsgResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mongodb_store_msgs::MongoUpdateMsg >::value();
  }
  static const char* value(const ::mongodb_store_msgs::MongoUpdateMsgResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mongodb_store_msgs::MongoUpdateMsgResponse> should match
// service_traits::DataType< ::mongodb_store_msgs::MongoUpdateMsg >
template<>
struct DataType< ::mongodb_store_msgs::MongoUpdateMsgResponse>
{
  static const char* value()
  {
    return DataType< ::mongodb_store_msgs::MongoUpdateMsg >::value();
  }
  static const char* value(const ::mongodb_store_msgs::MongoUpdateMsgResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MONGODB_STORE_MSGS_MESSAGE_MONGOUPDATEMSG_H
