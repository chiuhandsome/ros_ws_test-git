// Generated by gencpp from file robot_scheduling_msgs/robot_info.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INFO_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/PoseWithCovariance.h>

namespace robot_scheduling_msgs
{
template <class ContainerAllocator>
struct robot_info_
{
  typedef robot_info_<ContainerAllocator> Type;

  robot_info_()
    : header()
    , robot_name()
    , pose()
    , shape(0)
    , shape_variables()
    , mode(0)
    , status(0)  {
    }
  robot_info_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , robot_name(_alloc)
    , pose(_alloc)
    , shape(0)
    , shape_variables(_alloc)
    , mode(0)
    , status(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_name_type;
  _robot_name_type robot_name;

   typedef  ::geometry_msgs::PoseWithCovariance_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef int32_t _shape_type;
  _shape_type shape;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _shape_variables_type;
  _shape_variables_type shape_variables;

   typedef int32_t _mode_type;
  _mode_type mode;

   typedef int32_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> const> ConstPtr;

}; // struct robot_info_

typedef ::robot_scheduling_msgs::robot_info_<std::allocator<void> > robot_info;

typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_info > robot_infoPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_info const> robot_infoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::robot_info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::robot_info_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::robot_info_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.robot_name == rhs.robot_name &&
    lhs.pose == rhs.pose &&
    lhs.shape == rhs.shape &&
    lhs.shape_variables == rhs.shape_variables &&
    lhs.mode == rhs.mode &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::robot_info_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::robot_info_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e0486581f8a0ae440a9a646ed608f045";
  }

  static const char* value(const ::robot_scheduling_msgs::robot_info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe0486581f8a0ae44ULL;
  static const uint64_t static_value2 = 0x0a9a646ed608f045ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/robot_info";
  }

  static const char* value(const ::robot_scheduling_msgs::robot_info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header                            # the creation time\n"
"string robot_name                        # the name of the robot (used in preconditions and topics)\n"
"geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header\n"
"int32 shape                              # the shape of the robots (see enums)\n"
"float32[] shape_variables                # shape variables to define width height, ...\n"
"#RoutePrecondition sync                   # the current position in the last received plan (-1 means none)\n"
"int32   mode                             # the mode of operation\n"
"int32   status                           # the status of the robot\n"
"#int32   good_id                          # the good id attached to the robot\n"
"#int32   order_id                         # the order id scheduled to this robot (-1: none)\n"
"#int32   order_status                     # the status of the assigned order\n"
"\n"
"\n"
"#Header header                            # the creation time\n"
"#string robot_name                        # the name of the robot (used in preconditions and topics)\n"
"#geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header\n"
"#int32 shape                              # the shape of the robots (see enums)\n"
"#float32[] shape_variables                # shape variables to define width height, ...\n"
"#RoutePrecondition sync                   # the current position in the last received plan (-1 means none)\n"
"#int32   mode                             # the mode of operation\n"
"#int32   status                           # the status of the robot\n"
"#int32   good_id                          # the good id attached to the robot\n"
"#int32   order_id                         # the order id scheduled to this robot (-1: none)\n"
"#int32   order_status                     # the status of the assigned order\n"
"\n"
"\n"
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
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
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
;
  }

  static const char* value(const ::robot_scheduling_msgs::robot_info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.robot_name);
      stream.next(m.pose);
      stream.next(m.shape);
      stream.next(m.shape_variables);
      stream.next(m.mode);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::robot_info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::robot_info_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "robot_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_name);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "shape: ";
    Printer<int32_t>::stream(s, indent + "  ", v.shape);
    s << indent << "shape_variables[]" << std::endl;
    for (size_t i = 0; i < v.shape_variables.size(); ++i)
    {
      s << indent << "  shape_variables[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.shape_variables[i]);
    }
    s << indent << "mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mode);
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INFO_H
