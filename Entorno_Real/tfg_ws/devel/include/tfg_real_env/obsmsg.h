// Generated by gencpp from file tfg_real_env/obsmsg.msg
// DO NOT EDIT!


#ifndef TFG_REAL_ENV_MESSAGE_OBSMSG_H
#define TFG_REAL_ENV_MESSAGE_OBSMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tfg_real_env
{
template <class ContainerAllocator>
struct obsmsg_
{
  typedef obsmsg_<ContainerAllocator> Type;

  obsmsg_()
    : ball_x(0.0)
    , ball_y(0.0)
    , ball_v_x(0.0)
    , ball_v_y(0.0)
    , agent_x(0.0)
    , agent_y(0.0)
    , agent_theta_x(0.0)
    , agent_theta_y(0.0)
    , agent_v_x(0.0)
    , agent_v_y(0.0)
    , agent_v_theta(0.0)
    , rival_x(0.0)
    , rival_y(0.0)
    , rival_v_x(0.0)
    , rival_v_y(0.0)
    , rival_v_theta(0.0)  {
    }
  obsmsg_(const ContainerAllocator& _alloc)
    : ball_x(0.0)
    , ball_y(0.0)
    , ball_v_x(0.0)
    , ball_v_y(0.0)
    , agent_x(0.0)
    , agent_y(0.0)
    , agent_theta_x(0.0)
    , agent_theta_y(0.0)
    , agent_v_x(0.0)
    , agent_v_y(0.0)
    , agent_v_theta(0.0)
    , rival_x(0.0)
    , rival_y(0.0)
    , rival_v_x(0.0)
    , rival_v_y(0.0)
    , rival_v_theta(0.0)  {
  (void)_alloc;
    }



   typedef float _ball_x_type;
  _ball_x_type ball_x;

   typedef float _ball_y_type;
  _ball_y_type ball_y;

   typedef float _ball_v_x_type;
  _ball_v_x_type ball_v_x;

   typedef float _ball_v_y_type;
  _ball_v_y_type ball_v_y;

   typedef float _agent_x_type;
  _agent_x_type agent_x;

   typedef float _agent_y_type;
  _agent_y_type agent_y;

   typedef float _agent_theta_x_type;
  _agent_theta_x_type agent_theta_x;

   typedef float _agent_theta_y_type;
  _agent_theta_y_type agent_theta_y;

   typedef float _agent_v_x_type;
  _agent_v_x_type agent_v_x;

   typedef float _agent_v_y_type;
  _agent_v_y_type agent_v_y;

   typedef float _agent_v_theta_type;
  _agent_v_theta_type agent_v_theta;

   typedef float _rival_x_type;
  _rival_x_type rival_x;

   typedef float _rival_y_type;
  _rival_y_type rival_y;

   typedef float _rival_v_x_type;
  _rival_v_x_type rival_v_x;

   typedef float _rival_v_y_type;
  _rival_v_y_type rival_v_y;

   typedef float _rival_v_theta_type;
  _rival_v_theta_type rival_v_theta;





  typedef boost::shared_ptr< ::tfg_real_env::obsmsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tfg_real_env::obsmsg_<ContainerAllocator> const> ConstPtr;

}; // struct obsmsg_

typedef ::tfg_real_env::obsmsg_<std::allocator<void> > obsmsg;

typedef boost::shared_ptr< ::tfg_real_env::obsmsg > obsmsgPtr;
typedef boost::shared_ptr< ::tfg_real_env::obsmsg const> obsmsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tfg_real_env::obsmsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tfg_real_env::obsmsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tfg_real_env::obsmsg_<ContainerAllocator1> & lhs, const ::tfg_real_env::obsmsg_<ContainerAllocator2> & rhs)
{
  return lhs.ball_x == rhs.ball_x &&
    lhs.ball_y == rhs.ball_y &&
    lhs.ball_v_x == rhs.ball_v_x &&
    lhs.ball_v_y == rhs.ball_v_y &&
    lhs.agent_x == rhs.agent_x &&
    lhs.agent_y == rhs.agent_y &&
    lhs.agent_theta_x == rhs.agent_theta_x &&
    lhs.agent_theta_y == rhs.agent_theta_y &&
    lhs.agent_v_x == rhs.agent_v_x &&
    lhs.agent_v_y == rhs.agent_v_y &&
    lhs.agent_v_theta == rhs.agent_v_theta &&
    lhs.rival_x == rhs.rival_x &&
    lhs.rival_y == rhs.rival_y &&
    lhs.rival_v_x == rhs.rival_v_x &&
    lhs.rival_v_y == rhs.rival_v_y &&
    lhs.rival_v_theta == rhs.rival_v_theta;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tfg_real_env::obsmsg_<ContainerAllocator1> & lhs, const ::tfg_real_env::obsmsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tfg_real_env

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tfg_real_env::obsmsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tfg_real_env::obsmsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tfg_real_env::obsmsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tfg_real_env::obsmsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tfg_real_env::obsmsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tfg_real_env::obsmsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tfg_real_env::obsmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "13d67f0b2acaa52762a3605ec7346fdb";
  }

  static const char* value(const ::tfg_real_env::obsmsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x13d67f0b2acaa527ULL;
  static const uint64_t static_value2 = 0x62a3605ec7346fdbULL;
};

