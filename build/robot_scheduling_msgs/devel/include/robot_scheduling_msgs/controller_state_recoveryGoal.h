// Generated by gencpp from file robot_scheduling_msgs/controller_state_recoveryGoal.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_CONTROLLER_STATE_RECOVERYGOAL_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_CONTROLLER_STATE_RECOVERYGOAL_H


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
struct controller_state_recoveryGoal_
{
  typedef controller_state_recoveryGoal_<ContainerAllocator> Type;

  controller_state_recoveryGoal_()
    : current_status(0)  {
    }
  controller_state_recoveryGoal_(const ContainerAllocator& _alloc)
    : current_status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _current_status_type;
  _current_status_type current_status;





  typedef boost::shared_ptr< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> const> ConstPtr;

}; // struct controller_state_recoveryGoal_

typedef ::robot_scheduling_msgs::controller_state_recoveryGoal_<std::allocator<void> > controller_state_recoveryGoal;

typedef boost::shared_ptr< ::robot_scheduling_msgs::controller_state_recoveryGoal > controller_state_recoveryGoalPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::controller_state_recoveryGoal const> controller_state_recoveryGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator2> & rhs)
{
  return lhs.current_status == rhs.current_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8ec17b975c5508f52c876b871abdf40";
  }

  static const char* value(const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8ec17b975c5508fULL;
  static const uint64_t static_value2 = 0x52c876b871abdf40ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/controller_state_recoveryGoal";
  }

  static const char* value(const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"uint8 current_status\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct controller_state_recoveryGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::controller_state_recoveryGoal_<ContainerAllocator>& v)
  {
    s << indent << "current_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.current_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_CONTROLLER_STATE_RECOVERYGOAL_H