// Generated by gencpp from file locomotor_msgs/NavigateToPoseFeedback.msg
// DO NOT EDIT!


#ifndef LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSEFEEDBACK_H
#define LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <locomotor_msgs/NavigationState.h>

namespace locomotor_msgs
{
template <class ContainerAllocator>
struct NavigateToPoseFeedback_
{
  typedef NavigateToPoseFeedback_<ContainerAllocator> Type;

  NavigateToPoseFeedback_()
    : state()
    , percent_complete(0.0)
    , distance_traveled(0.0)
    , estimated_distance_remaining(0.0)  {
    }
  NavigateToPoseFeedback_(const ContainerAllocator& _alloc)
    : state(_alloc)
    , percent_complete(0.0)
    , distance_traveled(0.0)
    , estimated_distance_remaining(0.0)  {
  (void)_alloc;
    }



   typedef  ::locomotor_msgs::NavigationState_<ContainerAllocator>  _state_type;
  _state_type state;

   typedef float _percent_complete_type;
  _percent_complete_type percent_complete;

   typedef float _distance_traveled_type;
  _distance_traveled_type distance_traveled;

   typedef float _estimated_distance_remaining_type;
  _estimated_distance_remaining_type estimated_distance_remaining;





  typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct NavigateToPoseFeedback_

typedef ::locomotor_msgs::NavigateToPoseFeedback_<std::allocator<void> > NavigateToPoseFeedback;

typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseFeedback > NavigateToPoseFeedbackPtr;
typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseFeedback const> NavigateToPoseFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator1> & lhs, const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.percent_complete == rhs.percent_complete &&
    lhs.distance_traveled == rhs.distance_traveled &&
    lhs.estimated_distance_remaining == rhs.estimated_distance_remaining;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator1> & lhs, const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace locomotor_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "731b38cf0756acb428661980c367590e";
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x731b38cf0756acb4ULL;
  static const uint64_t static_value2 = 0x28661980c367590eULL;
};

template<class ContainerAllocator>
struct DataType< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "locomotor_msgs/NavigateToPoseFeedback";
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"NavigationState state\n"
"float32 percent_complete\n"
"float32 distance_traveled\n"
"float32 estimated_distance_remaining\n"
"\n"
"\n"
"================================================================================\n"
"MSG: locomotor_msgs/NavigationState\n"
"nav_2d_msgs/Pose2DStamped global_pose\n"
"nav_2d_msgs/Pose2DStamped local_pose\n"
"nav_2d_msgs/Pose2DStamped goal\n"
"nav_2d_msgs/Twist2DStamped current_velocity\n"
"nav_2d_msgs/Twist2DStamped command_velocity\n"
"nav_2d_msgs/Path2D global_plan\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Pose2DStamped\n"
"Header header\n"
"geometry_msgs/Pose2D pose\n"
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
"MSG: nav_2d_msgs/Twist2DStamped\n"
"std_msgs/Header header\n"
"Twist2D velocity\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Twist2D\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/Path2D\n"
"Header header\n"
"geometry_msgs/Pose2D[] poses\n"
;
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.percent_complete);
      stream.next(m.distance_traveled);
      stream.next(m.estimated_distance_remaining);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavigateToPoseFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::locomotor_msgs::NavigateToPoseFeedback_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    s << std::endl;
    Printer< ::locomotor_msgs::NavigationState_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
    s << indent << "percent_complete: ";
    Printer<float>::stream(s, indent + "  ", v.percent_complete);
    s << indent << "distance_traveled: ";
    Printer<float>::stream(s, indent + "  ", v.distance_traveled);
    s << indent << "estimated_distance_remaining: ";
    Printer<float>::stream(s, indent + "  ", v.estimated_distance_remaining);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSEFEEDBACK_H
