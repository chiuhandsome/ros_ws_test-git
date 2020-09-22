// Generated by gencpp from file cellctrl_control_msgs/cell_alarmhistory_cmdResponse.msg
// DO NOT EDIT!


#ifndef CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_ALARMHISTORY_CMDRESPONSE_H
#define CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_ALARMHISTORY_CMDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cellctrl_control_msgs/cell_alarmhistory.h>

namespace cellctrl_control_msgs
{
template <class ContainerAllocator>
struct cell_alarmhistory_cmdResponse_
{
  typedef cell_alarmhistory_cmdResponse_<ContainerAllocator> Type;

  cell_alarmhistory_cmdResponse_()
    : result(false)
    , error_code()
    , primary_id()
    , update_time()
    , response_data()  {
    }
  cell_alarmhistory_cmdResponse_(const ContainerAllocator& _alloc)
    : result(false)
    , error_code(_alloc)
    , primary_id(_alloc)
    , update_time(_alloc)
    , response_data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _primary_id_type;
  _primary_id_type primary_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _update_time_type;
  _update_time_type update_time;

   typedef std::vector< ::cellctrl_control_msgs::cell_alarmhistory_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cellctrl_control_msgs::cell_alarmhistory_<ContainerAllocator> >::other >  _response_data_type;
  _response_data_type response_data;





  typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct cell_alarmhistory_cmdResponse_

typedef ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<std::allocator<void> > cell_alarmhistory_cmdResponse;

typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse > cell_alarmhistory_cmdResponsePtr;
typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse const> cell_alarmhistory_cmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator1> & lhs, const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.error_code == rhs.error_code &&
    lhs.primary_id == rhs.primary_id &&
    lhs.update_time == rhs.update_time &&
    lhs.response_data == rhs.response_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator1> & lhs, const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cellctrl_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3038f762023c5d666f73f979680b2cea";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3038f762023c5d66ULL;
  static const uint64_t static_value2 = 0x6f73f979680b2ceaULL;
};

template<class ContainerAllocator>
struct DataType< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cellctrl_control_msgs/cell_alarmhistory_cmdResponse";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"string error_code\n"
"string primary_id\n"
"string update_time\n"
"cell_alarmhistory[] response_data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: cellctrl_control_msgs/cell_alarmhistory\n"
"string primary_id			# must-have,UUID : primary_key(system_id)		\n"
"string foreign_key\n"
"string unique_code 		        # must-have,UNIQUE INDEX	\n"
"string alarm_name		   \n"
"uint8 alarm_level 		 \n"
"string alarm_code 	\n"
"string update_time			# must-have 		 \n"
;
  }

  static const char* value(const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.error_code);
      stream.next(m.primary_id);
      stream.next(m.update_time);
      stream.next(m.response_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cell_alarmhistory_cmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cellctrl_control_msgs::cell_alarmhistory_cmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "error_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.error_code);
    s << indent << "primary_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.primary_id);
    s << indent << "update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.update_time);
    s << indent << "response_data[]" << std::endl;
    for (size_t i = 0; i < v.response_data.size(); ++i)
    {
      s << indent << "  response_data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cellctrl_control_msgs::cell_alarmhistory_<ContainerAllocator> >::stream(s, indent + "    ", v.response_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_ALARMHISTORY_CMDRESPONSE_H
