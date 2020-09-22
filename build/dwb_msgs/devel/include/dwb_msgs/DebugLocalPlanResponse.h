// Generated by gencpp from file dwb_msgs/DebugLocalPlanResponse.msg
// DO NOT EDIT!


#ifndef DWB_MSGS_MESSAGE_DEBUGLOCALPLANRESPONSE_H
#define DWB_MSGS_MESSAGE_DEBUGLOCALPLANRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dwb_msgs/LocalPlanEvaluation.h>

namespace dwb_msgs
{
template <class ContainerAllocator>
struct DebugLocalPlanResponse_
{
  typedef DebugLocalPlanResponse_<ContainerAllocator> Type;

  DebugLocalPlanResponse_()
    : results()  {
    }
  DebugLocalPlanResponse_(const ContainerAllocator& _alloc)
    : results(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator>  _results_type;
  _results_type results;





  typedef boost::shared_ptr< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DebugLocalPlanResponse_

typedef ::dwb_msgs::DebugLocalPlanResponse_<std::allocator<void> > DebugLocalPlanResponse;

typedef boost::shared_ptr< ::dwb_msgs::DebugLocalPlanResponse > DebugLocalPlanResponsePtr;
typedef boost::shared_ptr< ::dwb_msgs::DebugLocalPlanResponse const> DebugLocalPlanResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator1> & lhs, const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator2> & rhs)
{
  return lhs.results == rhs.results;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator1> & lhs, const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dwb_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a386758bd988bd919d7a5a83bc925094";
  }

  static const char* value(const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa386758bd988bd91ULL;
  static const uint64_t static_value2 = 0x9d7a5a83bc925094ULL;
};

template<class ContainerAllocator>
struct DataType< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dwb_msgs/DebugLocalPlanResponse";
  }

  static const char* value(const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "LocalPlanEvaluation results\n"
"\n"
"\n"
"================================================================================\n"
"MSG: dwb_msgs/LocalPlanEvaluation\n"
"# Full Scoring for running the local planner\n"
"\n"
"# Header, used for timestamp\n"
"Header header\n"
"# All the trajectories evaluated and their scores\n"
"TrajectoryScore[] twists\n"
"# Convenience index of the best (lowest) score in the twists array\n"
"uint16 best_index\n"
"# Convenience index of the worst (highest) score in the twists array. Useful for scaling.\n"
"uint16 worst_index\n"
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
"MSG: dwb_msgs/TrajectoryScore\n"
"# Complete scoring for a given twist.\n"
"\n"
"# The trajectory being scored\n"
"Trajectory2D traj\n"
"# The Scores for each of the critics employed\n"
"CriticScore[] scores\n"
"# Convenience member that totals the critic scores\n"
"float32 total\n"
"\n"
"================================================================================\n"
"MSG: dwb_msgs/Trajectory2D\n"
"# For a given velocity command, the poses that the robot will go to in the allotted time.\n"
"\n"
"# Input Velocity\n"
"nav_2d_msgs/Twist2D velocity\n"
"\n"
"# Poses the robot will go to, given our kinematic model\n"
"geometry_msgs/Pose2D[] poses\n"
"\n"
"# Time difference between the current pose and the poses in the trajectory.\n"
"# Parallel array to poses. Length should be the same.\n"
"duration[] time_offsets\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Twist2D\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: dwb_msgs/CriticScore\n"
"# The result from one critic scoring a Twist.\n"
"# Name of the critic\n"
"string name\n"
"# Score for the critic, not multiplied by the scale\n"
"float32 raw_score\n"
"# Scale for the critic, multiplied by the raw_score and added to the total score\n"
"float32 scale\n"
;
  }

  static const char* value(const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.results);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DebugLocalPlanResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dwb_msgs::DebugLocalPlanResponse_<ContainerAllocator>& v)
  {
    s << indent << "results: ";
    s << std::endl;
    Printer< ::dwb_msgs::LocalPlanEvaluation_<ContainerAllocator> >::stream(s, indent + "  ", v.results);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DWB_MSGS_MESSAGE_DEBUGLOCALPLANRESPONSE_H
