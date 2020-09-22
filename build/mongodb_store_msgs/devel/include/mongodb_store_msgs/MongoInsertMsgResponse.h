// Generated by gencpp from file mongodb_store_msgs/MongoInsertMsgResponse.msg
// DO NOT EDIT!


#ifndef MONGODB_STORE_MSGS_MESSAGE_MONGOINSERTMSGRESPONSE_H
#define MONGODB_STORE_MSGS_MESSAGE_MONGOINSERTMSGRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mongodb_store_msgs
{
template <class ContainerAllocator>
struct MongoInsertMsgResponse_
{
  typedef MongoInsertMsgResponse_<ContainerAllocator> Type;

  MongoInsertMsgResponse_()
    : id()  {
    }
  MongoInsertMsgResponse_(const ContainerAllocator& _alloc)
    : id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MongoInsertMsgResponse_

typedef ::mongodb_store_msgs::MongoInsertMsgResponse_<std::allocator<void> > MongoInsertMsgResponse;

typedef boost::shared_ptr< ::mongodb_store_msgs::MongoInsertMsgResponse > MongoInsertMsgResponsePtr;
typedef boost::shared_ptr< ::mongodb_store_msgs::MongoInsertMsgResponse const> MongoInsertMsgResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mongodb_store_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bbfcda76036ebbe3d36caf7af80b260c";
  }

  static const char* value(const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbbfcda76036ebbe3ULL;
  static const uint64_t static_value2 = 0xd36caf7af80b260cULL;
};

template<class ContainerAllocator>
struct DataType< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mongodb_store_msgs/MongoInsertMsgResponse";
  }

  static const char* value(const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# id of the inserted msg\n"
"string id\n"
;
  }

  static const char* value(const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MongoInsertMsgResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mongodb_store_msgs::MongoInsertMsgResponse_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONGODB_STORE_MSGS_MESSAGE_MONGOINSERTMSGRESPONSE_H
