// Generated by gencpp from file tug_example_msgs/PutBoxResult.msg
// DO NOT EDIT!


#ifndef TUG_EXAMPLE_MSGS_MESSAGE_PUTBOXRESULT_H
#define TUG_EXAMPLE_MSGS_MESSAGE_PUTBOXRESULT_H


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
struct PutBoxResult_
{
  typedef PutBoxResult_<ContainerAllocator> Type;

  PutBoxResult_()
    : result(0)  {
    }
  PutBoxResult_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(OK)
  #undef OK
#endif

  enum {
    OK = 1u,
  };


  typedef boost::shared_ptr< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> const> ConstPtr;

}; // struct PutBoxResult_

typedef ::tug_example_msgs::PutBoxResult_<std::allocator<void> > PutBoxResult;

typedef boost::shared_ptr< ::tug_example_msgs::PutBoxResult > PutBoxResultPtr;
typedef boost::shared_ptr< ::tug_example_msgs::PutBoxResult const> PutBoxResultConstPtr;

// constants requiring out of line definition

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tug_example_msgs::PutBoxResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tug_example_msgs::PutBoxResult_<ContainerAllocator1> & lhs, const ::tug_example_msgs::PutBoxResult_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tug_example_msgs::PutBoxResult_<ContainerAllocator1> & lhs, const ::tug_example_msgs::PutBoxResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tug_example_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80ace2ee7a7a5f70a61ef08433d7d2ed";
  }

  static const char* value(const ::tug_example_msgs::PutBoxResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80ace2ee7a7a5f70ULL;
  static const uint64_t static_value2 = 0xa61ef08433d7d2edULL;
};

template<class ContainerAllocator>
struct DataType< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tug_example_msgs/PutBoxResult";
  }

  static const char* value(const ::tug_example_msgs::PutBoxResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"uint8 OK=1\n"
"uint8 result\n"
;
  }

  static const char* value(const ::tug_example_msgs::PutBoxResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PutBoxResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tug_example_msgs::PutBoxResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tug_example_msgs::PutBoxResult_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUG_EXAMPLE_MSGS_MESSAGE_PUTBOXRESULT_H