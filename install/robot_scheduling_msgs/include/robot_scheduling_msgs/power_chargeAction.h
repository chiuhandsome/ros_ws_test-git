// Generated by gencpp from file robot_scheduling_msgs/power_chargeAction.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_POWER_CHARGEACTION_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_POWER_CHARGEACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_scheduling_msgs/power_chargeActionGoal.h>
#include <robot_scheduling_msgs/power_chargeActionResult.h>
#include <robot_scheduling_msgs/power_chargeActionFeedback.h>

namespace robot_scheduling_msgs
{
template <class ContainerAllocator>
struct power_chargeAction_
{
  typedef power_chargeAction_<ContainerAllocator> Type;

  power_chargeAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  power_chargeAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robot_scheduling_msgs::power_chargeActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::robot_scheduling_msgs::power_chargeActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::robot_scheduling_msgs::power_chargeActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> const> ConstPtr;

}; // struct power_chargeAction_

typedef ::robot_scheduling_msgs::power_chargeAction_<std::allocator<void> > power_chargeAction;

typedef boost::shared_ptr< ::robot_scheduling_msgs::power_chargeAction > power_chargeActionPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::power_chargeAction const> power_chargeActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8266ff4ea3587f4d580ee4f104204422";
  }

  static const char* value(const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8266ff4ea3587f4dULL;
  static const uint64_t static_value2 = 0x580ee4f104204422ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/power_chargeAction";
  }

  static const char* value(const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"power_chargeActionGoal action_goal\n"
"power_chargeActionResult action_result\n"
"power_chargeActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: robot_scheduling_msgs/power_chargeActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"power_chargeGoal goal\n"
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
"MSG: robot_scheduling_msgs/power_chargeGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"uint8 CHARGE_IO=1\n"
"uint8 charge_type\n"
"string charge_id\n"
"\n"
"================================================================================\n"
"MSG: robot_scheduling_msgs/power_chargeActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"power_chargeResult result\n"
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
"MSG: robot_scheduling_msgs/power_chargeResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"uint8 OK=1\n"
"uint8 NOT_OK=2\n"
"uint8 TIMED_OUT=3\n"
"uint8 OUT_OF_TIMES=4\n"
"uint8 NOT_CHARGE_TYPE=5\n"
"uint8 result\n"
"\n"
"================================================================================\n"
"MSG: robot_scheduling_msgs/power_chargeActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"power_chargeFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: robot_scheduling_msgs/power_chargeFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"uint8 CHARGE_NONE=0\n"
"uint8 CHARGE_PRE_CHECK_OK=1\n"
"uint8 CHARGE_CHECK_OK=2\n"
"uint8 CHARGEING=3\n"
"uint8 CHARGE_OK=4\n"
"uint8 charge_fb_state\n"
"\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct power_chargeAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::power_chargeAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::robot_scheduling_msgs::power_chargeActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::robot_scheduling_msgs::power_chargeActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::robot_scheduling_msgs::power_chargeActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_POWER_CHARGEACTION_H