# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_leapmotion: 4 messages, 1 services")

set(MSG_I_FLAGS "-Imy_leapmotion:/home/dzhi/catkin_ws/src/my_leapmotion/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_leapmotion_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapFrame.msg" NAME_WE)
add_custom_target(_my_leapmotion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_leapmotion" "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapFrame.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:my_leapmotion/LeapPointable:my_leapmotion/LeapGesture:my_leapmotion/LeapHand"
)

get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg" NAME_WE)
add_custom_target(_my_leapmotion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_leapmotion" "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg" "geometry_msgs/Vector3:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg" NAME_WE)
add_custom_target(_my_leapmotion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_leapmotion" "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg" "geometry_msgs/Vector3:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg" NAME_WE)
add_custom_target(_my_leapmotion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_leapmotion" "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg" "geometry_msgs/Vector3:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/srv/ResetCalibration.srv" NAME_WE)
add_custom_target(_my_leapmotion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_leapmotion" "/home/dzhi/catkin_ws/src/my_leapmotion/srv/ResetCalibration.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_leapmotion
)
_generate_msg_cpp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_leapmotion
)
_generate_msg_cpp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_leapmotion
)
_generate_msg_cpp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_leapmotion
)

### Generating Services
_generate_srv_cpp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/srv/ResetCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_leapmotion
)

### Generating Module File
_generate_module_cpp(my_leapmotion
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_leapmotion
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_leapmotion_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_leapmotion_generate_messages my_leapmotion_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapFrame.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_cpp _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_cpp _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_cpp _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_cpp _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/srv/ResetCalibration.srv" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_cpp _my_leapmotion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_leapmotion_gencpp)
add_dependencies(my_leapmotion_gencpp my_leapmotion_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_leapmotion_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_leapmotion
)
_generate_msg_lisp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_leapmotion
)
_generate_msg_lisp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_leapmotion
)
_generate_msg_lisp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_leapmotion
)

### Generating Services
_generate_srv_lisp(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/srv/ResetCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_leapmotion
)

### Generating Module File
_generate_module_lisp(my_leapmotion
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_leapmotion
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_leapmotion_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_leapmotion_generate_messages my_leapmotion_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapFrame.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_lisp _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_lisp _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_lisp _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_lisp _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/srv/ResetCalibration.srv" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_lisp _my_leapmotion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_leapmotion_genlisp)
add_dependencies(my_leapmotion_genlisp my_leapmotion_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_leapmotion_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg;/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion
)
_generate_msg_py(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion
)
_generate_msg_py(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion
)
_generate_msg_py(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion
)

### Generating Services
_generate_srv_py(my_leapmotion
  "/home/dzhi/catkin_ws/src/my_leapmotion/srv/ResetCalibration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion
)

### Generating Module File
_generate_module_py(my_leapmotion
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_leapmotion_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_leapmotion_generate_messages my_leapmotion_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapFrame.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_py _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapGesture.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_py _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapHand.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_py _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/msg/LeapPointable.msg" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_py _my_leapmotion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dzhi/catkin_ws/src/my_leapmotion/srv/ResetCalibration.srv" NAME_WE)
add_dependencies(my_leapmotion_generate_messages_py _my_leapmotion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_leapmotion_genpy)
add_dependencies(my_leapmotion_genpy my_leapmotion_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_leapmotion_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_leapmotion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_leapmotion
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(my_leapmotion_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_leapmotion_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_leapmotion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_leapmotion
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(my_leapmotion_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_leapmotion_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_leapmotion
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(my_leapmotion_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_leapmotion_generate_messages_py std_msgs_generate_messages_py)
endif()
