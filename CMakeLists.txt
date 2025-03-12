cmake_minimum_required(VERSION 3.8)
project(hector_perception_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)

set(msg_files
  msg/LookAtTarget.msg
  msg/LookAtObservationTarget.msg
  msg/CameraPatternInfo.msg
  msg/EnvironmentRegionRequest.msg
  msg/ObjectDetectRequest.msg
  msg/PerceptionData.msg
  msg/PerceptionDataArray.msg
  msg/BoundingBox2D.msg
  msg/ObjectDetection2D.msg
  msg/ObjectDetection2DArray.msg
)
set(action_files
  action/LookAtObservationPose.action
  action/LookAt.action
  action/DetectObject.action
  action/LocalizeBars.action
)
set(dependencies
  "std_msgs"
  "geometry_msgs"
  "sensor_msgs"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${action_files}
  DEPENDENCIES ${dependencies}
)

# ament_export_dependencies(rosidl_default_runtime)

ament_package()
