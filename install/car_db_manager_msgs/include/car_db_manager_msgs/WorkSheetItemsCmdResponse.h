// Generated by gencpp from file car_db_manager_msgs/WorkSheetItemsCmdResponse.msg
// DO NOT EDIT!


#ifndef CAR_DB_MANAGER_MSGS_MESSAGE_WORKSHEETITEMSCMDRESPONSE_H
#define CAR_DB_MANAGER_MSGS_MESSAGE_WORKSHEETITEMSCMDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <car_db_manager_msgs/WorkSheetItems.h>

namespace car_db_manager_msgs
{
template <class ContainerAllocator>
struct WorkSheetItemsCmdResponse_
{
  typedef WorkSheetItemsCmdResponse_<ContainerAllocator> Type;

  WorkSheetItemsCmdResponse_()
    : result(false)
    , error_code()
    , primary_id()
    , update_time()
    , result_work_sheet_items()  {
    }
  WorkSheetItemsCmdResponse_(const ContainerAllocator& _alloc)
    : result(false)
    , error_code(_alloc)
    , primary_id(_alloc)
    , update_time(_alloc)
    , result_work_sheet_items(_alloc)  {
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

   typedef std::vector< ::car_db_manager_msgs::WorkSheetItems_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::car_db_manager_msgs::WorkSheetItems_<ContainerAllocator> >::other >  _result_work_sheet_items_type;
  _result_work_sheet_items_type result_work_sheet_items;





  typedef boost::shared_ptr< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct WorkSheetItemsCmdResponse_

typedef ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<std::allocator<void> > WorkSheetItemsCmdResponse;

typedef boost::shared_ptr< ::car_db_manager_msgs::WorkSheetItemsCmdResponse > WorkSheetItemsCmdResponsePtr;
typedef boost::shared_ptr< ::car_db_manager_msgs::WorkSheetItemsCmdResponse const> WorkSheetItemsCmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.error_code == rhs.error_code &&
    lhs.primary_id == rhs.primary_id &&
    lhs.update_time == rhs.update_time &&
    lhs.result_work_sheet_items == rhs.result_work_sheet_items;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_db_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "60f54567986aa2f70e0b6f427689bbf0";
  }

  static const char* value(const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x60f54567986aa2f7ULL;
  static const uint64_t static_value2 = 0x0e0b6f427689bbf0ULL;
};

template<class ContainerAllocator>
struct DataType< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_db_manager_msgs/WorkSheetItemsCmdResponse";
  }

  static const char* value(const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"string error_code\n"
"string primary_id\n"
"string update_time\n"
"WorkSheetItems[] result_work_sheet_items\n"
"\n"
"\n"
"================================================================================\n"
"MSG: car_db_manager_msgs/WorkSheetItems\n"
"string primary_id			# must-have,UUID : primary_key(system_id)		\n"
"string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	\n"
"string base_item_name\n"
"uint8 item_ser_no\n"
"string occur_time\n"
"string target_pose_id\n"
"string action_function_id\n"
"string action_function_params\n"
"string remark\n"
"string update_time			# must-have 	 \n"
"\n"
;
  }

  static const char* value(const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.error_code);
      stream.next(m.primary_id);
      stream.next(m.update_time);
      stream.next(m.result_work_sheet_items);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WorkSheetItemsCmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_db_manager_msgs::WorkSheetItemsCmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "error_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.error_code);
    s << indent << "primary_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.primary_id);
    s << indent << "update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.update_time);
    s << indent << "result_work_sheet_items[]" << std::endl;
    for (size_t i = 0; i < v.result_work_sheet_items.size(); ++i)
    {
      s << indent << "  result_work_sheet_items[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::car_db_manager_msgs::WorkSheetItems_<ContainerAllocator> >::stream(s, indent + "    ", v.result_work_sheet_items[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_DB_MANAGER_MSGS_MESSAGE_WORKSHEETITEMSCMDRESPONSE_H
