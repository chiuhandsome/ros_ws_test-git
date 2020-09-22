// Generated by gencpp from file cellctrl_control_msgs/cell_work_stationitems_cmdRequest.msg
// DO NOT EDIT!


#ifndef CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_WORK_STATIONITEMS_CMDREQUEST_H
#define CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_WORK_STATIONITEMS_CMDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cellctrl_control_msgs/cell_work_stationitems.h>

namespace cellctrl_control_msgs
{
template <class ContainerAllocator>
struct cell_work_stationitems_cmdRequest_
{
  typedef cell_work_stationitems_cmdRequest_<ContainerAllocator> Type;

  cell_work_stationitems_cmdRequest_()
    : cmd_id(0)
    , query_base_index()
    , query_opt_index()
    , query_parameter()
    , request_data()  {
    }
  cell_work_stationitems_cmdRequest_(const ContainerAllocator& _alloc)
    : cmd_id(0)
    , query_base_index(_alloc)
    , query_opt_index(_alloc)
    , query_parameter(_alloc)
    , request_data(_alloc)  {
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

   typedef  ::cellctrl_control_msgs::cell_work_stationitems_<ContainerAllocator>  _request_data_type;
  _request_data_type request_data;





  typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct cell_work_stationitems_cmdRequest_

typedef ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<std::allocator<void> > cell_work_stationitems_cmdRequest;

typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest > cell_work_stationitems_cmdRequestPtr;
typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest const> cell_work_stationitems_cmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator1> & lhs, const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_id == rhs.cmd_id &&
    lhs.query_base_index == rhs.query_base_index &&
    lhs.query_opt_index == rhs.query_opt_index &&
    lhs.query_parameter == rhs.query_parameter &&
    lhs.request_data == rhs.request_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator1> & lhs, const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cellctrl_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cac7e146be8e24cbf8798b89dea8d2e1";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcac7e146be8e24cbULL;
  static const uint64_t static_value2 = 0xf8798b89dea8d2e1ULL;
};

template<class ContainerAllocator>
struct DataType< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cellctrl_control_msgs/cell_work_stationitems_cmdRequest";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 cmd_id         # 1:Add , 2:modify , 3:delete , 4:query , 5:refresh	 		\n"
"string query_base_index 	\n"
"string query_opt_index\n"
"string query_parameter \n"
"cell_work_stationitems request_data	 \n"
"\n"
"================================================================================\n"
"MSG: cellctrl_control_msgs/cell_work_stationitems\n"
"string primary_id			# must-have,UUID : primary_key(system_id)\n"
"string foreign_key\n"
"string unique_code 		        # must-have,UNIQUE INDEX	\n"
"string station_name		   \n"
"uint8  station_ser\n"
"string cellcontroller_code 		 \n"
"geometry_msgs/Pose positioned_pose 		 \n"
"uint8  mc_func_code 	\n"
"uint8  transfer_code 	\n"
"uint8  transfer_state \n"
"uint8  align_type\n"
"string align_metadata\n"
"geometry_msgs/Pose pre_positioned_pose\n"
"string Identify_id\n"
"string update_time			# must-have 	 \n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_id);
      stream.next(m.query_base_index);
      stream.next(m.query_opt_index);
      stream.next(m.query_parameter);
      stream.next(m.request_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cell_work_stationitems_cmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cellctrl_control_msgs::cell_work_stationitems_cmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd_id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.cmd_id);
    s << indent << "query_base_index: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.query_base_index);
    s << indent << "query_opt_index: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.query_opt_index);
    s << indent << "query_parameter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.query_parameter);
    s << indent << "request_data: ";
    s << std::endl;
    Printer< ::cellctrl_control_msgs::cell_work_stationitems_<ContainerAllocator> >::stream(s, indent + "  ", v.request_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_WORK_STATIONITEMS_CMDREQUEST_H
