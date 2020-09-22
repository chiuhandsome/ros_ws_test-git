// Generated by gencpp from file robot_scheduling_msgs/db_processGoal.msg
// DO NOT EDIT!


#ifndef ROBOT_SCHEDULING_MSGS_MESSAGE_DB_PROCESSGOAL_H
#define ROBOT_SCHEDULING_MSGS_MESSAGE_DB_PROCESSGOAL_H


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
struct db_processGoal_
{
  typedef db_processGoal_<ContainerAllocator> Type;

  db_processGoal_()
    : cmd_id(0)
    , cmd_data()
    , db_process_ac_name()  {
    }
  db_processGoal_(const ContainerAllocator& _alloc)
    : cmd_id(0)
    , cmd_data(_alloc)
    , db_process_ac_name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _cmd_id_type;
  _cmd_id_type cmd_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_data_type;
  _cmd_data_type cmd_data;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _db_process_ac_name_type;
  _db_process_ac_name_type db_process_ac_name;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(DBCMD_GET_CHKPARAMS)
  #undef DBCMD_GET_CHKPARAMS
#endif
#if defined(_WIN32) && defined(DBCMD_GET_POSE_ID)
  #undef DBCMD_GET_POSE_ID
#endif
#if defined(_WIN32) && defined(DBCMD_GET_FUNC_ID)
  #undef DBCMD_GET_FUNC_ID
#endif
#if defined(_WIN32) && defined(DBCMD_GET_WKSHEET)
  #undef DBCMD_GET_WKSHEET
#endif
#if defined(_WIN32) && defined(DBCMD_GET_ALMCODE)
  #undef DBCMD_GET_ALMCODE
#endif
#if defined(_WIN32) && defined(DBCMD_GET_OPCODE)
  #undef DBCMD_GET_OPCODE
#endif
#if defined(_WIN32) && defined(DBCMD_GET_PIDPARAMS)
  #undef DBCMD_GET_PIDPARAMS
#endif
#if defined(_WIN32) && defined(DBCMD_SET_ALMHIST)
  #undef DBCMD_SET_ALMHIST
#endif
#if defined(_WIN32) && defined(DBCMD_SET_OPHIST)
  #undef DBCMD_SET_OPHIST
#endif

  enum {
    DBCMD_GET_CHKPARAMS = 1u,
    DBCMD_GET_POSE_ID = 2u,
    DBCMD_GET_FUNC_ID = 3u,
    DBCMD_GET_WKSHEET = 4u,
    DBCMD_GET_ALMCODE = 5u,
    DBCMD_GET_OPCODE = 6u,
    DBCMD_GET_PIDPARAMS = 7u,
    DBCMD_SET_ALMHIST = 11u,
    DBCMD_SET_OPHIST = 12u,
  };


  typedef boost::shared_ptr< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> const> ConstPtr;

}; // struct db_processGoal_

typedef ::robot_scheduling_msgs::db_processGoal_<std::allocator<void> > db_processGoal;

typedef boost::shared_ptr< ::robot_scheduling_msgs::db_processGoal > db_processGoalPtr;
typedef boost::shared_ptr< ::robot_scheduling_msgs::db_processGoal const> db_processGoalConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_id == rhs.cmd_id &&
    lhs.cmd_data == rhs.cmd_data &&
    lhs.db_process_ac_name == rhs.db_process_ac_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator1> & lhs, const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_scheduling_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6d7cf9300754e278f65edfc9d4a39c3c";
  }

  static const char* value(const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6d7cf9300754e278ULL;
  static const uint64_t static_value2 = 0xf65edfc9d4a39c3cULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_scheduling_msgs/db_processGoal";
  }

  static const char* value(const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"uint8 DBCMD_GET_CHKPARAMS=1\n"
"uint8 DBCMD_GET_POSE_ID=2\n"
"uint8 DBCMD_GET_FUNC_ID=3\n"
"uint8 DBCMD_GET_WKSHEET=4\n"
"uint8 DBCMD_GET_ALMCODE=5\n"
"uint8 DBCMD_GET_OPCODE=6\n"
"uint8 DBCMD_GET_PIDPARAMS=7\n"
"uint8 DBCMD_SET_ALMHIST=11\n"
"uint8 DBCMD_SET_OPHIST=12\n"
"uint8 cmd_id\n"
"string cmd_data\n"
"string db_process_ac_name\n"
;
  }

  static const char* value(const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_id);
      stream.next(m.cmd_data);
      stream.next(m.db_process_ac_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct db_processGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_scheduling_msgs::db_processGoal_<ContainerAllocator>& v)
  {
    s << indent << "cmd_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cmd_id);
    s << indent << "cmd_data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd_data);
    s << indent << "db_process_ac_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.db_process_ac_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SCHEDULING_MSGS_MESSAGE_DB_PROCESSGOAL_H
