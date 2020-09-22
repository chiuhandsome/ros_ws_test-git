// Generated by gencpp from file car_db_manager_msgs/WorkSheetMainCmdRequest.msg
// DO NOT EDIT!


#ifndef CAR_DB_MANAGER_MSGS_MESSAGE_WORKSHEETMAINCMDREQUEST_H
#define CAR_DB_MANAGER_MSGS_MESSAGE_WORKSHEETMAINCMDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <car_db_manager_msgs/WorkSheetMain.h>

namespace car_db_manager_msgs
{
template <class ContainerAllocator>
struct WorkSheetMainCmdRequest_
{
  typedef WorkSheetMainCmdRequest_<ContainerAllocator> Type;

  WorkSheetMainCmdRequest_()
    : cmd_id(0)
    , query_base_index()
    , query_opt_index()
    , query_parameter()
    , req_work_sheet_main()  {
    }
  WorkSheetMainCmdRequest_(const ContainerAllocator& _alloc)
    : cmd_id(0)
    , query_base_index(_alloc)
    , query_opt_index(_alloc)
    , query_parameter(_alloc)
    , req_work_sheet_main(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _cmd_id_type;
  _cmd_id_type cmd_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _query_base_index_type;
  _query_base_index_type query_base_index;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _query_opt_index_type;
  _query_opt_index_type query_opt_index;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _query_parameter_type;
  _query_parameter_type query_parameter;

   typedef  ::car_db_manager_msgs::WorkSheetMain_<ContainerAllocator>  _req_work_sheet_main_type;
  _req_work_sheet_main_type req_work_sheet_main;





  typedef boost::shared_ptr< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct WorkSheetMainCmdRequest_

typedef ::car_db_manager_msgs::WorkSheetMainCmdRequest_<std::allocator<void> > WorkSheetMainCmdRequest;

typedef boost::shared_ptr< ::car_db_manager_msgs::WorkSheetMainCmdRequest > WorkSheetMainCmdRequestPtr;
typedef boost::shared_ptr< ::car_db_manager_msgs::WorkSheetMainCmdRequest const> WorkSheetMainCmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_id == rhs.cmd_id &&
    lhs.query_base_index == rhs.query_base_index &&
    lhs.query_opt_index == rhs.query_opt_index &&
    lhs.query_parameter == rhs.query_parameter &&
    lhs.req_work_sheet_main == rhs.req_work_sheet_main;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_db_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fcb3c8b55688aa6da21b58de80af6cf2";
  }

  static const char* value(const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfcb3c8b55688aa6dULL;
  static const uint64_t static_value2 = 0xa21b58de80af6cf2ULL;
};

template<class ContainerAllocator>
struct DataType< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_db_manager_msgs/WorkSheetMainCmdRequest";
  }

  static const char* value(const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:requery , 5:refresh	 		\n"
"string query_base_index 	\n"
"string query_opt_index\n"
"string query_parameter \n"
"WorkSheetMain req_work_sheet_main\n"
"\n"
"================================================================================\n"
"MSG: car_db_manager_msgs/WorkSheetMain\n"
"string primary_id			# must-have,UUID : primary_key(system_id)		\n"
"string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	\n"
"string base_name\n"
"string occur_time\n"
"uint8 workitems_num\n"
"string update_time			# must-have 	 \n"
"\n"
;
  }

  static const char* value(const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_id);
      stream.next(m.query_base_index);
      stream.next(m.query_opt_index);
      stream.next(m.query_parameter);
      stream.next(m.req_work_sheet_main);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WorkSheetMainCmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_db_manager_msgs::WorkSheetMainCmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd_id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.cmd_id);
    s << indent << "query_base_index: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.query_base_index);
    s << indent << "query_opt_index: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.query_opt_index);
    s << indent << "query_parameter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.query_parameter);
    s << indent << "req_work_sheet_main: ";
    s << std::endl;
    Printer< ::car_db_manager_msgs::WorkSheetMain_<ContainerAllocator> >::stream(s, indent + "  ", v.req_work_sheet_main);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_DB_MANAGER_MSGS_MESSAGE_WORKSHEETMAINCMDREQUEST_H
