// Generated by gencpp from file cellctrl_control_msgs/cell_agv_imu.msg
// DO NOT EDIT!


#ifndef CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_AGV_IMU_H
#define CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_AGV_IMU_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cellctrl_control_msgs
{
template <class ContainerAllocator>
struct cell_agv_imu_
{
  typedef cell_agv_imu_<ContainerAllocator> Type;

  cell_agv_imu_()
    : primary_id()
    , foreign_key()
    , unique_code()
    , tagname()
    , tag_ser(0)
    , device_code()
    , device_serialno()
    , put_in_service_date()
    , work_comulative_time(0.0)
    , current_status(0)
    , update_time()  {
    }
  cell_agv_imu_(const ContainerAllocator& _alloc)
    : primary_id(_alloc)
    , foreign_key(_alloc)
    , unique_code(_alloc)
    , tagname(_alloc)
    , tag_ser(0)
    , device_code(_alloc)
    , device_serialno(_alloc)
    , put_in_service_date(_alloc)
    , work_comulative_time(0.0)
    , current_status(0)
    , update_time(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _primary_id_type;
  _primary_id_type primary_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _foreign_key_type;
  _foreign_key_type foreign_key;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _unique_code_type;
  _unique_code_type unique_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _tagname_type;
  _tagname_type tagname;

   typedef uint8_t _tag_ser_type;
  _tag_ser_type tag_ser;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _device_code_type;
  _device_code_type device_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _device_serialno_type;
  _device_serialno_type device_serialno;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _put_in_service_date_type;
  _put_in_service_date_type put_in_service_date;

   typedef float _work_comulative_time_type;
  _work_comulative_time_type work_comulative_time;

   typedef uint8_t _current_status_type;
  _current_status_type current_status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _update_time_type;
  _update_time_type update_time;





  typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> const> ConstPtr;

}; // struct cell_agv_imu_

typedef ::cellctrl_control_msgs::cell_agv_imu_<std::allocator<void> > cell_agv_imu;

typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_agv_imu > cell_agv_imuPtr;
typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_agv_imu const> cell_agv_imuConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator1> & lhs, const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator2> & rhs)
{
  return lhs.primary_id == rhs.primary_id &&
    lhs.foreign_key == rhs.foreign_key &&
    lhs.unique_code == rhs.unique_code &&
    lhs.tagname == rhs.tagname &&
    lhs.tag_ser == rhs.tag_ser &&
    lhs.device_code == rhs.device_code &&
    lhs.device_serialno == rhs.device_serialno &&
    lhs.put_in_service_date == rhs.put_in_service_date &&
    lhs.work_comulative_time == rhs.work_comulative_time &&
    lhs.current_status == rhs.current_status &&
    lhs.update_time == rhs.update_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator1> & lhs, const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cellctrl_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6cc23869890ef4a0917ab02d7306f61e";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6cc23869890ef4a0ULL;
  static const uint64_t static_value2 = 0x917ab02d7306f61eULL;
};

template<class ContainerAllocator>
struct DataType< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cellctrl_control_msgs/cell_agv_imu";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string primary_id			# must-have,UUID : primary_key(system_id)\n"
"string foreign_key\n"
"string unique_code 		        # must-have,UNIQUE INDEX	\n"
"string tagname		   \n"
"uint8 tag_ser \n"
"string device_code	\n"
"string device_serialno	 \n"
"string put_in_service_date 		 \n"
"float32  work_comulative_time 	\n"
"uint8  current_status \n"
"string update_time			# must-have 	 \n"
;
  }

  static const char* value(const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.primary_id);
      stream.next(m.foreign_key);
      stream.next(m.unique_code);
      stream.next(m.tagname);
      stream.next(m.tag_ser);
      stream.next(m.device_code);
      stream.next(m.device_serialno);
      stream.next(m.put_in_service_date);
      stream.next(m.work_comulative_time);
      stream.next(m.current_status);
      stream.next(m.update_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cell_agv_imu_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cellctrl_control_msgs::cell_agv_imu_<ContainerAllocator>& v)
  {
    s << indent << "primary_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.primary_id);
    s << indent << "foreign_key: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.foreign_key);
    s << indent << "unique_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.unique_code);
    s << indent << "tagname: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.tagname);
    s << indent << "tag_ser: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.tag_ser);
    s << indent << "device_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.device_code);
    s << indent << "device_serialno: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.device_serialno);
    s << indent << "put_in_service_date: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.put_in_service_date);
    s << indent << "work_comulative_time: ";
    Printer<float>::stream(s, indent + "  ", v.work_comulative_time);
    s << indent << "current_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.current_status);
    s << indent << "update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.update_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_AGV_IMU_H
