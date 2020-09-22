// Generated by gencpp from file open_auto_dock_msgs/UndockFeedback.msg
// DO NOT EDIT!


#ifndef OPEN_AUTO_DOCK_MSGS_MESSAGE_UNDOCKFEEDBACK_H
#define OPEN_AUTO_DOCK_MSGS_MESSAGE_UNDOCKFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Twist.h>

namespace open_auto_dock_msgs
{
template <class ContainerAllocator>
struct UndockFeedback_
{
  typedef UndockFeedback_<ContainerAllocator> Type;

  UndockFeedback_()
    : dock_pose()
    , command()
    , undocked(false)  {
    }
  UndockFeedback_(const ContainerAllocator& _alloc)
    : dock_pose(_alloc)
    , command(_alloc)
    , undocked(false)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _dock_pose_type;
  _dock_pose_type dock_pose;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _command_type;
  _command_type command;

   typedef uint8_t _undocked_type;
  _undocked_type undocked;





  typedef boost::shared_ptr< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct UndockFeedback_

typedef ::open_auto_dock_msgs::UndockFeedback_<std::allocator<void> > UndockFeedback;

typedef boost::shared_ptr< ::open_auto_dock_msgs::UndockFeedback > UndockFeedbackPtr;
typedef boost::shared_ptr< ::open_auto_dock_msgs::UndockFeedback const> UndockFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator1> & lhs, const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.dock_pose == rhs.dock_pose &&
    lhs.command == rhs.command &&
    lhs.undocked == rhs.undocked;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator1> & lhs, const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace open_auto_dock_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "60fe99876b8f0449f8591b17648ca7bc";
  }

  static const char* value(const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x60fe99876b8f0449ULL;
  static const uint64_t static_value2 = 0xf8591b17648ca7bcULL;
};

template<class ContainerAllocator>
struct DataType< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "open_auto_dock_msgs/UndockFeedback";
  }

  static const char* value(const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Feedback is the detected pose of the dock.\n"
"geometry_msgs/PoseStamped dock_pose\n"
"\n"
"# Plus the control output\n"
"geometry_msgs/Twist command\n"
"\n"
"# Have we undocked?\n"
"bool undocked\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dock_pose);
      stream.next(m.command);
      stream.next(m.undocked);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UndockFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::open_auto_dock_msgs::UndockFeedback_<ContainerAllocator>& v)
  {
    s << indent << "dock_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.dock_pose);
    s << indent << "command: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.command);
    s << indent << "undocked: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.undocked);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPEN_AUTO_DOCK_MSGS_MESSAGE_UNDOCKFEEDBACK_H