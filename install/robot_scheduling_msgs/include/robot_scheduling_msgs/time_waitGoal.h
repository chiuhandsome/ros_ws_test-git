// Generated by gencpp from file robot_scheduling_msgs/time_waitGoal.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_TIME_WAITGOAL_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_TIME_WAITGOAL_H


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
struct time_waitGoal_
{
  typedef time_waitGoal_<ContainerAllocator> Type;

  time_waitGoal_()
    : cmd_type(0)
    , cmd_time(0.0)
    , time_wait_ac_name()  {
    }
  time_waitGoal_(const ContainerAllocator& _alloc)
    : cmd_type(0)
    , cmd_time(0.0)
    , time_wait_ac_name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _cmd_type_type;
  _cmd_type_type cmd_type;

   typedef float _cmd_time_type;
  _cmd_time_type cmd_time;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _time_wait_ac_name_type;
  _time_wait_ac_name_type time_wait_ac_name;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(NORMAL)
  #undef NORMAL
#endif
#if defined(_WIN32) && defined(PARAMETER)
  #undef PARAMETER
#endif

  enum {
    NORMAL = 1u,
    PARAMETER = 2u,
  };


  typedef boost::shared_ptr< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> const> ConstPtr;

}; // struct time_waitGoal_

typedef ::robot_scheduling_msgs::time_waitGoal_<std::allocator<void> > time_waitGoal;

typedef boost::shared_ptr< ::robot_scheduling_msgs::time_waitGoal > time_waitGoalPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::time_waitGoal const> time_waitGoalConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_type == rhs.cmd_type &&
    lhs.cmd_time == rhs.cmd_time &&
    lhs.time_wait_ac_name == rhs.time_wait_ac_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fe11ba37038c6ebc8694fd608ddc333f";
  }

  static const char* value(const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfe11ba37038c6ebcULL;
  static const uint64_t static_value2 = 0x8694fd608ddc333fULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/time_waitGoal";
  }

  static const char* value(const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"uint8 NORMAL=1\n"
"uint8 PARAMETER=2\n"
"uint8 cmd_type\n"
"float32 cmd_time	\n"
"string time_wait_ac_name\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_type);
      stream.next(m.cmd_time);
      stream.next(m.time_wait_ac_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct time_waitGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::time_waitGoal_<ContainerAllocator>& v)
  {
    s << indent << "cmd_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_type);
    s << indent << "cmd_time: ";
    Printer<float>::stream(s, indent + "  ", v.cmd_time);
    s << indent << "time_wait_ac_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.time_wait_ac_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_TIME_WAITGOAL_H
