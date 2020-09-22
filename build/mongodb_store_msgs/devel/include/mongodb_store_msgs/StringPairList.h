// Generated by gencpp from file mongodb_store_msgs/StringPairList.msg
// DO NOT EDIT!


#ifndef MONGODB_STORE_MSGS_MESSAGE_STRINGPAIRLIST_H
#define MONGODB_STORE_MSGS_MESSAGE_STRINGPAIRLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mongodb_store_msgs/StringPair.h>

namespace mongodb_store_msgs
{
template <class ContainerAllocator>
struct StringPairList_
{
  typedef StringPairList_<ContainerAllocator> Type;

  StringPairList_()
    : pairs()  {
    }
  StringPairList_(const ContainerAllocator& _alloc)
    : pairs(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::mongodb_store_msgs::StringPair_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::mongodb_store_msgs::StringPair_<ContainerAllocator> >::other >  _pairs_type;
  _pairs_type pairs;





  typedef boost::shared_ptr< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> const> ConstPtr;

}; // struct StringPairList_

typedef ::mongodb_store_msgs::StringPairList_<std::allocator<void> > StringPairList;

typedef boost::shared_ptr< ::mongodb_store_msgs::StringPairList > StringPairListPtr;
typedef boost::shared_ptr< ::mongodb_store_msgs::StringPairList const> StringPairListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mongodb_store_msgs::StringPairList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mongodb_store_msgs::StringPairList_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::StringPairList_<ContainerAllocator2> & rhs)
{
  return lhs.pairs == rhs.pairs;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mongodb_store_msgs::StringPairList_<ContainerAllocator1> & lhs, const ::mongodb_store_msgs::StringPairList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mongodb_store_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "50c368c0f345d8de86876a3bada40aad";
  }

  static const char* value(const ::mongodb_store_msgs::StringPairList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x50c368c0f345d8deULL;
  static const uint64_t static_value2 = 0x86876a3bada40aadULL;
};

template<class ContainerAllocator>
struct DataType< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mongodb_store_msgs/StringPairList";
  }

  static const char* value(const ::mongodb_store_msgs::StringPairList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "StringPair[] pairs\n"
"\n"
"================================================================================\n"
"MSG: mongodb_store_msgs/StringPair\n"
"string first\n"
"string second\n"
;
  }

  static const char* value(const ::mongodb_store_msgs::StringPairList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pairs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StringPairList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mongodb_store_msgs::StringPairList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mongodb_store_msgs::StringPairList_<ContainerAllocator>& v)
  {
    s << indent << "pairs[]" << std::endl;
    for (size_t i = 0; i < v.pairs.size(); ++i)
    {
      s << indent << "  pairs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mongodb_store_msgs::StringPair_<ContainerAllocator> >::stream(s, indent + "    ", v.pairs[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONGODB_STORE_MSGS_MESSAGE_STRINGPAIRLIST_H