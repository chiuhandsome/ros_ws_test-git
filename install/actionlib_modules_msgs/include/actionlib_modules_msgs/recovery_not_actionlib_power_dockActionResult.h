// Generated by gencpp from file actionlib_modules_msgs/recovery_not_actionlib_power_dockActionResult.msg
// DO NOT EDIT!


#ifndef ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_POWER_DOCKACTIONRESULT_H
#define ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_POWER_DOCKACTIONRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalStatus.h>
#include <actionlib_modules_msgs/recovery_not_actionlib_power_dockResult.h>

namespace actionlib_modules_msgs
{
template <class ContainerAllocator>
struct recovery_not_actionlib_power_dockActionResult_
{
  typedef recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> Type;

  recovery_not_actionlib_power_dockActionResult_()
    : header()
    , status()
    , result()  {
    }
  recovery_not_actionlib_power_dockActionResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(_alloc)
    , result(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::actionlib_modules_msgs::recovery_not_actionlib_power_dockResult_<ContainerAllocator>  _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> const> ConstPtr;

}; // struct recovery_not_actionlib_power_dockActionResult_

typedef ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<std::allocator<void> > recovery_not_actionlib_power_dockActionResult;

typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult > recovery_not_actionlib_power_dockActionResultPtr;
typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult const> recovery_not_actionlib_power_dockActionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator1> & lhs, const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.status == rhs.status &&
    lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator1> & lhs, const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace actionlib_modules_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "265c3fc2da9bf234694fecc2e953ae85";
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x265c3fc2da9bf234ULL;
  static const uint64_t static_value2 = 0x694fecc2e953ae85ULL;
};

template<class ContainerAllocator>
struct DataType< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actionlib_modules_msgs/recovery_not_actionlib_power_dockActionResult";
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"recovery_not_actionlib_power_dockResult result\n"
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
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
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
"MSG: actionlib_modules_msgs/recovery_not_actionlib_power_dockResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"uint8 OK=1\n"
"uint8 NOT_OK=2\n"
"uint8 TIMED_OUT=3\n"
"uint8 result\n"
;
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct recovery_not_actionlib_power_dockActionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::actionlib_modules_msgs::recovery_not_actionlib_power_dockActionResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "result: ";
    s << std::endl;
    Printer< ::actionlib_modules_msgs::recovery_not_actionlib_power_dockResult_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_POWER_DOCKACTIONRESULT_H
