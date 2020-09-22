// Generated by gencpp from file car_db_manager_msgs/ActionFunctionParameters.msg
// DO NOT EDIT!


#ifndef CAR_DB_MANAGER_MSGS_MESSAGE_ACTIONFUNCTIONPARAMETERS_H
#define CAR_DB_MANAGER_MSGS_MESSAGE_ACTIONFUNCTIONPARAMETERS_H


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
struct ActionFunctionParameters_
{
  typedef ActionFunctionParameters_<ContainerAllocator> Type;

  ActionFunctionParameters_()
    : primary_id()
    , unique_code()
    , base_name()
    , function_level(0)
    , function_ac_name()
    , function_desc_eng()
    , function_desc_tc()
    , function_desc_sc()
    , update_time()  {
    }
  ActionFunctionParameters_(const ContainerAllocator& _alloc)
    : primary_id(_alloc)
    , unique_code(_alloc)
    , base_name(_alloc)
    , function_level(0)
    , function_ac_name(_alloc)
    , function_desc_eng(_alloc)
    , function_desc_tc(_alloc)
    , function_desc_sc(_alloc)
    , update_time(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _primary_id_type;
  _primary_id_type primary_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _unique_code_type;
  _unique_code_type unique_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _base_name_type;
  _base_name_type base_name;

   typedef uint8_t _function_level_type;
  _function_level_type function_level;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _function_ac_name_type;
  _function_ac_name_type function_ac_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _function_desc_eng_type;
  _function_desc_eng_type function_desc_eng;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _function_desc_tc_type;
  _function_desc_tc_type function_desc_tc;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _function_desc_sc_type;
  _function_desc_sc_type function_desc_sc;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _update_time_type;
  _update_time_type update_time;





  typedef boost::shared_ptr< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> const> ConstPtr;

}; // struct ActionFunctionParameters_

typedef ::car_db_manager_msgs::ActionFunctionParameters_<std::allocator<void> > ActionFunctionParameters;

typedef boost::shared_ptr< ::car_db_manager_msgs::ActionFunctionParameters > ActionFunctionParametersPtr;
typedef boost::shared_ptr< ::car_db_manager_msgs::ActionFunctionParameters const> ActionFunctionParametersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator2> & rhs)
{
  return lhs.primary_id == rhs.primary_id &&
    lhs.unique_code == rhs.unique_code &&
    lhs.base_name == rhs.base_name &&
    lhs.function_level == rhs.function_level &&
    lhs.function_ac_name == rhs.function_ac_name &&
    lhs.function_desc_eng == rhs.function_desc_eng &&
    lhs.function_desc_tc == rhs.function_desc_tc &&
    lhs.function_desc_sc == rhs.function_desc_sc &&
    lhs.update_time == rhs.update_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_db_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "231b60cd8f4f3ff5ac535205293f42c3";
  }

  static const char* value(const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x231b60cd8f4f3ff5ULL;
  static const uint64_t static_value2 = 0xac535205293f42c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_db_manager_msgs/ActionFunctionParameters";
  }

  static const char* value(const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string primary_id			# must-have,UUID : primary_key(system_id)		\n"
"string unique_code 		        # must-have,UNIQUE INDEX , parameter_id	\n"
"string base_name\n"
"uint8 function_level	\n"
"string function_ac_name\n"
"string function_desc_eng\n"
"string function_desc_tc\n"
"string function_desc_sc\n"
"string update_time			# must-have 	  	\n"
"\n"
;
  }

  static const char* value(const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.primary_id);
      stream.next(m.unique_code);
      stream.next(m.base_name);
      stream.next(m.function_level);
      stream.next(m.function_ac_name);
      stream.next(m.function_desc_eng);
      stream.next(m.function_desc_tc);
      stream.next(m.function_desc_sc);
      stream.next(m.update_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActionFunctionParameters_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_db_manager_msgs::ActionFunctionParameters_<ContainerAllocator>& v)
  {
    s << indent << "primary_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.primary_id);
    s << indent << "unique_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.unique_code);
    s << indent << "base_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.base_name);
    s << indent << "function_level: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.function_level);
    s << indent << "function_ac_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.function_ac_name);
    s << indent << "function_desc_eng: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.function_desc_eng);
    s << indent << "function_desc_tc: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.function_desc_tc);
    s << indent << "function_desc_sc: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.function_desc_sc);
    s << indent << "update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.update_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_DB_MANAGER_MSGS_MESSAGE_ACTIONFUNCTIONPARAMETERS_H