template<class ContainerAllocator>
struct DataType< ::tfg_real_env::obsmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tfg_real_env/obsmsg";
  }

  static const char* value(const ::tfg_real_env::obsmsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tfg_real_env::obsmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 ball_x\n"
"float32 ball_y\n"
"float32 ball_v_x\n"
"float32 ball_v_y\n"
"float32 agent_x\n"
"float32 agent_y\n"
"float32 agent_theta_x\n"
"float32 agent_theta_y\n"
"float32 agent_v_x\n"
"float32 agent_v_y\n"
"float32 agent_v_theta\n"
"float32 rival_x\n"
"float32 rival_y\n"
"float32 rival_v_x\n"
"float32 rival_v_y\n"
"float32 rival_v_theta\n"
;
  }

  static const char* value(const ::tfg_real_env::obsmsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tfg_real_env::obsmsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ball_x);
      stream.next(m.ball_y);
      stream.next(m.ball_v_x);
      stream.next(m.ball_v_y);
      stream.next(m.agent_x);
      stream.next(m.agent_y);
      stream.next(m.agent_theta_x);
      stream.next(m.agent_theta_y);
      stream.next(m.agent_v_x);
      stream.next(m.agent_v_y);
      stream.next(m.agent_v_theta);
      stream.next(m.rival_x);
      stream.next(m.rival_y);
      stream.next(m.rival_v_x);
      stream.next(m.rival_v_y);
      stream.next(m.rival_v_theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct obsmsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tfg_real_env::obsmsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tfg_real_env::obsmsg_<ContainerAllocator>& v)
  {
    s << indent << "ball_x: ";
    Printer<float>::stream(s, indent + "  ", v.ball_x);
    s << indent << "ball_y: ";
    Printer<float>::stream(s, indent + "  ", v.ball_y);
    s << indent << "ball_v_x: ";
    Printer<float>::stream(s, indent + "  ", v.ball_v_x);
    s << indent << "ball_v_y: ";
    Printer<float>::stream(s, indent + "  ", v.ball_v_y);
    s << indent << "agent_x: ";
    Printer<float>::stream(s, indent + "  ", v.agent_x);
    s << indent << "agent_y: ";
    Printer<float>::stream(s, indent + "  ", v.agent_y);
    s << indent << "agent_theta_x: ";
    Printer<float>::stream(s, indent + "  ", v.agent_theta_x);
    s << indent << "agent_theta_y: ";
    Printer<float>::stream(s, indent + "  ", v.agent_theta_y);
    s << indent << "agent_v_x: ";
    Printer<float>::stream(s, indent + "  ", v.agent_v_x);
    s << indent << "agent_v_y: ";
    Printer<float>::stream(s, indent + "  ", v.agent_v_y);
    s << indent << "agent_v_theta: ";
    Printer<float>::stream(s, indent + "  ", v.agent_v_theta);
    s << indent << "rival_x: ";
    Printer<float>::stream(s, indent + "  ", v.rival_x);
    s << indent << "rival_y: ";
    Printer<float>::stream(s, indent + "  ", v.rival_y);
    s << indent << "rival_v_x: ";
    Printer<float>::stream(s, indent + "  ", v.rival_v_x);
    s << indent << "rival_v_y: ";
    Printer<float>::stream(s, indent + "  ", v.rival_v_y);
    s << indent << "rival_v_theta: ";
    Printer<float>::stream(s, indent + "  ", v.rival_v_theta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TFG_REAL_ENV_MESSAGE_OBSMSG_H