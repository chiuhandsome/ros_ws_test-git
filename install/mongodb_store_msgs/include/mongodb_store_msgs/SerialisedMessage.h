// Generated by gencpp from file mongodb_store_msgs/SerialisedMessage.msg
// DO NOT EDIT!


#ifndef MONGODB_STORE_MSGS_MESSAGE_SERIALISEDMESSAGE_H
#define MONGODB_STORE_MSGS_MESSAGE_SERIALISEDMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mongodb_store_msgs
{
template <class ContainerAllocator>
struct SerialisedMessage_
{
  typedef SerialisedMessage_<ContainerAllocator> Type;

  SerialisedMessage_()
    : type()
    , msg()  {
    }
  SerialisedMessage_(const ContainerAllocator& _alloc)
    : type(_alloc)
    , msg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _msg_type;
  _msg_type msg;





  typedef boost::shared_ptr< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> const> ConstPtr;

}; // struct SerialisedMessage_

typedef ::mongodb_store_msgs::SerialisedMessage_<std::allocator<void> > SerialisedMessage;

typedef boost::shared_ptr< ::mongodb_store_msgs::SerialisedMessage > SerialisedMessagePtr;
typedef boost::shared_ptr< ::mongodb_store_msgs::SerialisedMessage const> SerialisedMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.msg == rhs.msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mongodb_store_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "42f77e70b6ff70f99d1597d836874cfc";
  }

  static const char* value(const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x42f77e70b6ff70f9ULL;
  static const uint64_t static_value2 = 0x9d1597d836874cfcULL;
};

template<class ContainerAllocator>
struct DataType< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mongodb_store_msgs/SerialisedMessage";
  }

  static const char* value(const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# type to of the serialised message\n"
"string type\n"
"# the serialised message\n"
"uint8[] msg\n"
;
  }

  static const char* value(const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SerialisedMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mongodb_store_msgs::SerialisedMessage_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "msg[]" << std::endl;
    for (size_t i = 0; i < v.msg.size(); ++i)
    {
      s << indent << "  msg[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.msg[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONGODB_STORE_MSGS_MESSAGE_SERIALISEDMESSAGE_H