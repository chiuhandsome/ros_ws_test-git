// Generated by gencpp from file nav_2d_msgs/NavGridOfDoublesUpdate.msg
// DO NOT EDIT!


#ifndef NAV_2D_MSGS_MESSAGE_NAVGRIDOFDOUBLESUPDATE_H
#define NAV_2D_MSGS_MESSAGE_NAVGRIDOFDOUBLESUPDATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_2d_msgs/UIntBounds.h>

namespace nav_2d_msgs
{
template <class ContainerAllocator>
struct NavGridOfDoublesUpdate_
{
  typedef NavGridOfDoublesUpdate_<ContainerAllocator> Type;

  NavGridOfDoublesUpdate_()
    : stamp()
    , bounds()
    , data()  {
    }
  NavGridOfDoublesUpdate_(const ContainerAllocator& _alloc)
    : stamp()
    , bounds(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef  ::nav_2d_msgs::UIntBounds_<ContainerAllocator>  _bounds_type;
  _bounds_type bounds;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> const> ConstPtr;

}; // struct NavGridOfDoublesUpdate_

typedef ::nav_2d_msgs::NavGridOfDoublesUpdate_<std::allocator<void> > NavGridOfDoublesUpdate;

typedef boost::shared_ptr< ::nav_2d_msgs::NavGridOfDoublesUpdate > NavGridOfDoublesUpdatePtr;
typedef boost::shared_ptr< ::nav_2d_msgs::NavGridOfDoublesUpdate const> NavGridOfDoublesUpdateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator1> & lhs, const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.bounds == rhs.bounds &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator1> & lhs, const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace nav_2d_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7978c0302caa5ef135fe6600dcca19e";
  }

  static const char* value(const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7978c0302caa5efULL;
  static const uint64_t static_value2 = 0x135fe6600dcca19eULL;
};

template<class ContainerAllocator>
struct DataType< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_2d_msgs/NavGridOfDoublesUpdate";
  }

  static const char* value(const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"UIntBounds bounds\n"
"float64[] data\n"
"\n"
"================================================================================\n"
"MSG: nav_2d_msgs/UIntBounds\n"
"# Bounds are inclusive\n"
"uint32 min_x\n"
"uint32 min_y\n"
"uint32 max_x\n"
"uint32 max_y\n"
;
  }

  static const char* value(const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.bounds);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavGridOfDoublesUpdate_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nav_2d_msgs::NavGridOfDoublesUpdate_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "bounds: ";
    s << std::endl;
    Printer< ::nav_2d_msgs::UIntBounds_<ContainerAllocator> >::stream(s, indent + "  ", v.bounds);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAV_2D_MSGS_MESSAGE_NAVGRIDOFDOUBLESUPDATE_H
