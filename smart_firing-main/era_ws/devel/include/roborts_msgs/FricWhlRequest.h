// Generated by gencpp from file roborts_msgs/FricWhlRequest.msg
// DO NOT EDIT!


#ifndef ROBORTS_MSGS_MESSAGE_FRICWHLREQUEST_H
#define ROBORTS_MSGS_MESSAGE_FRICWHLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roborts_msgs
{
template <class ContainerAllocator>
struct FricWhlRequest_
{
  typedef FricWhlRequest_<ContainerAllocator> Type;

  FricWhlRequest_()
    : open(false)  {
    }
  FricWhlRequest_(const ContainerAllocator& _alloc)
    : open(false)  {
  (void)_alloc;
    }



   typedef uint8_t _open_type;
  _open_type open;





  typedef boost::shared_ptr< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FricWhlRequest_

typedef ::roborts_msgs::FricWhlRequest_<std::allocator<void> > FricWhlRequest;

typedef boost::shared_ptr< ::roborts_msgs::FricWhlRequest > FricWhlRequestPtr;
typedef boost::shared_ptr< ::roborts_msgs::FricWhlRequest const> FricWhlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roborts_msgs::FricWhlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roborts_msgs::FricWhlRequest_<ContainerAllocator1> & lhs, const ::roborts_msgs::FricWhlRequest_<ContainerAllocator2> & rhs)
{
  return lhs.open == rhs.open;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roborts_msgs::FricWhlRequest_<ContainerAllocator1> & lhs, const ::roborts_msgs::FricWhlRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roborts_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b06b243ca7fb95b6d7d5a6ac2b1f7c85";
  }

  static const char* value(const ::roborts_msgs::FricWhlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb06b243ca7fb95b6ULL;
  static const uint64_t static_value2 = 0xd7d5a6ac2b1f7c85ULL;
};

template<class ContainerAllocator>
struct DataType< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roborts_msgs/FricWhlRequest";
  }

  static const char* value(const ::roborts_msgs::FricWhlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool open\n"
;
  }

  static const char* value(const ::roborts_msgs::FricWhlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.open);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FricWhlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roborts_msgs::FricWhlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roborts_msgs::FricWhlRequest_<ContainerAllocator>& v)
  {
    s << indent << "open: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.open);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBORTS_MSGS_MESSAGE_FRICWHLREQUEST_H
