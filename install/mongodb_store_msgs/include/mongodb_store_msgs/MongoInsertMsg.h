// Generated by gencpp from file mongodb_store_msgs/MongoInsertMsg.msg
// DO NOT EDIT!


#ifndef MONGODB_STORE_MSGS_MESSAGE_MONGOINSERTMSG_H
#define MONGODB_STORE_MSGS_MESSAGE_MONGOINSERTMSG_H

#include <ros/service_traits.h>


#include <mongodb_store_msgs/MongoInsertMsgRequest.h>
#include <mongodb_store_msgs/MongoInsertMsgResponse.h>


namespace mongodb_store_msgs
{

struct MongoInsertMsg
{

typedef MongoInsertMsgRequest Request;
typedef MongoInsertMsgResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MongoInsertMsg
} // namespace mongodb_store_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mongodb_store_msgs::MongoInsertMsg > {
  static const char* value()
  {
    return "1010faffc38f79deac2400dd47256e51";
  }

  static const char* value(const ::mongodb_store_msgs::MongoInsertMsg&) { return value(); }
};

template<>
struct DataType< ::mongodb_store_msgs::MongoInsertMsg > {
  static const char* value()
  {
    return "mongodb_store_msgs/MongoInsertMsg";
  }

  static const char* value(const ::mongodb_store_msgs::MongoInsertMsg&) { return value(); }
};


// service_traits::MD5Sum< ::mongodb_store_msgs::MongoInsertMsgRequest> should match
// service_traits::MD5Sum< ::mongodb_store_msgs::MongoInsertMsg >
template<>
struct MD5Sum< ::mongodb_store_msgs::MongoInsertMsgRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mongodb_store_msgs::MongoInsertMsg >::value();
  }
  static const char* value(const ::mongodb_store_msgs::MongoInsertMsgRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mongodb_store_msgs::MongoInsertMsgRequest> should match
// service_traits::DataType< ::mongodb_store_msgs::MongoInsertMsg >
template<>
struct DataType< ::mongodb_store_msgs::MongoInsertMsgRequest>
{
  static const char* value()
  {
    return DataType< ::mongodb_store_msgs::MongoInsertMsg >::value();
  }
  static const char* value(const ::mongodb_store_msgs::MongoInsertMsgRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mongodb_store_msgs::MongoInsertMsgResponse> should match
// service_traits::MD5Sum< ::mongodb_store_msgs::MongoInsertMsg >
template<>
struct MD5Sum< ::mongodb_store_msgs::MongoInsertMsgResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mongodb_store_msgs::MongoInsertMsg >::value();
  }
  static const char* value(const ::mongodb_store_msgs::MongoInsertMsgResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mongodb_store_msgs::MongoInsertMsgResponse> should match
// service_traits::DataType< ::mongodb_store_msgs::MongoInsertMsg >
template<>
struct DataType< ::mongodb_store_msgs::MongoInsertMsgResponse>
{
  static const char* value()
  {
    return DataType< ::mongodb_store_msgs::MongoInsertMsg >::value();
  }
  static const char* value(const ::mongodb_store_msgs::MongoInsertMsgResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MONGODB_STORE_MSGS_MESSAGE_MONGOINSERTMSG_H