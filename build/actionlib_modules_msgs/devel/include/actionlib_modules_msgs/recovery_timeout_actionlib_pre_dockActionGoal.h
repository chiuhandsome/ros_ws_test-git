// Generated by gencpp from file actionlib_modules_msgs/recovery_timeout_actionlib_pre_dockActionGoal.msg
// DO NOT EDIT!


#ifndef ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_TIMEOUT_ACTIONLIB_PRE_DOCKACTIONGOAL_H
#define ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_TIMEOUT_ACTIONLIB_PRE_DOCKACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <actionlib_modules_msgs/recovery_timeout_actionlib_pre_dockGoal.h>

namespace actionlib_modules_msgs
{
template <class ContainerAllocator>
struct recovery_timeout_actionlib_pre_dockActionGoal_
{
  typedef recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> Type;

  recovery_timeout_actionlib_pre_dockActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  recovery_timeout_actionlib_pre_dockActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct recovery_timeout_actionlib_pre_dockActionGoal_

typedef ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<std::allocator<void> > recovery_timeout_actionlib_pre_dockActionGoal;

typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal > recovery_timeout_actionlib_pre_dockActionGoalPtr;
typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal const> recovery_timeout_actionlib_pre_dockActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator1> & lhs, const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator1> & lhs, const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace actionlib_modules_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4b30be6cd12b9e72826df56b481f40e0";
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4b30be6cd12b9e72ULL;
  static const uint64_t static_value2 = 0x826df56b481f40e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actionlib_modules_msgs/recovery_timeout_actionlib_pre_dockActionGoal";
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"recovery_timeout_actionlib_pre_dockGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: actionlib_modules_msgs/recovery_timeout_actionlib_pre_dockGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
;
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct recovery_timeout_actionlib_pre_dockActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::actionlib_modules_msgs::recovery_timeout_actionlib_pre_dockGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_TIMEOUT_ACTIONLIB_PRE_DOCKACTIONGOAL_H
