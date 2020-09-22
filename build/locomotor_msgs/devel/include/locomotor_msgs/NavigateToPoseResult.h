// Generated by gencpp from file locomotor_msgs/NavigateToPoseResult.msg
// DO NOT EDIT!


#ifndef LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSERESULT_H
#define LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSERESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <locomotor_msgs/ResultCode.h>

namespace locomotor_msgs
{
template <class ContainerAllocator>
struct NavigateToPoseResult_
{
  typedef NavigateToPoseResult_<ContainerAllocator> Type;

  NavigateToPoseResult_()
    : result_code()  {
    }
  NavigateToPoseResult_(const ContainerAllocator& _alloc)
    : result_code(_alloc)  {
  (void)_alloc;
    }



   typedef  ::locomotor_msgs::ResultCode_<ContainerAllocator>  _result_code_type;
  _result_code_type result_code;





  typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> const> ConstPtr;

}; // struct NavigateToPoseResult_

typedef ::locomotor_msgs::NavigateToPoseResult_<std::allocator<void> > NavigateToPoseResult;

typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseResult > NavigateToPoseResultPtr;
typedef boost::shared_ptr< ::locomotor_msgs::NavigateToPoseResult const> NavigateToPoseResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator1> & lhs, const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator2> & rhs)
{
  return lhs.result_code == rhs.result_code;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator1> & lhs, const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace locomotor_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c880febea4d3566bbda2f661c4a761c2";
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc880febea4d3566bULL;
  static const uint64_t static_value2 = 0xbda2f661c4a761c2ULL;
};

template<class ContainerAllocator>
struct DataType< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "locomotor_msgs/NavigateToPoseResult";
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"ResultCode result_code\n"
"\n"
"================================================================================\n"
"MSG: locomotor_msgs/ResultCode\n"
"# This message contains three separate pieces.\n"
"#    A) A code indicating which component(s) the error originates from (bitmask style)\n"
"#    B) A code corresponding with the result_code defined in nav_core2/s.h\n"
"#    C) A freeform string message\n"
"\n"
"# The enumerations below are not necessarily the exclusive values for the codes.\n"
"# Others may implement additional values beyond the ones shown, using custom state machines.\n"
"\n"
"########### Component Values ###############################################\n"
"int32 GLOBAL_COSTMAP = 1\n"
"int32  LOCAL_COSTMAP = 2\n"
"int32 GLOBAL_PLANNER = 4\n"
"int32  LOCAL_PLANNER = 8\n"
"\n"
"########### Result Codes ###################################################\n"
"int32 GENERIC_COSTMAP=0\n"
"int32 COSTMAP_SAFETY=1\n"
"int32 COSTMAP_DATA_LAG=2\n"
"int32 GENERIC_PLANNER=3\n"
"int32 GENERIC_GLOBAL_PLANNER=4\n"
"int32 INVALID_START=5\n"
"int32 START_BOUNDS=6\n"
"int32 OCCUPIED_START=7\n"
"int32 INVALID_GOAL=8\n"
"int32 GOAL_BOUNDS=9\n"
"int32 OCCUPIED_GOAL=10\n"
"int32 NO_GLOBAL_PATH=11\n"
"int32 GLOBAL_PLANNER_TIMEOUT=12\n"
"int32 GENERIC_LOCAL_PLANNER=13\n"
"int32 ILLEGAL_TRAJECTORY=14\n"
"int32 NO_LEGAL_TRAJECTORIES=15\n"
"int32 PLANNER_TF=16\n"
"\n"
"########### Actual Data ####################################################\n"
"int32 component\n"
"int32 result_code\n"
"string message\n"
;
  }

  static const char* value(const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result_code);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavigateToPoseResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::locomotor_msgs::NavigateToPoseResult_<ContainerAllocator>& v)
  {
    s << indent << "result_code: ";
    s << std::endl;
    Printer< ::locomotor_msgs::ResultCode_<ContainerAllocator> >::stream(s, indent + "  ", v.result_code);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCOMOTOR_MSGS_MESSAGE_NAVIGATETOPOSERESULT_H
