// Generated by gencpp from file actionlib_modules_msgs/recovery_not_actionlib_pre_dockResult.msg
// DO NOT EDIT!


#ifndef ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_PRE_DOCKRESULT_H
#define ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_PRE_DOCKRESULT_H


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
struct recovery_not_actionlib_pre_dockResult_
{
  typedef recovery_not_actionlib_pre_dockResult_<ContainerAllocator> Type;

  recovery_not_actionlib_pre_dockResult_()
    : result(0)  {
    }
  recovery_not_actionlib_pre_dockResult_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(OK)
  #undef OK
#endif
#if defined(_WIN32) && defined(NOT_OK)
  #undef NOT_OK
#endif
#if defined(_WIN32) && defined(TIMED_OUT)
  #undef TIMED_OUT
#endif

  enum {
    OK = 1u,
    NOT_OK = 2u,
    TIMED_OUT = 3u,
  };


  typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> const> ConstPtr;

}; // struct recovery_not_actionlib_pre_dockResult_

typedef ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<std::allocator<void> > recovery_not_actionlib_pre_dockResult;

typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult > recovery_not_actionlib_pre_dockResultPtr;
typedef boost::shared_ptr< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult const> recovery_not_actionlib_pre_dockResultConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator1> & lhs, const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator1> & lhs, const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace actionlib_modules_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "48ef0064dea033d8c1bd353364c055a9";
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x48ef0064dea033d8ULL;
  static const uint64_t static_value2 = 0xc1bd353364c055a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actionlib_modules_msgs/recovery_not_actionlib_pre_dockResult";
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"uint8 OK=1\n"
"uint8 NOT_OK=2\n"
"uint8 TIMED_OUT=3\n"
"uint8 result\n"
;
  }

  static const char* value(const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct recovery_not_actionlib_pre_dockResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::actionlib_modules_msgs::recovery_not_actionlib_pre_dockResult_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTIONLIB_MODULES_MSGS_MESSAGE_RECOVERY_NOT_ACTIONLIB_PRE_DOCKRESULT_H
