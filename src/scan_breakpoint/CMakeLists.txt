cmake_minimum_required(VERSION 2.8.3)
project(scan_breakpoint)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  sensor_msgs
  std_msgs
)

add_message_files(
  FILES
  Data.msg
)

generate_messages(
  DEPENDENCIES
  sensor_msgs
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES scan_breakpoint
  CATKIN_DEPENDS roscpp sensor_msgs std_msgs message_runtime
  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(scan_breakpoint src/scan_breakpoint.cpp)
target_link_libraries(scan_breakpoint ${catkin_LIBRARIES})
add_dependencies(scan_breakpoint scan_breakpoint+generate_messages_cpp)
