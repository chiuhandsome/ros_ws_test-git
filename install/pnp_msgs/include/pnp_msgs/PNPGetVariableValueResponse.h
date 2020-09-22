// Generated by gencpp from file pnp_msgs/PNPGetVariableValueResponse.msg
// DO NOT EDIT!


#ifndef PNP_MSGS_MESSAGE_PNPGETVARIABLEVALUERESPONSE_H
#define PNP_MSGS_MESSAGE_PNPGETVARIABLEVALUERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pnp_msgs
{
template <class ContainerAllocator>
struct PNPGetVariableValueResponse_
{
  typedef PNPGetVariableValueResponse_<ContainerAllocator> Type;

  PNPGetVariableValueResponse_()
    : answer()  {
    }
  PNPGetVariableValueResponse_(const ContainerAllocator& _alloc)
    : answer(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _answer_type;
  _answer_type answer;





  typedef boost::shared_ptr< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PNPGetVariableValueResponse_

typedef ::pnp_msgs::PNPGetVariableValueResponse_<std::allocator<void> > PNPGetVariableValueResponse;

typedef boost::shared_ptr< ::pnp_msgs::PNPGetVariableValueResponse > PNPGetVariableValueResponsePtr;
typedef boost::shared_ptr< ::pnp_msgs::PNPGetVariableValueResponse const> PNPGetVariableValueResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator1> & lhs, const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator2> & rhs)
{
  return lhs.answer == rhs.answer;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator1> & lhs, const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pnp_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d7e708f879c94bb931716d8f4f130f30";
  }

  static const char* value(const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd7e708f879c94bb9ULL;
  static const uint64_t static_value2 = 0x31716d8f4f130f30ULL;
};

template<class ContainerAllocator>
struct DataType< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pnp_msgs/PNPGetVariableValueResponse";
  }

  static const char* value(const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string answer\n"
"\n"
;
  }

  static const char* value(const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.answer);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PNPGetVariableValueResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pnp_msgs::PNPGetVariableValueResponse_<ContainerAllocator>& v)
  {
    s << indent << "answer: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.answer);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PNP_MSGS_MESSAGE_PNPGETVARIABLEVALUERESPONSE_H
