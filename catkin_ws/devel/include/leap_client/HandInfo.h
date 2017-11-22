// Generated by gencpp from file leap_client/HandInfo.msg
// DO NOT EDIT!


#ifndef LEAP_CLIENT_MESSAGE_HANDINFO_H
#define LEAP_CLIENT_MESSAGE_HANDINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Pose.h>
#include <leap_client/FingerInfo.h>

namespace leap_client
{
template <class ContainerAllocator>
struct HandInfo_
{
  typedef HandInfo_<ContainerAllocator> Type;

  HandInfo_()
    : header()
    , id(0)
    , time_visible(0.0)
    , pose()
    , velocity()
    , sphere_radius(0.0)
    , sphere_center()
    , stabilized_pose()
    , fingers()  {
    }
  HandInfo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)
    , time_visible(0.0)
    , pose(_alloc)
    , velocity(_alloc)
    , sphere_radius(0.0)
    , sphere_center(_alloc)
    , stabilized_pose(_alloc)
    , fingers(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _id_type;
  _id_type id;

   typedef float _time_visible_type;
  _time_visible_type time_visible;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef float _sphere_radius_type;
  _sphere_radius_type sphere_radius;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _sphere_center_type;
  _sphere_center_type sphere_center;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _stabilized_pose_type;
  _stabilized_pose_type stabilized_pose;

   typedef std::vector< ::leap_client::FingerInfo_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::leap_client::FingerInfo_<ContainerAllocator> >::other >  _fingers_type;
  _fingers_type fingers;




  typedef boost::shared_ptr< ::leap_client::HandInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::leap_client::HandInfo_<ContainerAllocator> const> ConstPtr;

}; // struct HandInfo_

typedef ::leap_client::HandInfo_<std::allocator<void> > HandInfo;

typedef boost::shared_ptr< ::leap_client::HandInfo > HandInfoPtr;
typedef boost::shared_ptr< ::leap_client::HandInfo const> HandInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::leap_client::HandInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::leap_client::HandInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace leap_client

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'leap_client': ['/home/dzhi/catkin_ws/src/leap_client/msg', '/home/dzhi/catkin_ws/src/leap_client/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::leap_client::HandInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::leap_client::HandInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leap_client::HandInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leap_client::HandInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leap_client::HandInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leap_client::HandInfo_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::leap_client::HandInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937a409678ad32096fdeeb182c37c6da";
  }

  static const char* value(const ::leap_client::HandInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937a409678ad3209ULL;
  static const uint64_t static_value2 = 0x6fdeeb182c37c6daULL;
};

template<class ContainerAllocator>
struct DataType< ::leap_client::HandInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "leap_client/HandInfo";
  }

  static const char* value(const ::leap_client::HandInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::leap_client::HandInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
int32 id\n\
float32 time_visible\n\
geometry_msgs/Pose pose\n\
geometry_msgs/Vector3 velocity\n\
float32 sphere_radius\n\
geometry_msgs/Point sphere_center\n\
geometry_msgs/Pose stabilized_pose\n\
FingerInfo[] fingers\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: leap_client/FingerInfo\n\
std_msgs/Header header\n\
int32 hand_id\n\
int32 id\n\
float32 time_visible\n\
geometry_msgs/Point tip_position\n\
geometry_msgs/Vector3 tip_velocity\n\
geometry_msgs/Vector3 pointing_direction\n\
geometry_msgs/Point stabilized_tip_position\n\
";
  }

  static const char* value(const ::leap_client::HandInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::leap_client::HandInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.time_visible);
      stream.next(m.pose);
      stream.next(m.velocity);
      stream.next(m.sphere_radius);
      stream.next(m.sphere_center);
      stream.next(m.stabilized_pose);
      stream.next(m.fingers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HandInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::leap_client::HandInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::leap_client::HandInfo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "time_visible: ";
    Printer<float>::stream(s, indent + "  ", v.time_visible);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "sphere_radius: ";
    Printer<float>::stream(s, indent + "  ", v.sphere_radius);
    s << indent << "sphere_center: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.sphere_center);
    s << indent << "stabilized_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.stabilized_pose);
    s << indent << "fingers[]" << std::endl;
    for (size_t i = 0; i < v.fingers.size(); ++i)
    {
      s << indent << "  fingers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::leap_client::FingerInfo_<ContainerAllocator> >::stream(s, indent + "    ", v.fingers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEAP_CLIENT_MESSAGE_HANDINFO_H