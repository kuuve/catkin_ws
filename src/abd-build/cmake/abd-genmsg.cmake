# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "abd: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iabd:/home/kuuve/catkin_ws/src/abd/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(abd_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Data.msg" NAME_WE)
add_custom_target(_abd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abd" "/home/kuuve/catkin_ws/src/abd/msg/Data.msg" ""
)

get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg" NAME_WE)
add_custom_target(_abd_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abd" "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abd
)
_generate_msg_cpp(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abd
)

### Generating Services

### Generating Module File
_generate_module_cpp(abd
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abd
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(abd_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(abd_generate_messages abd_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Data.msg" NAME_WE)
add_dependencies(abd_generate_messages_cpp _abd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg" NAME_WE)
add_dependencies(abd_generate_messages_cpp _abd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abd_gencpp)
add_dependencies(abd_gencpp abd_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abd_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abd
)
_generate_msg_eus(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abd
)

### Generating Services

### Generating Module File
_generate_module_eus(abd
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abd
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(abd_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(abd_generate_messages abd_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Data.msg" NAME_WE)
add_dependencies(abd_generate_messages_eus _abd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg" NAME_WE)
add_dependencies(abd_generate_messages_eus _abd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abd_geneus)
add_dependencies(abd_geneus abd_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abd_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abd
)
_generate_msg_lisp(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abd
)

### Generating Services

### Generating Module File
_generate_module_lisp(abd
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abd
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(abd_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(abd_generate_messages abd_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Data.msg" NAME_WE)
add_dependencies(abd_generate_messages_lisp _abd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg" NAME_WE)
add_dependencies(abd_generate_messages_lisp _abd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abd_genlisp)
add_dependencies(abd_genlisp abd_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abd_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abd
)
_generate_msg_nodejs(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abd
)

### Generating Services

### Generating Module File
_generate_module_nodejs(abd
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abd
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(abd_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(abd_generate_messages abd_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Data.msg" NAME_WE)
add_dependencies(abd_generate_messages_nodejs _abd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg" NAME_WE)
add_dependencies(abd_generate_messages_nodejs _abd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abd_gennodejs)
add_dependencies(abd_gennodejs abd_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abd_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abd
)
_generate_msg_py(abd
  "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abd
)

### Generating Services

### Generating Module File
_generate_module_py(abd
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abd
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(abd_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(abd_generate_messages abd_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Data.msg" NAME_WE)
add_dependencies(abd_generate_messages_py _abd_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kuuve/catkin_ws/src/abd/msg/Breakpoint.msg" NAME_WE)
add_dependencies(abd_generate_messages_py _abd_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abd_genpy)
add_dependencies(abd_genpy abd_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abd_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abd
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(abd_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(abd_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abd
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(abd_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(abd_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abd
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(abd_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(abd_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abd)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abd
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(abd_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(abd_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abd)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abd\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abd
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(abd_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(abd_generate_messages_py std_msgs_generate_messages_py)
endif()
