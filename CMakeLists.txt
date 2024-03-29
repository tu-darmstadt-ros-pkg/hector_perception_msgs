cmake_minimum_required(VERSION 3.0.2)
project(hector_perception_msgs)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  actionlib_msgs
  geometry_msgs
  sensor_msgs
  std_msgs
  message_generation
)

add_message_files(
  DIRECTORY msg
  FILES
  LookAtTarget.msg
  LookAtObservationTarget.msg
  CameraPatternInfo.msg
  EnvironmentRegionRequest.msg
  ObjectDetectRequest.msg
  PerceptionData.msg
  PerceptionDataArray.msg
  BoundingBox2D.msg
  ObjectDetection2D.msg
  ObjectDetection2DArray.msg)

# add_service_files(
#   DIRECTORY srv
#   FILES
#   ProjectPixelTo3DRay.srv
#   GetPinholeProjection.srv
# )
  
add_action_files(
   DIRECTORY action
   FILES
   LookAtObservationPose.action
   LookAt.action
   DetectObject.action
   LocalizeBars.action
)

generate_messages(DEPENDENCIES sensor_msgs geometry_msgs actionlib_msgs std_msgs)

include_directories(${catkin_INCLUDE_DIRS})

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES hector_perception_msgs
  CATKIN_DEPENDS actionlib_msgs geometry_msgs sensor_msgs std_msgs message_runtime
#  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
#include_directories(
#  ${catkin_INCLUDE_DIRS}
#)

