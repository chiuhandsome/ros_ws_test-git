// Generated by gencpp from file botcmd_msgs/actBotCmdFeedback.msg
// DO NOT EDIT!


#ifndef BOTCMD_MSGS_MESSAGE_ACTBOTCMDFEEDBACK_H
#define BOTCMD_MSGS_MESSAGE_ACTBOTCMDFEEDBACK_H


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
struct actBotCmdFeedback_
{
  typedef actBotCmdFeedback_<ContainerAllocator> Type;

  actBotCmdFeedback_()
    : status(0)  {
    }
  actBotCmdFeedback_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct actBotCmdFeedback_

typedef ::botcmd_msgs::actBotCmdFeedback_<std::allocator<void> > actBotCmdFeedback;

typedef boost::shared_ptr< ::botcmd_msgs::actBotCmdFeedback > actBotCmdFeedbackPtr;
typedef boost::shared_ptr< ::botcmd_msgs::actBotCmdFeedback const> actBotCmdFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator1> & lhs, const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator1> & lhs, const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace botcmd_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "581cc55c12abfc219e446416014f6d0e";
  }

  static const char* value(const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x581cc55c12abfc21ULL;
  static const uint64_t static_value2 = 0x9e446416014f6d0eULL;
};

template<class ContainerAllocator>
struct DataType< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "botcmd_msgs/actBotCmdFeedback";
  }

  static const char* value(const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Feedback\n"
"int8    status\n"
"\n"
;
  }

  static const char* value(const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct actBotCmdFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::botcmd_msgs::actBotCmdFeedback_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BOTCMD_MSGS_MESSAGE_ACTBOTCMDFEEDBACK_H