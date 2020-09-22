// Generated by gencpp from file botcmd_msgs/bot_transferdata.msg
// DO NOT EDIT!


#ifndef BOTCMD_MSGS_MESSAGE_BOT_TRANSFERDATA_H
#define BOTCMD_MSGS_MESSAGE_BOT_TRANSFERDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace botcmd_msgs
{
template <class ContainerAllocator>
struct bot_transferdata_
{
  typedef bot_transferdata_<ContainerAllocator> Type;

  bot_transferdata_()
    : index_ID(0)
    , data()
    , result(false)  {
    }
  bot_transferdata_(const ContainerAllocator& _alloc)
    : index_ID(0)
    , data(_alloc)
    , result(false)  {
  (void)_alloc;
    }



   typedef int8_t _index_ID_type;
  _index_ID_type index_ID;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;

   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> const> ConstPtr;

}; // struct bot_transferdata_

typedef ::botcmd_msgs::bot_transferdata_<std::allocator<void> > bot_transferdata;

typedef boost::shared_ptr< ::botcmd_msgs::bot_transferdata > bot_transferdataPtr;
typedef boost::shared_ptr< ::botcmd_msgs::bot_transferdata const> bot_transferdataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::botcmd_msgs::bot_transferdata_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::botcmd_msgs::bot_transferdata_<ContainerAllocator1> & lhs, const ::botcmd_msgs::bot_transferdata_<ContainerAllocator2> & rhs)
{
  return lhs.index_ID == rhs.index_ID &&
    lhs.data == rhs.data &&
    lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::botcmd_msgs::bot_transferdata_<ContainerAllocator1> & lhs, const ::botcmd_msgs::bot_transferdata_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace botcmd_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09a8772b40b66daa3c0ae4a33bacb8ed";
  }

  static const char* value(const ::botcmd_msgs::bot_transferdata_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09a8772b40b66daaULL;
  static const uint64_t static_value2 = 0x3c0ae4a33bacb8edULL;
};

template<class ContainerAllocator>
struct DataType< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "botcmd_msgs/bot_transferdata";
  }

  static const char* value(const ::botcmd_msgs::bot_transferdata_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 index_ID\n"
"string data\n"
"bool result	\n"
;
  }

  static const char* value(const ::botcmd_msgs::bot_transferdata_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index_ID);
      stream.next(m.data);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct bot_transferdata_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::botcmd_msgs::bot_transferdata_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::botcmd_msgs::bot_transferdata_<ContainerAllocator>& v)
  {
    s << indent << "index_ID: ";
    Printer<int8_t>::stream(s, indent + "  ", v.index_ID);
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BOTCMD_MSGS_MESSAGE_BOT_TRANSFERDATA_H