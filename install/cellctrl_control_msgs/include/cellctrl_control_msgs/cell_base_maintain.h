// Generated by gencpp from file cellctrl_control_msgs/cell_base_maintain.msg
// DO NOT EDIT!


#ifndef CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_BASE_MAINTAIN_H
#define CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_BASE_MAINTAIN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cellctrl_control_msgs
{
template <class ContainerAllocator>
struct cell_base_maintain_
{
  typedef cell_base_maintain_<ContainerAllocator> Type;

  cell_base_maintain_()
    : primary_id()
    , unique_code()
    , base_name()
    , base_desc_TC()
    , base_desc_SC()
    , base_desc_E()
    , update_time()  {
    }
  cell_base_maintain_(const ContainerAllocator& _alloc)
    : primary_id(_alloc)
    , unique_code(_alloc)
    , base_name(_alloc)
    , base_desc_TC(_alloc)
    , base_desc_SC(_alloc)
    , base_desc_E(_alloc)
    , update_time(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _primary_id_type;
  _primary_id_type primary_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _unique_code_type;
  _unique_code_type unique_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _base_name_type;
  _base_name_type base_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _base_desc_TC_type;
  _base_desc_TC_type base_desc_TC;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _base_desc_SC_type;
  _base_desc_SC_type base_desc_SC;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _base_desc_E_type;
  _base_desc_E_type base_desc_E;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _update_time_type;
  _update_time_type update_time;





  typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> const> ConstPtr;

}; // struct cell_base_maintain_

typedef ::cellctrl_control_msgs::cell_base_maintain_<std::allocator<void> > cell_base_maintain;

typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_base_maintain > cell_base_maintainPtr;
typedef boost::shared_ptr< ::cellctrl_control_msgs::cell_base_maintain const> cell_base_maintainConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator1> & lhs, const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator2> & rhs)
{
  return lhs.primary_id == rhs.primary_id &&
    lhs.unique_code == rhs.unique_code &&
    lhs.base_name == rhs.base_name &&
    lhs.base_desc_TC == rhs.base_desc_TC &&
    lhs.base_desc_SC == rhs.base_desc_SC &&
    lhs.base_desc_E == rhs.base_desc_E &&
    lhs.update_time == rhs.update_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator1> & lhs, const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cellctrl_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7cae712ba514c2339344eb5e99f552cb";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7cae712ba514c233ULL;
  static const uint64_t static_value2 = 0x9344eb5e99f552cbULL;
};

template<class ContainerAllocator>
struct DataType< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cellctrl_control_msgs/cell_base_maintain";
  }

  static const char* value(const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string primary_id			# must-have,UUID : primary_key(system_id)		\n"
"string unique_code 		        # must-have,UNIQUE INDEX	\n"
"string base_name		   \n"
"string base_desc_TC 		 \n"
"string base_desc_SC 		 \n"
"string base_desc_E 		 \n"
"string update_time			# must-have 	 \n"
;
  }

  static const char* value(const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.primary_id);
      stream.next(m.unique_code);
      stream.next(m.base_name);
      stream.next(m.base_desc_TC);
      stream.next(m.base_desc_SC);
      stream.next(m.base_desc_E);
      stream.next(m.update_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cell_base_maintain_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cellctrl_control_msgs::cell_base_maintain_<ContainerAllocator>& v)
  {
    s << indent << "primary_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.primary_id);
    s << indent << "unique_code: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.unique_code);
    s << indent << "base_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.base_name);
    s << indent << "base_desc_TC: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.base_desc_TC);
    s << indent << "base_desc_SC: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.base_desc_SC);
    s << indent << "base_desc_E: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.base_desc_E);
    s << indent << "update_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.update_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CELLCTRL_CONTROL_MSGS_MESSAGE_CELL_BASE_MAINTAIN_H
