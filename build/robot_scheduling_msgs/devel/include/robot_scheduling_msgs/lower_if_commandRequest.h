// Generated by gencpp from file robot_scheduling_msgs/lower_if_commandRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_LOWER_IF_COMMANDREQUEST_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_LOWER_IF_COMMANDREQUEST_H


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
struct lower_if_commandRequest_
{
  typedef lower_if_commandRequest_<ContainerAllocator> Type;

  lower_if_commandRequest_()
    : cmd_type(0)
    , cmd_id(0)
    , cmd_data()  {
    }
  lower_if_commandRequest_(const ContainerAllocator& _alloc)
    : cmd_type(0)
    , cmd_id(0)
    , cmd_data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _cmd_type_type;
  _cmd_type_type cmd_type;

   typedef uint8_t _cmd_id_type;
  _cmd_id_type cmd_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_data_type;
  _cmd_data_type cmd_data;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(GET_STATUS)
  #undef GET_STATUS
#endif
#if defined(_WIN32) && defined(SET_COMMAND)
  #undef SET_COMMAND
#endif
#if defined(_WIN32) && defined(STATUS)
  #undef STATUS
#endif
#if defined(_WIN32) && defined(BASE_CONNECT)
  #undef BASE_CONNECT
#endif
#if defined(_WIN32) && defined(BASE_READY)
  #undef BASE_READY
#endif
#if defined(_WIN32) && defined(BASE_PROC)
  #undef BASE_PROC
#endif
#if defined(_WIN32) && defined(LED)
  #undef LED
#endif
#if defined(_WIN32) && defined(MUSIC)
  #undef MUSIC
#endif
#if defined(_WIN32) && defined(BATTERY)
  #undef BATTERY
#endif
#if defined(_WIN32) && defined(UTRASONIC)
  #undef UTRASONIC
#endif
#if defined(_WIN32) && defined(POWERCHARGE)
  #undef POWERCHARGE
#endif

  enum {
    GET_STATUS = 1u,
    SET_COMMAND = 2u,
    STATUS = 1u,
    BASE_CONNECT = 2u,
    BASE_READY = 3u,
    BASE_PROC = 4u,
    LED = 5u,
    MUSIC = 6u,
    BATTERY = 7u,
    UTRASONIC = 8u,
    POWERCHARGE = 9u,
  };


  typedef boost::shared_ptr< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct lower_if_commandRequest_

typedef ::robot_scheduling_msgs::lower_if_commandRequest_<std::allocator<void> > lower_if_commandRequest;

typedef boost::shared_ptr< ::robot_scheduling_msgs::lower_if_commandRequest > lower_if_commandRequestPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::lower_if_commandRequest const> lower_if_commandRequestConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_type == rhs.cmd_type &&
    lhs.cmd_id == rhs.cmd_id &&
    lhs.cmd_data == rhs.cmd_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2e6e7b9d944e8b26071ae1c34c433441";
  }

  static const char* value(const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2e6e7b9d944e8b26ULL;
  static const uint64_t static_value2 = 0x071ae1c34c433441ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/lower_if_commandRequest";
  }

  static const char* value(const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# set command type and its data \n"
"uint8 GET_STATUS=1\n"
"uint8 SET_COMMAND=2\n"
"uint8 cmd_type	\n"
"uint8 STATUS=1	 \n"
"uint8 BASE_CONNECT=2   \n"
"uint8 BASE_READY=3  \n"
"uint8 BASE_PROC=4   \n"
"uint8 LED=5	 \n"
"uint8 MUSIC=6	    \n"
"uint8 BATTERY=7	   \n"
"uint8 UTRASONIC=8	  \n"
"uint8 POWERCHARGE=9\n"
"uint8 cmd_id  \n"
"string cmd_data\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_type);
      stream.next(m.cmd_id);
      stream.next(m.cmd_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lower_if_commandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::lower_if_commandRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_type);
    s << indent << "cmd_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_id);
    s << indent << "cmd_data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_LOWER_IF_COMMANDREQUEST_H
