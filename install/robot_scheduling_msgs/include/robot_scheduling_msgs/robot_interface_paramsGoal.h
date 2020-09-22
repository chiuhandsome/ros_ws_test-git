// Generated by gencpp from file robot_scheduling_msgs/robot_interface_paramsGoal.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INTERFACE_PARAMSGOAL_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INTERFACE_PARAMSGOAL_H


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
struct robot_interface_paramsGoal_
{
  typedef robot_interface_paramsGoal_<ContainerAllocator> Type;

  robot_interface_paramsGoal_()
    : cmd_type(0)
    , dtat_type(0)
    , set_data()  {
    }
  robot_interface_paramsGoal_(const ContainerAllocator& _alloc)
    : cmd_type(0)
    , dtat_type(0)
    , set_data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _cmd_type_type;
  _cmd_type_type cmd_type;

   typedef uint8_t _dtat_type_type;
  _dtat_type_type dtat_type;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _set_data_type;
  _set_data_type set_data;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(GET)
  #undef GET
#endif
#if defined(_WIN32) && defined(SET)
  #undef SET
#endif
#if defined(_WIN32) && defined(TARGET_POSE)
  #undef TARGET_POSE
#endif
#if defined(_WIN32) && defined(STATUS_CODE)
  #undef STATUS_CODE
#endif
#if defined(_WIN32) && defined(FUNCTION_ID)
  #undef FUNCTION_ID
#endif
#if defined(_WIN32) && defined(PARAMETER)
  #undef PARAMETER
#endif

  enum {
    GET = 1u,
    SET = 2u,
    TARGET_POSE = 1u,
    STATUS_CODE = 2u,
    FUNCTION_ID = 3u,
    PARAMETER = 4u,
  };


  typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> const> ConstPtr;

}; // struct robot_interface_paramsGoal_

typedef ::robot_scheduling_msgs::robot_interface_paramsGoal_<std::allocator<void> > robot_interface_paramsGoal;

typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_interface_paramsGoal > robot_interface_paramsGoalPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::robot_interface_paramsGoal const> robot_interface_paramsGoalConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_type == rhs.cmd_type &&
    lhs.dtat_type == rhs.dtat_type &&
    lhs.set_data == rhs.set_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eeed664b49bae3b13358e0c01a468ef7";
  }

  static const char* value(const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeeed664b49bae3b1ULL;
  static const uint64_t static_value2 = 0x3358e0c01a468ef7ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/robot_interface_paramsGoal";
  }

  static const char* value(const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"uint8 GET=1\n"
"uint8 SET=2\n"
"uint8 cmd_type\n"
"uint8 TARGET_POSE=1\n"
"uint8 STATUS_CODE=2\n"
"uint8 FUNCTION_ID=3\n"
"uint8 PARAMETER=4\n"
"uint8 dtat_type\n"
"string[] set_data\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_type);
      stream.next(m.dtat_type);
      stream.next(m.set_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_interface_paramsGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::robot_interface_paramsGoal_<ContainerAllocator>& v)
  {
    s << indent << "cmd_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_type);
    s << indent << "dtat_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dtat_type);
    s << indent << "set_data[]" << std::endl;
    for (size_t i = 0; i < v.set_data.size(); ++i)
    {
      s << indent << "  set_data[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.set_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_ROBOT_INTERFACE_PARAMSGOAL_H
