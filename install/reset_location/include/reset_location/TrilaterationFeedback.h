// Generated by gencpp from file reset_location/TrilaterationFeedback.msg
// DO NOT EDIT!


#ifndef RESET_LOCATION_MESSAGE_TRILATERATIONFEEDBACK_H
#define RESET_LOCATION_MESSAGE_TRILATERATIONFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace reset_location
{
template <class ContainerAllocator>
struct TrilaterationFeedback_
{
  typedef TrilaterationFeedback_<ContainerAllocator> Type;

  TrilaterationFeedback_()
    : feedback(false)  {
    }
  TrilaterationFeedback_(const ContainerAllocator& _alloc)
    : feedback(false)  {
  (void)_alloc;
    }



   typedef uint8_t _feedback_type;
  _feedback_type feedback;





  typedef boost::shared_ptr< ::reset_location::TrilaterationFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::reset_location::TrilaterationFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct TrilaterationFeedback_

typedef ::reset_location::TrilaterationFeedback_<std::allocator<void> > TrilaterationFeedback;

typedef boost::shared_ptr< ::reset_location::TrilaterationFeedback > TrilaterationFeedbackPtr;
typedef boost::shared_ptr< ::reset_location::TrilaterationFeedback const> TrilaterationFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::reset_location::TrilaterationFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::reset_location::TrilaterationFeedback_<ContainerAllocator1> & lhs, const ::reset_location::TrilaterationFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.feedback == rhs.feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::reset_location::TrilaterationFeedback_<ContainerAllocator1> & lhs, const ::reset_location::TrilaterationFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace reset_location

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::reset_location::TrilaterationFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reset_location::TrilaterationFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reset_location::TrilaterationFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f1f168a39479bedb24dba7a087426182";
  }

  static const char* value(const ::reset_location::TrilaterationFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf1f168a39479bedbULL;
  static const uint64_t static_value2 = 0x24dba7a087426182ULL;
};

template<class ContainerAllocator>
struct DataType< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "reset_location/TrilaterationFeedback";
  }

  static const char* value(const ::reset_location::TrilaterationFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"bool feedback\n"
"\n"
"\n"
;
  }

  static const char* value(const ::reset_location::TrilaterationFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrilaterationFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::reset_location::TrilaterationFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::reset_location::TrilaterationFeedback_<ContainerAllocator>& v)
  {
    s << indent << "feedback: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RESET_LOCATION_MESSAGE_TRILATERATIONFEEDBACK_H
