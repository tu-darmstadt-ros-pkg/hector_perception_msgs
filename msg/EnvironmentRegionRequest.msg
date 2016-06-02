# Specify frame_id of point cloud data here
std_msgs/Header header

# Bounding box maximum
geometry_msgs/Point bounding_box_min

# Bounding box minimum
geometry_msgs/Point bounding_box_max

# Resolution. Set to 0 for using default
# Depends on what is called, will set resolution for octomap
# or voxel grid filter for point cloud data
float64 resolution

