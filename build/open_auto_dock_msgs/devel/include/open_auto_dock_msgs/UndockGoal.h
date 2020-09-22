// Generated by gencpp from file open_auto_dock_msgs/UndockGoal.msg
// DO NOT EDIT!


#ifndef OPEN_AUTO_DOCK_MSGS_MESSAGE_UNDOCKGOAL_H
#define OPEN_AUTO_DOCK_MSGS_MESSAGE_UNDOCKGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace open_auto_dock_msgs
{
template <class ContainerAllocator>
struct UndockGoal_
{
  typedef UndockGoal_<ContainerAllocator> Type;

  UndockGoal_()
    : rotate_in_place(false)  {
    }
  UndockGoal_(const ContainerAllocator& _alloc)
    : rotate_in_place(false)  {
  (void)_alloc;
    }



   typedef uint8_t _rotate_in_place_type;
  _rotate_in_place_type rotate_in_place;





  typedef boost::shared_ptr< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> const> ConstPtr;

}; // struct UndockGoal_

typedef ::open_auto_dock_msgs::UndockGoal_<std::allocator<void> > UndockGoal;

typedef boost::shared_ptr< ::open_auto_dock_msgs::UndockGoal > UndockGoalPtr;
typedef boost::shared_ptr< ::open_auto_dock_msgs::UndockGoal const> UndockGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator1> & lhs, const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator2> & rhs)
{
  return lhs.rotate_in_place == rhs.rotate_in_place;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator1> & lhs, const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace open_auto_dock_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc4d50a0ddde1312dc506a49b185c018";
  }

  static const char* value(const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc4d50a0ddde1312ULL;
  static const uint64_t static_value2 = 0xdc506a49b185c018ULL;
};

template<class ContainerAllocator>
struct DataType< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "open_auto_dock_msgs/UndockGoal";
  }

  static const char* value(const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# This action will always pull backwards off the dock\n"
"# Optionally, we can also turn around 180 degrees\n"
"bool rotate_in_place\n"
;
  }

  static const char* value(const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.rotate_in_place);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UndockGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::open_auto_dock_msgs::UndockGoal_<ContainerAllocator>& v)
  {
    s << indent << "rotate_in_place: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rotate_in_place);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPEN_AUTO_DOCK_MSGS_MESSAGE_UNDOCKGOAL_H