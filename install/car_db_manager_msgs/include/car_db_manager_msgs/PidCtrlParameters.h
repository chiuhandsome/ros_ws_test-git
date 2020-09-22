// Generated by gencpp from file car_db_manager_msgs/PidCtrlParameters.msg
// DO NOT EDIT!


#ifndef CAR_DB_MANAGER_MSGS_MESSAGE_PIDCTRLPARAMETERS_H
#define CAR_DB_MANAGER_MSGS_MESSAGE_PIDCTRLPARAMETERS_H


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
struct PidCtrlParameters_
{
  typedef PidCtrlParameters_<ContainerAllocator> Type;

  PidCtrlParameters_()
    : primary_id()
    , unique_code()
    , base_name()
    , target(0.0)
    , tolerance(0.0)
    , min_bound(0.0)
    , max_bound(0.0)
    , d_KP(0.0)
    , d_KI(0.0)
    , d_KD(0.0)
    , b_compensation(false)
    , update_time()  {
    }
  PidCtrlParameters_(const ContainerAllocator& _alloc)
    : primary_id(_alloc)
    , unique_code(_alloc)
    , base_name(_alloc)
    , target(0.0)
    , tolerance(0.0)
    , min_bound(0.0)
    , max_bound(0.0)
    , d_KP(0.0)
    , d_KI(0.0)
    , d_KD(0.0)
    , b_compensation(false)
    , update_time(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _primary_id_type;
  _primary_id_type primary_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _unique_code_type;
  _unique_code_type unique_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _base_name_type;
  _base_name_type base_name;

   typedef float _target_type;
  _target_type target;

   typedef float _tolerance_type;
  _tolerance_type tolerance;

   typedef float _min_bound_type;
  _min_bound_type min_bound;

   typedef float _max_bound_type;
  _max_bound_type max_bound;

   typedef double _d_KP_type;
  _d_KP_type d_KP;

   typedef double _d_KI_type;
  _d_KI_type d_KI;

   typedef double _d_KD_type;
  _d_KD_type d_KD;

   typedef uint8_t _b_compensation_type;
  _b_compensation_type b_compensation;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _update_time_type;
  _update_time_type update_time;





  typedef boost::shared_ptr< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> const> ConstPtr;

}; // struct PidCtrlParameters_

typedef ::car_db_manager_msgs::PidCtrlParameters_<std::allocator<void> > PidCtrlParameters;

typedef boost::shared_ptr< ::car_db_manager_msgs::PidCtrlParameters > PidCtrlParametersPtr;
typedef boost::shared_ptr< ::car_db_manager_msgs::PidCtrlParameters const> PidCtrlParametersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator2> & rhs)
{
  return lhs.primary_id == rhs.primary_id &&
    lhs.unique_code == rhs.unique_code &&
    lhs.base_name == rhs.base_name &&
    lhs.target == rhs.target &&
    lhs.tolerance == rhs.tolerance &&
    lhs.min_bound == rhs.min_bound &&
    lhs.max_bound == rhs.max_bound &&
    lhs.d_KP == rhs.d_KP &&
    lhs.d_KI == rhs.d_KI &&
    lhs.d_KD == rhs.d_KD &&
    lhs.b_compensation == rhs.b_compensation &&
    lhs.update_time == rhs.update_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_db_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09b2214d7f8d0d3330776009fda8ce8f";
  }

  static const char* value(const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09b2214d7f8d0d33ULL;
  static const uint64_t static_value2 = 0x30776009fda8ce8fULL;
};

template<class ContainerAllocator>
struct DataType< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_db_manager_msgs/PidCtrlParameters";
  }

  static const char* value(const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string primary_id			# must-have,UUID : primary_key(system_id)		\n"
"string unique_code 		        # must-have,UNIQUE INDEX , pid_ctrl_id	\n"
"string base_name\n"
"float32 target		   \n"
"float32 tolerance	\n"
"float32 min_bound	\n"
"float32 max_bound\n"
"float64 d_KP	\n"
"float64 d_KI	\n"
"float64 d_KD\n"
"bool b_compensation\n"
"string update_time			# must-have 	 \n"
"\n"
;
  }

  static const char* value(const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.primary_id);
      stream.next(m.unique_code);
      stream.next(m.base_name);
      stream.next(m.target);
      stream.next(m.tolerance);
      stream.next(m.min_bound);
      stream.next(m.max_bound);
      stream.next(m.d_KP);
      stream.next(m.d_KI);
      stream.next(m.d_KD);
      stream.next(m.b_compensation);
      stream.next(m.update_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PidCtrlParameters_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_db_manager_msgs::PidCtrlParameters_<ContainerAllocator>& v)
  {
    s << indent << "primary_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.primary_id);
    s << indent << "unique_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.unique_code);
    s << indent << "base_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.base_name);
    s << indent << "target: ";
    Printer<float>::stream(s, indent + "  ", v.target);
    s << indent << "tolerance: ";
    Printer<float>::stream(s, indent + "  ", v.tolerance);
    s << indent << "min_bound: ";
    Printer<float>::stream(s, indent + "  ", v.min_bound);
    s << indent << "max_bound: ";
    Printer<float>::stream(s, indent + "  ", v.max_bound);
    s << indent << "d_KP: ";
    Printer<double>::stream(s, indent + "  ", v.d_KP);
    s << indent << "d_KI: ";
    Printer<double>::stream(s, indent + "  ", v.d_KI);
    s << indent << "d_KD: ";
    Printer<double>::stream(s, indent + "  ", v.d_KD);
    s << indent << "b_compensation: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.b_compensation);
    s << indent << "update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.update_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_DB_MANAGER_MSGS_MESSAGE_PIDCTRLPARAMETERS_H