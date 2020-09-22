// Generated by gencpp from file robot_scheduling_msgs/db_process_recoveryResult.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_DB_PROCESS_RECOVERYRESULT_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_DB_PROCESS_RECOVERYRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_scheduling_msgs
{
template <class ContainerAllocator>
struct db_process_recoveryResult_
{
  typedef db_process_recoveryResult_<ContainerAllocator> Type;

  db_process_recoveryResult_()
    : result(0)  {
    }
  db_process_recoveryResult_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(OK)
  #undef OK
#endif

  enum {
    OK = 1u,
  };


  typedef boost::shared_ptr< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> const> ConstPtr;

}; // struct db_process_recoveryResult_

typedef ::robot_scheduling_msgs::db_process_recoveryResult_<std::allocator<void> > db_process_recoveryResult;

typedef boost::shared_ptr< ::robot_scheduling_msgs::db_process_recoveryResult > db_process_recoveryResultPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::db_process_recoveryResult const> db_process_recoveryResultConstPtr;

// constants requiring out of line definition

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80ace2ee7a7a5f70a61ef08433d7d2ed";
  }

  static const char* value(const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80ace2ee7a7a5f70ULL;
  static const uint64_t static_value2 = 0xa61ef08433d7d2edULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/db_process_recoveryResult";
  }

  static const char* value(const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the result\n"
"uint8 OK=1\n"
"uint8 result\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct db_process_recoveryResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::db_process_recoveryResult_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_DB_PROCESS_RECOVERYRESULT_H
