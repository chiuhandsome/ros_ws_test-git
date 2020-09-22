// Generated by gencpp from file robot_scheduling_msgs/robot_interface_processFeedback.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INTERFACE_PROCESSFEEDBACK_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INTERFACE_PROCESSFEEDBACK_H


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
struct robot_interface_processFeedback_
{
  typedef robot_interface_processFeedback_<ContainerAllocator> Type;

  robot_interface_processFeedback_()
    {
    }
  robot_interface_processFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct robot_interface_processFeedback_

typedef ::robot_scheduling_msgs::robot_interface_processFeedback_<std::allocator<void> > robot_interface_processFeedback;

typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_interface_processFeedback > robot_interface_processFeedbackPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_interface_processFeedback const> robot_interface_processFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/robot_interface_processFeedback";
  }

  static const char* value(const ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_interface_processFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::robot_scheduling_msgs::robot_interface_processFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INTERFACE_PROCESSFEEDBACK_H
