Header header                            # the creation time
string robot_name                        # the name of the robot (used in preconditions and topics)
geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header
int32 shape                              # the shape of the robots (see enums)
float32[] shape_variables                # shape variables to define width height, ...
#RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
int32   mode                             # the mode of operation
int32   status                           # the status of the robot
#int32   good_id                          # the good id attached to the robot
#int32   order_id                         # the order id scheduled to this robot (-1: none)
#int32   order_status                     # the status of the assigned order


#Header header                            # the creation time
#string robot_name                        # the name of the robot (used in preconditions and topics)
#geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header
#int32 shape                              # the shape of the robots (see enums)
#float32[] shape_variables                # shape variables to define width height, ...
#RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
#int32   mode                             # the mode of operation
#int32   status                           # the status of the robot
#int32   good_id                          # the good id attached to the robot
#int32   order_id                         # the order id scheduled to this robot (-1: none)
#int32   order_status                     # the status of the assigned order


