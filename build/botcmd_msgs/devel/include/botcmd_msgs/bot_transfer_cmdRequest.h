// Generated by gencpp from file botcmd_msgs/bot_transfer_cmdRequest.msg
// DO NOT EDIT!


#ifndef BOTCMD_MSGS_MESSAGE_BOT_TRANSFER_CMDREQUEST_H
#define BOTCMD_MSGS_MESSAGE_BOT_TRANSFER_CMDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace botcmd_msgs
{
template <class ContainerAllocator>
struct bot_transfer_cmdRequest_
{
  typedef bot_transfer_cmdRequest_<ContainerAllocator> Type;

  bot_transfer_cmdRequest_()
    : index_ID(0)
    , parameter()  {
    }
  bot_transfer_cmdRequest_(const ContainerAllocator& _alloc)
    : index_ID(0)
    , parameter(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _index_ID_type;
  _index_ID_type index_ID;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _parameter_type;
  _parameter_type parameter;





  typedef boost::shared_ptr< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct bot_transfer_cmdRequest_

typedef ::botcmd_msgs::bot_transfer_cmdRequest_<std::allocator<void> > bot_transfer_cmdRequest;

typedef boost::shared_ptr< ::botcmd_msgs::bot_transfer_cmdRequest > bot_transfer_cmdRequestPtr;
typedef boost::shared_ptr< ::botcmd_msgs::bot_transfer_cmdRequest const> bot_transfer_cmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator1> & lhs, const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.index_ID == rhs.index_ID &&
    lhs.parameter == rhs.parameter;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator1> & lhs, const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace botcmd_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a2d928b6bf9e3fdb10ea7ebb3f01344a";
  }

  static const char* value(const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa2d928b6bf9e3fdbULL;
  static const uint64_t static_value2 = 0x10ea7ebb3f01344aULL;
};

template<class ContainerAllocator>
struct DataType< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "botcmd_msgs/bot_transfer_cmdRequest";
  }

  static const char* value(const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 index_ID\n"
"string parameter\n"
;
  }

  static const char* value(const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index_ID);
      stream.next(m.parameter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct bot_transfer_cmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::botcmd_msgs::bot_transfer_cmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "index_ID: ";
    Printer<int8_t>::stream(s, indent + "  ", v.index_ID);
    s << indent << "parameter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.parameter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BOTCMD_MSGS_MESSAGE_BOT_TRANSFER_CMDREQUEST_H
