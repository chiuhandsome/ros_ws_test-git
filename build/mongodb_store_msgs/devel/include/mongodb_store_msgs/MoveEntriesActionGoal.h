// Generated by gencpp from file mongodb_store_msgs/MoveEntriesActionGoal.msg
// DO NOT EDIT!


#ifndef MONGODB_STORE_MSGS_MESSAGE_MOVEENTRIESACTIONGOAL_H
#define MONGODB_STORE_MSGS_MESSAGE_MOVEENTRIESACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <mongodb_store_msgs/MoveEntriesGoal.h>

namespace mongodb_store_msgs
{
template <class ContainerAllocator>
struct MoveEntriesActionGoal_
{
  typedef MoveEntriesActionGoal_<ContainerAllocator> Type;

  MoveEntriesActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  MoveEntriesActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::mongodb_store_msgs::MoveEntriesGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MoveEntriesActionGoal_

typedef ::mongodb_store_msgs::MoveEntriesActionGoal_<std::allocator<void> > MoveEntriesActionGoal;

typedef boost::shared_ptr< ::mongodb_store_msgs::MoveEntriesActionGoal > MoveEntriesActionGoalPtr;
typedef boost::shared_ptr< ::mongodb_store_msgs::MoveEntriesActionGoal const> MoveEntriesActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mongodb_store_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8cd0c3d38e1c3ed7bce235f7ebbaf759";
  }

  static const char* value(const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8cd0c3d38e1c3ed7ULL;
  static const uint64_t static_value2 = 0xbce235f7ebbaf759ULL;
};

template<class ContainerAllocator>
struct DataType< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mongodb_store_msgs/MoveEntriesActionGoal";
  }

  static const char* value(const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
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
;
  }

  static const char* value(const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveEntriesActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mongodb_store_msgs::MoveEntriesActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::mongodb_store_msgs::MoveEntriesGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONGODB_STORE_MSGS_MESSAGE_MOVEENTRIESACTIONGOAL_H
