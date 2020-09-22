// Generated by gencpp from file tug_example_msgs/RecoverNotFetchingBoxFeedback.msg
// DO NOT EDIT!


#ifndef TUG_EXAMPLE_MSGS_MESSAGE_RECOVERNOTFETCHINGBOXFEEDBACK_H
#define TUG_EXAMPLE_MSGS_MESSAGE_RECOVERNOTFETCHINGBOXFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tug_example_msgs
{
template <class ContainerAllocator>
struct RecoverNotFetchingBoxFeedback_
{
  typedef RecoverNotFetchingBoxFeedback_<ContainerAllocator> Type;

  RecoverNotFetchingBoxFeedback_()
    {
    }
  RecoverNotFetchingBoxFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct RecoverNotFetchingBoxFeedback_

typedef ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<std::allocator<void> > RecoverNotFetchingBoxFeedback;

typedef boost::shared_ptr< ::tug_example_msgs::RecoverNotFetchingBoxFeedback > RecoverNotFetchingBoxFeedbackPtr;
typedef boost::shared_ptr< ::tug_example_msgs::RecoverNotFetchingBoxFeedback const> RecoverNotFetchingBoxFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace tug_example_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tug_example_msgs/RecoverNotFetchingBoxFeedback";
  }

  static const char* value(const ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"\n"
;
  }

  static const char* value(const ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecoverNotFetchingBoxFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::tug_example_msgs::RecoverNotFetchingBoxFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TUG_EXAMPLE_MSGS_MESSAGE_RECOVERNOTFETCHINGBOXFEEDBACK_H
