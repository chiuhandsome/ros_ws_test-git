// Generated by gencpp from file samsungcmd_msgs/samsung_commdata_cmdRequest.msg
// DO NOT EDIT!


#ifndef SAMSUNGCMD_MSGS_MESSAGE_SAMSUNG_COMMDATA_CMDREQUEST_H
#define SAMSUNGCMD_MSGS_MESSAGE_SAMSUNG_COMMDATA_CMDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace samsungcmd_msgs
{
template <class ContainerAllocator>
struct samsung_commdata_cmdRequest_
{
  typedef samsung_commdata_cmdRequest_<ContainerAllocator> Type;

  samsung_commdata_cmdRequest_()
    : req_comm_ID()
    , req_func_code()
    , req_comm_data()
    , req_comm_data_1()
    , req_comm_data_2()  {
    }
  samsung_commdata_cmdRequest_(const ContainerAllocator& _alloc)
    : req_comm_ID(_alloc)
    , req_func_code(_alloc)
    , req_comm_data(_alloc)
    , req_comm_data_1(_alloc)
    , req_comm_data_2(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _req_comm_ID_type;
  _req_comm_ID_type req_comm_ID;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _req_func_code_type;
  _req_func_code_type req_func_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _req_comm_data_type;
  _req_comm_data_type req_comm_data;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _req_comm_data_1_type;
  _req_comm_data_1_type req_comm_data_1;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _req_comm_data_2_type;
  _req_comm_data_2_type req_comm_data_2;





  typedef boost::shared_ptr< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct samsung_commdata_cmdRequest_

typedef ::samsungcmd_msgs::samsung_commdata_cmdRequest_<std::allocator<void> > samsung_commdata_cmdRequest;

typedef boost::shared_ptr< ::samsungcmd_msgs::samsung_commdata_cmdRequest > samsung_commdata_cmdRequestPtr;
typedef boost::shared_ptr< ::samsungcmd_msgs::samsung_commdata_cmdRequest const> samsung_commdata_cmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator1> & lhs, const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.req_comm_ID == rhs.req_comm_ID &&
    lhs.req_func_code == rhs.req_func_code &&
    lhs.req_comm_data == rhs.req_comm_data &&
    lhs.req_comm_data_1 == rhs.req_comm_data_1 &&
    lhs.req_comm_data_2 == rhs.req_comm_data_2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator1> & lhs, const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace samsungcmd_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "696dc8def84f577b37c5b3f6d1d54ac3";
  }

  static const char* value(const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x696dc8def84f577bULL;
  static const uint64_t static_value2 = 0x37c5b3f6d1d54ac3ULL;
};

template<class ContainerAllocator>
struct DataType< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "samsungcmd_msgs/samsung_commdata_cmdRequest";
  }

  static const char* value(const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string 	req_comm_ID			#4 byte :A001[To ACS] 001A[To AGV,001]\n"
"string  req_func_code		#1 byte :C,T,R\n"
"string 	req_comm_data		#2 byte\n"
"string 	req_comm_data_1		#2 byte\n"
"string 	req_comm_data_2		#2 byte\n"
;
  }

  static const char* value(const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.req_comm_ID);
      stream.next(m.req_func_code);
      stream.next(m.req_comm_data);
      stream.next(m.req_comm_data_1);
      stream.next(m.req_comm_data_2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct samsung_commdata_cmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::samsungcmd_msgs::samsung_commdata_cmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "req_comm_ID: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.req_comm_ID);
    s << indent << "req_func_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.req_func_code);
    s << indent << "req_comm_data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.req_comm_data);
    s << indent << "req_comm_data_1: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.req_comm_data_1);
    s << indent << "req_comm_data_2: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.req_comm_data_2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SAMSUNGCMD_MSGS_MESSAGE_SAMSUNG_COMMDATA_CMDREQUEST_H