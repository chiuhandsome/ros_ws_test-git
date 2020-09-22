// Generated by gencpp from file robot_scheduling_msgs/action_command_cmdRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMDREQUEST_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMDREQUEST_H


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
struct action_command_cmdRequest_
{
  typedef action_command_cmdRequest_<ContainerAllocator> Type;

  action_command_cmdRequest_()
    : cmd_set_type(0)
    , cmd_type(0)
    , cmd_id(0)
    , cmd_seq(0)
    , cmd_data()
    , set_data()  {
    }
  action_command_cmdRequest_(const ContainerAllocator& _alloc)
    : cmd_set_type(0)
    , cmd_type(0)
    , cmd_id(0)
    , cmd_seq(0)
    , cmd_data(_alloc)
    , set_data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _cmd_set_type_type;
  _cmd_set_type_type cmd_set_type;

   typedef uint8_t _cmd_type_type;
  _cmd_type_type cmd_type;

   typedef uint8_t _cmd_id_type;
  _cmd_id_type cmd_id;

   typedef uint8_t _cmd_seq_type;
  _cmd_seq_type cmd_seq;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_data_type;
  _cmd_data_type cmd_data;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _set_data_type;
  _set_data_type set_data;





  typedef boost::shared_ptr< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct action_command_cmdRequest_

typedef ::robot_scheduling_msgs::action_command_cmdRequest_<std::allocator<void> > action_command_cmdRequest;

typedef boost::shared_ptr< ::robot_scheduling_msgs::action_command_cmdRequest > action_command_cmdRequestPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::action_command_cmdRequest const> action_command_cmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_set_type == rhs.cmd_set_type &&
    lhs.cmd_type == rhs.cmd_type &&
    lhs.cmd_id == rhs.cmd_id &&
    lhs.cmd_seq == rhs.cmd_seq &&
    lhs.cmd_data == rhs.cmd_data &&
    lhs.set_data == rhs.set_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ad91ca6197731088167bf0e882243ca";
  }

  static const char* value(const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ad91ca619773108ULL;
  static const uint64_t static_value2 = 0x8167bf0e882243caULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/action_command_cmdRequest";
  }

  static const char* value(const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# set command type and its data \n"
"uint8 cmd_set_type	 	\n"
"uint8 cmd_type		      \n"
"uint8 cmd_id    \n"
"uint8 cmd_seq 	 	\n"
"string cmd_data\n"
"string set_data\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_set_type);
      stream.next(m.cmd_type);
      stream.next(m.cmd_id);
      stream.next(m.cmd_seq);
      stream.next(m.cmd_data);
      stream.next(m.set_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct action_command_cmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::action_command_cmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd_set_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_set_type);
    s << indent << "cmd_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_type);
    s << indent << "cmd_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_id);
    s << indent << "cmd_seq: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_seq);
    s << indent << "cmd_data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd_data);
    s << indent << "set_data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.set_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_ACTION_COMMAND_CMDREQUEST_H