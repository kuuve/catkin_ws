cmake_minimum_required(VERSION 2.8.3)
project(laser_to_pointcloud2)

find_package(catkin REQUIRED COMPONENTS
  laser_geometry
  roscpp
  sensor_msgs
  tf
)

## Generate messages in the 'msg' folder
# add_message_files(
#   FILES
#   Message1.msg
#   Message2.msg
# )

generate_messages(
   DEPENDENCIES
   sensor_msgs
 )

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES laser_to_pointcloud2
  CATKIN_DEPENDS laser_geometry roscpp sensor_msgs tf
  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(laser_to_pointcloud2_node src/laser_to_pointcloud2.cpp)
add_dependencies(laser_to_pointcloud2_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(laser_to_pointcloud2_node
   ${catkin_LIBRARIES}
 )

