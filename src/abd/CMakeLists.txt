cmake_minimum_required(VERSION 2.8.3)
project(abd)

## Add support for C++11, supported in ROS Kinetic and newer
# add_definitions(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  sensor_msgs
  std_msgs
)

add_message_files(
	FILES
	Data.msg
	Breakpoint.msg
	)

generate_messages(
	DEPENDENCIES
	sensor_msgs
	std_msgs
	)
catkin_package(
  INCLUDE_DIRS include
  LIBRARIES abd
  CATKIN_DEPENDS roscpp sensor_msgs std_msgs message_runtime
  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(abd_test src/abd_test.cpp)
target_link_libraries(abd_test ${catkin_LIBRARIES})
##add_dependencies(abd_test abd_generate_messages_cpp)
add_dependencies(abd_test ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
