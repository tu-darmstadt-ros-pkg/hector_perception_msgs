int32 id  # Unique id of object class
string label  # String that identifies the object class
float32 score # Confidence of the detection between 0 and 1

hector_perception_msgs/BoundingBox2D bounding_box
geometry_msgs/Polygon mask
