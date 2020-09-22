// Generated by gencpp from file botcmd_msgs/actBotCmdResult.msg
// DO NOT EDIT!


#ifndef BOTCMD_MSGS_MESSAGE_ACTBOTCMDRESULT_H
#define BOTCMD_MSGS_MESSAGE_ACTBOTCMDRESULT_H


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
struct actBotCmdResult_
{
  typedef actBotCmdResult_<ContainerAllocator> Type;

  actBotCmdResult_()
    : success(false)  {
    }
  actBotCmdResult_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> const> ConstPtr;

}; // struct actBotCmdResult_

typedef ::botcmd_msgs::actBotCmdResult_<std::allocator<void> > actBotCmdResult;

typedef boost::shared_ptr< ::botcmd_msgs::actBotCmdResult > actBotCmdResultPtr;
typedef boost::shared_ptr< ::botcmd_msgs::actBotCmdResult const> actBotCmdResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator1> & lhs, const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator1> & lhs, const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace botcmd_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "botcmd_msgs/actBotCmdResult";
  }

  static const char* value(const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Result\n"
"bool    success\n"
;
  }

  static const char* value(const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct actBotCmdResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::botcmd_msgs::actBotCmdResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::botcmd_msgs::actBotCmdResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BOTCMD_MSGS_MESSAGE_ACTBOTCMDRESULT_H