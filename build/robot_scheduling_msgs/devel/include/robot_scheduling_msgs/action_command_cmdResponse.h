// Generated by gencpp from file robot_scheduling_msgs/action_command_cmdResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMDRESPONSE_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMDRESPONSE_H


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
struct action_command_cmdResponse_
{
  typedef action_command_cmdResponse_<ContainerAllocator> Type;

  action_command_cmdResponse_()
    : result(false)
    , result_state(0)
    , result_data()  {
    }
  action_command_cmdResponse_(const ContainerAllocator& _alloc)
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





  typedef boost::shared_ptr< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct action_command_cmdResponse_

typedef ::robot_scheduling_msgs::action_command_cmdResponse_<std::allocator<void> > action_command_cmdResponse;

typedef boost::shared_ptr< ::robot_scheduling_msgs::action_command_cmdResponse > action_command_cmdResponsePtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::action_command_cmdResponse const> action_command_cmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.result_state == rhs.result_state &&
    lhs.result_data == rhs.result_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de0c734fcaa62aa2760bdef74bd97097";
  }

  static const char* value(const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde0c734fcaa62aa2ULL;
  static const uint64_t static_value2 = 0x760bdef74bd97097ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/action_command_cmdResponse";
  }

  static const char* value(const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"uint8 result_state\n"
"string result_data\n"
"\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.result_state);
      stream.next(m.result_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct action_command_cmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::action_command_cmdResponse_<ContainerAllocator>& v)
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

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMDRESPONSE_H