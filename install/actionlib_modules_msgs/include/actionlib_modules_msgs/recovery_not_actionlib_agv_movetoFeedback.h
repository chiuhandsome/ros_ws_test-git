// Generated by gencpp from file actionlib_modules_msgs/recovery_not_actionlib_agv_movetoFeedback.msg
// DO NOT EDIT!


#ifndef ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_AGV_MOVETOFEEDBACK_H
#define ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_AGV_MOVETOFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace actionlib_modules_msgs
{
template <class ContainerAllocator>
struct recovery_not_actionlib_agv_movetoFeedback_
{
  typedef recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> Type;

  recovery_not_actionlib_agv_movetoFeedback_()
    {
    }
  recovery_not_actionlib_agv_movetoFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct recovery_not_actionlib_agv_movetoFeedback_

typedef ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<std::allocator<void> > recovery_not_actionlib_agv_movetoFeedback;

typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback > recovery_not_actionlib_agv_movetoFeedbackPtr;
typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback const> recovery_not_actionlib_agv_movetoFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace actionlib_modules_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actionlib_modules_msgs/recovery_not_actionlib_agv_movetoFeedback";
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"\n"
;
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct recovery_not_actionlib_agv_movetoFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::actionlib_modules_msgs::recovery_not_actionlib_agv_movetoFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_AGV_MOVETOFEEDBACK_H