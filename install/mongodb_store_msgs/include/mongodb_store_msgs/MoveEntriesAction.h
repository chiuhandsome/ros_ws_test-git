// Generated by gencpp from file mongodb_store_msgs/MoveEntriesAction.msg
// DO NOT EDIT!


#ifndef MONGODB_STORE_MSGS_MESSAGE_MOVEENTRIESACTION_H
#define MONGODB_STORE_MSGS_MESSAGE_MOVEENTRIESACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mongodb_store_msgs/MoveEntriesActionGoal.h>
#include <mongodb_store_msgs/MoveEntriesActionResult.h>
#include <mongodb_store_msgs/MoveEntriesActionFeedback.h>

namespace mongodb_store_msgs
{
template <class ContainerAllocator>
struct MoveEntriesAction_
{
  typedef MoveEntriesAction_<ContainerAllocator> Type;

  MoveEntriesAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  MoveEntriesAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::mongodb_store_msgs::MoveEntriesActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::mongodb_store_msgs::MoveEntriesActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> const> ConstPtr;

}; // struct MoveEntriesAction_

typedef ::mongodb_store_msgs::MoveEntriesAction_<std::allocator<void> > MoveEntriesAction;

typedef boost::shared_ptr< ::mongodb_store_msgs::MoveEntriesAction > MoveEntriesActionPtr;
typedef boost::shared_ptr< ::mongodb_store_msgs::MoveEntriesAction const> MoveEntriesActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mongodb_store_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "603d33caf9a321e4af460957d0a9266a";
  }

  static const char* value(const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x603d33caf9a321e4ULL;
  static const uint64_t static_value2 = 0xaf460957d0a9266aULL;
};

template<class ContainerAllocator>
struct DataType< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mongodb_store_msgs/MoveEntriesAction";
  }

  static const char* value(const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"MoveEntriesActionGoal action_goal\n"
"MoveEntriesActionResult action_result\n"
"MoveEntriesActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: mongodb_store_msgs/MoveEntriesActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"MoveEntriesGoal goal\n"
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
"MSG: mongodb_store_msgs/MoveEntriesGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# the db to move entries from\n"
"string database\n"
"# the collections to move entries from\n"
"StringList collections\n"
"# only entries before rospy.get_rostime() - move_before are moved. if 0, all are moved\n"
"duration move_before\n"
"# delete moved entries after replication\n"
"bool delete_after_move\n"
"# query to move entries by\n"
"StringPairList query\n"
"\n"
"================================================================================\n"
"MSG: mongodb_store_msgs/StringList\n"
"string[] data\n"
"\n"
"================================================================================\n"
"MSG: mongodb_store_msgs/StringPairList\n"
"StringPair[] pairs\n"
"\n"
"================================================================================\n"
"MSG: mongodb_store_msgs/StringPair\n"
"string first\n"
"string second\n"
"\n"
"================================================================================\n"
"MSG: mongodb_store_msgs/MoveEntriesActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"MoveEntriesResult result\n"
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
"MSG: mongodb_store_msgs/MoveEntriesResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"\n"
"================================================================================\n"
"MSG: mongodb_store_msgs/MoveEntriesActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"MoveEntriesFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: mongodb_store_msgs/MoveEntriesFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# the collections which have been operated on so far\n"
"string[] completed\n"
"\n"
;
  }

  static const char* value(const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveEntriesAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mongodb_store_msgs::MoveEntriesAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::mongodb_store_msgs::MoveEntriesActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::mongodb_store_msgs::MoveEntriesActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONGODB_STORE_MSGS_MESSAGE_MOVEENTRIESACTION_H
