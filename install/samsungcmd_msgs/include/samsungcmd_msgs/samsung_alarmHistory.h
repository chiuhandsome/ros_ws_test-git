// Generated by gencpp from file samsungcmd_msgs/samsung_alarmHistory.msg
// DO NOT EDIT!


#ifndef SAMSUNGCMD_MSGS_MESSAGE_SAMSUNG_ALARMHISTORY_H
#define SAMSUNGCMD_MSGS_MESSAGE_SAMSUNG_ALARMHISTORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace samsungcmd_msgs
{
template <class ContainerAllocator>
struct samsung_alarmHistory_
{
  typedef samsung_alarmHistory_<ContainerAllocator> Type;

  samsung_alarmHistory_()
    : system_id()
    , alarm_id()
    , alarm_code()
    , alarm_level()
    , alarm_occure_time()
    , alarm_update_time()  {
    }
  samsung_alarmHistory_(const ContainerAllocator& _alloc)
    : system_id(_alloc)
    , alarm_id(_alloc)
    , alarm_code(_alloc)
    , alarm_level(_alloc)
    , alarm_occure_time(_alloc)
    , alarm_update_time(_alloc)  {
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

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_occure_time_type;
  _alarm_occure_time_type alarm_occure_time;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _alarm_update_time_type;
  _alarm_update_time_type alarm_update_time;





  typedef boost::shared_ptr< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> const> ConstPtr;

}; // struct samsung_alarmHistory_

typedef ::samsungcmd_msgs::samsung_alarmHistory_<std::allocator<void> > samsung_alarmHistory;

typedef boost::shared_ptr< ::samsungcmd_msgs::samsung_alarmHistory > samsung_alarmHistoryPtr;
typedef boost::shared_ptr< ::samsungcmd_msgs::samsung_alarmHistory const> samsung_alarmHistoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator1> & lhs, const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator2> & rhs)
{
  return lhs.system_id == rhs.system_id &&
    lhs.alarm_id == rhs.alarm_id &&
    lhs.alarm_code == rhs.alarm_code &&
    lhs.alarm_level == rhs.alarm_level &&
    lhs.alarm_occure_time == rhs.alarm_occure_time &&
    lhs.alarm_update_time == rhs.alarm_update_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator1> & lhs, const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace samsungcmd_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8eaf1cb50ac427c6ec57697237bdf914";
  }

  static const char* value(const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8eaf1cb50ac427c6ULL;
  static const uint64_t static_value2 = 0xec57697237bdf914ULL;
};

template<class ContainerAllocator>
struct DataType< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "samsungcmd_msgs/samsung_alarmHistory";
  }

  static const char* value(const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string system_id \n"
"string alarm_id 			# module_no(3) + module alarm code(3)	\n"
"string alarm_code 			# same as alarm_id,preper for special requirement\n"
"string alarm_level 			# level of ararm: 1:alart 2:alarm	\n"
"string alarm_occure_time 	# occure time of alarm\n"
"string alarm_update_time \n"
;
  }

  static const char* value(const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.system_id);
      stream.next(m.alarm_id);
      stream.next(m.alarm_code);
      stream.next(m.alarm_level);
      stream.next(m.alarm_occure_time);
      stream.next(m.alarm_update_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct samsung_alarmHistory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::samsungcmd_msgs::samsung_alarmHistory_<ContainerAllocator>& v)
  {
    s << indent << "system_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.system_id);
    s << indent << "alarm_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_id);
    s << indent << "alarm_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_code);
    s << indent << "alarm_level: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_level);
    s << indent << "alarm_occure_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_occure_time);
    s << indent << "alarm_update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.alarm_update_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SAMSUNGCMD_MSGS_MESSAGE_SAMSUNG_ALARMHISTORY_H