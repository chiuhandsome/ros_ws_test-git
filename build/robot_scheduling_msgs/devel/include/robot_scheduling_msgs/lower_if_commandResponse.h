// Generated by gencpp from file robot_scheduling_msgs/lower_if_commandResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_LOWER_IF_COMMANDRESPONSE_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_LOWER_IF_COMMANDRESPONSE_H


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
struct lower_if_commandResponse_
{
  typedef lower_if_commandResponse_<ContainerAllocator> Type;

  lower_if_commandResponse_()
    : result(false)
    , result_state(0)
    , result_data()  {
    }
  lower_if_commandResponse_(const ContainerAllocator& _alloc)
    : result(false)
    , result_state(0)
    , result_data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef uint8_t _result_state_type;
  _result_state_type result_state;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _result_data_type;
  _result_data_type result_data;



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
#if defined(_WIN32) && defined(OUT_OF_TIMES)
  #undef OUT_OF_TIMES
#endif

  enum {
    OK = 1u,
    NOT_OK = 2u,
    TIMED_OUT = 3u,
    OUT_OF_TIMES = 4u,
  };


  typedef boost::shared_ptr< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct lower_if_commandResponse_

typedef ::robot_scheduling_msgs::lower_if_commandResponse_<std::allocator<void> > lower_if_commandResponse;

typedef boost::shared_ptr< ::robot_scheduling_msgs::lower_if_commandResponse > lower_if_commandResponsePtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::lower_if_commandResponse const> lower_if_commandResponseConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.result_state == rhs.result_state &&
    lhs.result_data == rhs.result_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a0189a3df6e9b1777ecbbecbc6f0332";
  }

  static const char* value(const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a0189a3df6e9b17ULL;
  static const uint64_t static_value2 = 0x77ecbbecbc6f0332ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/lower_if_commandResponse";
  }

  static const char* value(const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"uint8 OK=1\n"
"uint8 NOT_OK=2\n"
"uint8 TIMED_OUT=3\n"
"uint8 OUT_OF_TIMES=4\n"
"uint8 result_state\n"
"string result_data\n"
"\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.result_state);
      stream.next(m.result_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lower_if_commandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::lower_if_commandResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "result_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result_state);
    s << indent << "result_data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.result_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_LOWER_IF_COMMANDRESPONSE_H
