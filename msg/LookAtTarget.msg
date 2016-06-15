# This message type allows specifying the look at behavior for
# camera heads or other sensors. The following applies:
# * If the pattern string is non-empty, it is used to activate a pattern
# * Otherwise, the target_point is used

# The target point to look at given in an arbitrary frame.
geometry_msgs/PointStamped target_point

# If set to true, only moves to target point once
# Otherwise, it is tracked continuously. (NOT USED YET)
bool no_continuous_tracking

# If this is non-empty, following the selected pattern is activated.
string pattern
