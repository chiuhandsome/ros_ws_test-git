// Generated by gencpp from file car_db_manager_msgs/car_db_processResult.msg
// DO NOT EDIT!


#ifndef CAR_DB_MANAGER_MSGS_MESSAGE_CAR_DB_PROCESSRESULT_H
#define CAR_DB_MANAGER_MSGS_MESSAGE_CAR_DB_PROCESSRESULT_H


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
struct car_db_processResult_
{
  typedef car_db_processResult_<ContainerAllocator> Type;

  car_db_processResult_()
    : result(0)
    , result_data()  {
    }
  car_db_processResult_(const ContainerAllocator& _alloc)
    : result(0)
    , result_data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _result_data_type;
  _result_data_type result_data;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(OK)
  #undef OK
#endif
#if defined(_WIN32) && defined(NOT_OK)
  #undef NOT_OK
#endif
#if defined(_WIN32) && defined(TIMED_OUT)
  #undef TIMED_OUT
#endif
#if defined(_WIN32) && defined(OUT_OF_TIMES)
  #undef OUT_OF_TIMES
#endif

  enum {
    OK = 1u,
    NOT_OK = 2u,
    TIMED_OUT = 3u,
    OUT_OF_TIMES = 4u,
  };


  typedef boost::shared_ptr< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> const> ConstPtr;

}; // struct car_db_processResult_

typedef ::car_db_manager_msgs::car_db_processResult_<std::allocator<void> > car_db_processResult;

typedef boost::shared_ptr< ::car_db_manager_msgs::car_db_processResult > car_db_processResultPtr;
typedef boost::shared_ptr< ::car_db_manager_msgs::car_db_processResult const> car_db_processResultConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.result_data == rhs.result_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator1> & lhs, const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_db_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4051716b399768c5d9da66e597eccbc3";
  }

  static const char* value(const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4051716b399768c5ULL;
  static const uint64_t static_value2 = 0xd9da66e597eccbc3ULL;
};

template<class ContainerAllocator>
struct DataType< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_db_manager_msgs/car_db_processResult";
  }

  static const char* value(const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"uint8 OK=1\n"
"uint8 NOT_OK=2\n"
"uint8 TIMED_OUT=3\n"
"uint8 OUT_OF_TIMES=4\n"
"uint8 result\n"
"string[] result_data	# delimiter symbol ==> ,\n"
;
  }

  static const char* value(const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.result_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct car_db_processResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_db_manager_msgs::car_db_processResult_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "result_data[]" << std::endl;
    for (size_t i = 0; i < v.result_data.size(); ++i)
    {
      s << indent << "  result_data[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.result_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_DB_MANAGER_MSGS_MESSAGE_CAR_DB_PROCESSRESULT_H
