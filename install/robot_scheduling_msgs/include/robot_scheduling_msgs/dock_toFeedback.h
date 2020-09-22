// Generated by gencpp from file robot_scheduling_msgs/dock_toFeedback.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_DOCK_TOFEEDBACK_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_DOCK_TOFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_scheduling_msgs
{
template <class ContainerAllocator>
struct dock_toFeedback_
{
  typedef dock_toFeedback_<ContainerAllocator> Type;

  dock_toFeedback_()
    : docked(false)  {
    }
  dock_toFeedback_(const ContainerAllocator& _alloc)
    : docked(false)  {
  (void)_alloc;
    }



   typedef uint8_t _docked_type;
  _docked_type docked;





  typedef boost::shared_ptr< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct dock_toFeedback_

typedef ::robot_scheduling_msgs::dock_toFeedback_<std::allocator<void> > dock_toFeedback;

typedef boost::shared_ptr< ::robot_scheduling_msgs::dock_toFeedback > dock_toFeedbackPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::dock_toFeedback const> dock_toFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.docked == rhs.docked;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a3ad9bbe144e1b2c5d7cff122465aa06";
  }

  static const char* value(const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa3ad9bbe144e1b2cULL;
  static const uint64_t static_value2 = 0x5d7cff122465aa06ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/dock_toFeedback";
  }

  static const char* value(const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"bool docked\n"
"\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.docked);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct dock_toFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::dock_toFeedback_<ContainerAllocator>& v)
  {
    s << indent << "docked: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.docked);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_DOCK_TOFEEDBACK_H