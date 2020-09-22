// Generated by gencpp from file botcmd_msgs/bot_di_cmdResponse.msg
// DO NOT EDIT!


#ifndef BOTCMD_MSGS_MESSAGE_BOT_DI_CMDRESPONSE_H
#define BOTCMD_MSGS_MESSAGE_BOT_DI_CMDRESPONSE_H


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
struct bot_di_cmdResponse_
{
  typedef bot_di_cmdResponse_<ContainerAllocator> Type;

  bot_di_cmdResponse_()
    : result(false)
    , status()  {
    }
  bot_di_cmdResponse_(const ContainerAllocator& _alloc)
    : result(false)
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct bot_di_cmdResponse_

typedef ::botcmd_msgs::bot_di_cmdResponse_<std::allocator<void> > bot_di_cmdResponse;

typedef boost::shared_ptr< ::botcmd_msgs::bot_di_cmdResponse > bot_di_cmdResponsePtr;
typedef boost::shared_ptr< ::botcmd_msgs::bot_di_cmdResponse const> bot_di_cmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator1> & lhs, const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator1> & lhs, const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace botcmd_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0bc7175d2e8b28232e05eee0ae7045d1";
  }

  static const char* value(const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0bc7175d2e8b2823ULL;
  static const uint64_t static_value2 = 0x2e05eee0ae7045d1ULL;
};

template<class ContainerAllocator>
struct DataType< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "botcmd_msgs/bot_di_cmdResponse";
  }

  static const char* value(const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"string status\n"
"\n"
;
  }

  static const char* value(const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct bot_di_cmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::botcmd_msgs::bot_di_cmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BOTCMD_MSGS_MESSAGE_BOT_DI_CMDRESPONSE_H
