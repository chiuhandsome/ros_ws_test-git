// Generated by gencpp from file reset_location/TrilaterationGoal.msg
// DO NOT EDIT!


#ifndef RESET_LOCATION_MESSAGE_TRILATERATIONGOAL_H
#define RESET_LOCATION_MESSAGE_TRILATERATIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace reset_location
{
template <class ContainerAllocator>
struct TrilaterationGoal_
{
  typedef TrilaterationGoal_<ContainerAllocator> Type;

  TrilaterationGoal_()
    : tag1_x(0.0)
    , tag1_y(0.0)
    , tag2_x(0.0)
    , tag2_y(0.0)
    , tag3_x(0.0)
    , tag3_y(0.0)  {
    }
  TrilaterationGoal_(const ContainerAllocator& _alloc)
    : tag1_x(0.0)
    , tag1_y(0.0)
    , tag2_x(0.0)
    , tag2_y(0.0)
    , tag3_x(0.0)
    , tag3_y(0.0)  {
  (void)_alloc;
    }



   typedef double _tag1_x_type;
  _tag1_x_type tag1_x;

   typedef double _tag1_y_type;
  _tag1_y_type tag1_y;

   typedef double _tag2_x_type;
  _tag2_x_type tag2_x;

   typedef double _tag2_y_type;
  _tag2_y_type tag2_y;

   typedef double _tag3_x_type;
  _tag3_x_type tag3_x;

   typedef double _tag3_y_type;
  _tag3_y_type tag3_y;





  typedef boost::shared_ptr< ::reset_location::TrilaterationGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::reset_location::TrilaterationGoal_<ContainerAllocator> const> ConstPtr;

}; // struct TrilaterationGoal_

typedef ::reset_location::TrilaterationGoal_<std::allocator<void> > TrilaterationGoal;

typedef boost::shared_ptr< ::reset_location::TrilaterationGoal > TrilaterationGoalPtr;
typedef boost::shared_ptr< ::reset_location::TrilaterationGoal const> TrilaterationGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::reset_location::TrilaterationGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::reset_location::TrilaterationGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::reset_location::TrilaterationGoal_<ContainerAllocator1> & lhs, const ::reset_location::TrilaterationGoal_<ContainerAllocator2> & rhs)
{
  return lhs.tag1_x == rhs.tag1_x &&
    lhs.tag1_y == rhs.tag1_y &&
    lhs.tag2_x == rhs.tag2_x &&
    lhs.tag2_y == rhs.tag2_y &&
    lhs.tag3_x == rhs.tag3_x &&
    lhs.tag3_y == rhs.tag3_y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::reset_location::TrilaterationGoal_<ContainerAllocator1> & lhs, const ::reset_location::TrilaterationGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace reset_location

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::reset_location::TrilaterationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::reset_location::TrilaterationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reset_location::TrilaterationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::reset_location::TrilaterationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reset_location::TrilaterationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::reset_location::TrilaterationGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::reset_location::TrilaterationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cdca09bf8b70b36bc95d7cee4cc216fd";
  }

  static const char* value(const ::reset_location::TrilaterationGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcdca09bf8b70b36bULL;
  static const uint64_t static_value2 = 0xc95d7cee4cc216fdULL;
};

template<class ContainerAllocator>
struct DataType< ::reset_location::TrilaterationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "reset_location/TrilaterationGoal";
  }

  static const char* value(const ::reset_location::TrilaterationGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::reset_location::TrilaterationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal\n"
"float64 tag1_x\n"
"float64 tag1_y\n"
"float64 tag2_x\n"
"float64 tag2_y\n"
"float64 tag3_x\n"
"float64 tag3_y\n"
;
  }

  static const char* value(const ::reset_location::TrilaterationGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::reset_location::TrilaterationGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tag1_x);
      stream.next(m.tag1_y);
      stream.next(m.tag2_x);
      stream.next(m.tag2_y);
      stream.next(m.tag3_x);
      stream.next(m.tag3_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrilaterationGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::reset_location::TrilaterationGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::reset_location::TrilaterationGoal_<ContainerAllocator>& v)
  {
    s << indent << "tag1_x: ";
    Printer<double>::stream(s, indent + "  ", v.tag1_x);
    s << indent << "tag1_y: ";
    Printer<double>::stream(s, indent + "  ", v.tag1_y);
    s << indent << "tag2_x: ";
    Printer<double>::stream(s, indent + "  ", v.tag2_x);
    s << indent << "tag2_y: ";
    Printer<double>::stream(s, indent + "  ", v.tag2_y);
    s << indent << "tag3_x: ";
    Printer<double>::stream(s, indent + "  ", v.tag3_x);
    s << indent << "tag3_y: ";
    Printer<double>::stream(s, indent + "  ", v.tag3_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RESET_LOCATION_MESSAGE_TRILATERATIONGOAL_H