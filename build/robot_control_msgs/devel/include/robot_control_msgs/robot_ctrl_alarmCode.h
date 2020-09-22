// Generated by gencpp from file robot_control_msgs/robot_ctrl_alarmCode.msg
// DO NOT EDIT!


#ifndef ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ALARMCODE_H
#define ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ALARMCODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_control_msgs
{
template <class ContainerAllocator>
struct robot_ctrl_alarmCode_
{
  typedef robot_ctrl_alarmCode_<ContainerAllocator> Type;

  robot_ctrl_alarmCode_()
    : system_id()
    , alarm_id()
    , alarm_code()
    , alarm_level()
    , alarm_Desc_E()
    , alarm_Desc_TC()
    , alarm_Desc_SC()
    , alarm_version()
    , update_time()  {
    }
  robot_ctrl_alarmCode_(const ContainerAllocator& _alloc)
    : system_id(_alloc)
    , alarm_id(_alloc)
    , alarm_code(_alloc)
    , alarm_level(_alloc)
    , alarm_Desc_E(_alloc)
    , alarm_Desc_TC(_alloc)
    , alarm_Desc_SC(_alloc)
    , alarm_version(_alloc)
    , update_time(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _system_id_type;
  _system_id_type system_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_id_type;
  _alarm_id_type alarm_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_code_type;
  _alarm_code_type alarm_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_level_type;
  _alarm_level_type alarm_level;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_Desc_E_type;
  _alarm_Desc_E_type alarm_Desc_E;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_Desc_TC_type;
  _alarm_Desc_TC_type alarm_Desc_TC;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_Desc_SC_type;
  _alarm_Desc_SC_type alarm_Desc_SC;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_version_type;
  _alarm_version_type alarm_version;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _update_time_type;
  _update_time_type update_time;





  typedef boost::shared_ptr< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> const> ConstPtr;

}; // struct robot_ctrl_alarmCode_

typedef ::robot_control_msgs::robot_ctrl_alarmCode_<std::allocator<void> > robot_ctrl_alarmCode;

typedef boost::shared_ptr< ::robot_control_msgs::robot_ctrl_alarmCode > robot_ctrl_alarmCodePtr;
typedef boost::shared_ptr< ::robot_control_msgs::robot_ctrl_alarmCode const> robot_ctrl_alarmCodeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator1> & lhs, const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator2> & rhs)
{
  return lhs.system_id == rhs.system_id &&
    lhs.alarm_id == rhs.alarm_id &&
    lhs.alarm_code == rhs.alarm_code &&
    lhs.alarm_level == rhs.alarm_level &&
    lhs.alarm_Desc_E == rhs.alarm_Desc_E &&
    lhs.alarm_Desc_TC == rhs.alarm_Desc_TC &&
    lhs.alarm_Desc_SC == rhs.alarm_Desc_SC &&
    lhs.alarm_version == rhs.alarm_version &&
    lhs.update_time == rhs.update_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator1> & lhs, const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bae755048a38830c24c3ddbc4bcb4411";
  }

  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbae755048a38830cULL;
  static const uint64_t static_value2 = 0x24c3ddbc4bcb4411ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_control_msgs/robot_ctrl_alarmCode";
  }

  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string system_id 			\n"
"string alarm_id 		# module_no(3) + module alarm code(3)	\n"
"string alarm_code 		# same as alarm_id,preper for special requirement\n"
"string alarm_level 		# level of ararm: 1:alart 2:alarm	\n"
"string alarm_Desc_E 		# English description of alarm	\n"
"string alarm_Desc_TC 		# Traditional chinese description of alarm	\n"
"string alarm_Desc_SC 		# Sample chinese description of alarm\n"
"string alarm_version 		# version of alarm\n"
"string update_time 		# version time of alarm\n"
;
  }

  static const char* value(const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.system_id);
      stream.next(m.alarm_id);
      stream.next(m.alarm_code);
      stream.next(m.alarm_level);
      stream.next(m.alarm_Desc_E);
      stream.next(m.alarm_Desc_TC);
      stream.next(m.alarm_Desc_SC);
      stream.next(m.alarm_version);
      stream.next(m.update_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_ctrl_alarmCode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_control_msgs::robot_ctrl_alarmCode_<ContainerAllocator>& v)
  {
    s << indent << "system_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.system_id);
    s << indent << "alarm_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_id);
    s << indent << "alarm_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_code);
    s << indent << "alarm_level: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_level);
    s << indent << "alarm_Desc_E: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_Desc_E);
    s << indent << "alarm_Desc_TC: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_Desc_TC);
    s << indent << "alarm_Desc_SC: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_Desc_SC);
    s << indent << "alarm_version: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_version);
    s << indent << "update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.update_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ALARMCODE_H