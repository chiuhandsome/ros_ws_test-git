// Generated by gencpp from file robot_control_msgs/robot_ctrl_roslog_cmdRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ROSLOG_CMDREQUEST_H
#define ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ROSLOG_CMDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_control_msgs/robot_ctrl_roslog.h>

namespace robot_control_msgs
{
template <class ContainerAllocator>
struct robot_ctrl_roslog_cmdRequest_
{
  typedef robot_ctrl_roslog_cmdRequest_<ContainerAllocator> Type;

  robot_ctrl_roslog_cmdRequest_()
    : cmd_id(0)
    , index_name()
    , parameter()
    , rec_roslog()  {
    }
  robot_ctrl_roslog_cmdRequest_(const ContainerAllocator& _alloc)
    : cmd_id(0)
    , index_name(_alloc)
    , parameter(_alloc)
    , rec_roslog(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _cmd_id_type;
  _cmd_id_type cmd_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _index_name_type;
  _index_name_type index_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _parameter_type;
  _parameter_type parameter;

   typedef  ::robot_control_msgs::robot_ctrl_roslog_<ContainerAllocator>  _rec_roslog_type;
  _rec_roslog_type rec_roslog;





  typedef boost::shared_ptr< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct robot_ctrl_roslog_cmdRequest_

typedef ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<std::allocator<void> > robot_ctrl_roslog_cmdRequest;

typedef boost::shared_ptr< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest > robot_ctrl_roslog_cmdRequestPtr;
typedef boost::shared_ptr< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest const> robot_ctrl_roslog_cmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator1> & lhs, const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_id == rhs.cmd_id &&
    lhs.index_name == rhs.index_name &&
    lhs.parameter == rhs.parameter &&
    lhs.rec_roslog == rhs.rec_roslog;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator1> & lhs, const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a28cf7f63c4b9049a8efbc93b5a7efff";
  }

  static const char* value(const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa28cf7f63c4b9049ULL;
  static const uint64_t static_value2 = 0xa8efbc93b5a7efffULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_control_msgs/robot_ctrl_roslog_cmdRequest";
  }

  static const char* value(const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 cmd_id	        # 1:Add , 2:modify 3:delete 4:requery 		\n"
"string index_name \n"
"string parameter 	\n"
"robot_ctrl_roslog rec_roslog	 \n"
"\n"
"================================================================================\n"
"MSG: robot_control_msgs/robot_ctrl_roslog\n"
"string system_id \n"
"string roslog_level 			 \n"
"string roslog_node 			 \n"
"string roslog_content 			 \n"
"string occure_time 	 \n"
"string update_time \n"
;
  }

  static const char* value(const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_id);
      stream.next(m.index_name);
      stream.next(m.parameter);
      stream.next(m.rec_roslog);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_ctrl_roslog_cmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_control_msgs::robot_ctrl_roslog_cmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd_id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.cmd_id);
    s << indent << "index_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.index_name);
    s << indent << "parameter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.parameter);
    s << indent << "rec_roslog: ";
    s << std::endl;
    Printer< ::robot_control_msgs::robot_ctrl_roslog_<ContainerAllocator> >::stream(s, indent + "  ", v.rec_roslog);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_CONTROL_MSGS_MESSAGE_ROBOT_CTRL_ROSLOG_CMDREQUEST_H