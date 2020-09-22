// Generated by gencpp from file car_db_manager_msgs/CheckParameters.msg
// DO NOT EDIT!


#ifndef CAR_DB_MANAGER_MSGS_MESSAGE_CHECKPARAMETERS_H
#define CAR_DB_MANAGER_MSGS_MESSAGE_CHECKPARAMETERS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace car_db_manager_msgs
{
template <class ContainerAllocator>
struct CheckParameters_
{
  typedef CheckParameters_<ContainerAllocator> Type;

  CheckParameters_()
    : primary_id()
    , unique_code()
    , base_name()
    , out_of_times(0)
    , timeout(0.0)
    , update_time()  {
    }
  CheckParameters_(const ContainerAllocator& _alloc)
    : primary_id(_alloc)
    , unique_code(_alloc)
    , base_name(_alloc)
    , out_of_times(0)
    , timeout(0.0)
    , update_time(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _primary_id_type;
  _primary_id_type primary_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _unique_code_type;
  _unique_code_type unique_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _base_name_type;
  _base_name_type base_name;

   typedef uint8_t _out_of_times_type;
  _out_of_times_type out_of_times;

   typedef float _timeout_type;
  _timeout_type timeout;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _update_time_type;
  _update_time_type update_time;





  typedef boost::shared_ptr< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> const> ConstPtr;

}; // struct CheckParameters_

typedef ::car_db_manager_msgs::CheckParameters_<std::allocator<void> > CheckParameters;

typedef boost::shared_ptr< ::car_db_manager_msgs::CheckParameters > CheckParametersPtr;
typedef boost::shared_ptr< ::car_db_manager_msgs::CheckParameters const> CheckParametersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator2> & rhs)
{
  return lhs.primary_id == rhs.primary_id &&
    lhs.unique_code == rhs.unique_code &&
    lhs.base_name == rhs.base_name &&
    lhs.out_of_times == rhs.out_of_times &&
    lhs.timeout == rhs.timeout &&
    lhs.update_time == rhs.update_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_db_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee0ef2f32ee4790a4809922f38c58783";
  }

  static const char* value(const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee0ef2f32ee4790aULL;
  static const uint64_t static_value2 = 0x4809922f38c58783ULL;
};

template<class ContainerAllocator>
struct DataType< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_db_manager_msgs/CheckParameters";
  }

  static const char* value(const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string primary_id			# must-have,UUID : primary_key(system_id)		\n"
"string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	\n"
"string base_name\n"
"uint8 out_of_times	\n"
"float32 timeout	\n"
"string update_time			# must-have 	  	\n"
"\n"
;
  }

  static const char* value(const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.primary_id);
      stream.next(m.unique_code);
      stream.next(m.base_name);
      stream.next(m.out_of_times);
      stream.next(m.timeout);
      stream.next(m.update_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckParameters_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_db_manager_msgs::CheckParameters_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_db_manager_msgs::CheckParameters_<ContainerAllocator>& v)
  {
    s << indent << "primary_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.primary_id);
    s << indent << "unique_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.unique_code);
    s << indent << "base_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.base_name);
    s << indent << "out_of_times: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.out_of_times);
    s << indent << "timeout: ";
    Printer<float>::stream(s, indent + "  ", v.timeout);
    s << indent << "update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.update_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_DB_MANAGER_MSGS_MESSAGE_CHECKPARAMETERS_H