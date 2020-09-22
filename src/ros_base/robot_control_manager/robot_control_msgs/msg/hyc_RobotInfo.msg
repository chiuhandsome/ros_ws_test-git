#################################################################
## Presents dynamic parameters of a hyc'srobot
#################################################################

Header header                           # the creation time
string robot_name                       # the name of the robot (used in preconditions and topics)
geometry_msgs/PoseWithCovariance pose   # the robots current pose within the frame related to the msgs header
#RoutePrecondition sync                  # the current position in the last received plan (-1 means none)
int32 current_route_segment      	# the segment nr of the route executed by the given robot
############### shape type of robot ###################################
int32 shape                             # the shape of the robots (see enums)
float32[] shape_variables               # shape variables to define width height, ...

int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars
############### type of robot ###################################
int32   handler_type                    # the type of Handling module

int32 HANDLERTYPE_NA = 0                # undefined Handling module
int32 HANDLERTYPE_ROLLER = 1            # roller type of  Handling module
int32 HANDLERTYPE_ARM = 2            	# robot_arm of  Handling module
int32 HANDLERTYPE_PNP = 3            	# pick_place of  Handling module
############### type of target align ############################
#int32   align_type                      # the type of target align
#string  align_id                        # the id of target align (position-align management db)

#int32 ALIGNTYPE_NA = 0                  # undefined type of target align
#int32 ALIGNTYPE_DOCKER = 1              # docker type of target align
############### type of target align ############################
string  battery_id 			# the id of battery (battery management db included maintenance)
float32 battery_capacity		# unit: %
int32 battery_chargetime      
int32 battery_servicetime   		# using time caculation (uint: minute)
############### type of mode ####################################
int32   mode                            # the mode of operation

int32 MODE_NA = 0                   	# undefined mode
int32 MODE_IDLE = 1                 	# robot is idle
int32 MODE_SEGMENT_FOLLOWING = 2    	# robot is in mode segment following
int32 MODE_PICKUP = 3               	# robot is picking up goods
############### type of status ####################################
int32   status                          # the status of the robot
string  error_code 			# the error_code of robot (error_code management db included its history)

int32 STATUS_NONE = -1            	# robot is not_ready (stm not ready ...)
int32 STATUS_DRIVING = 0            	# robot is driving
int32 STATUS_STOPPED = 1            	# robot has stopped
int32 STATUS_DONE = 2               	# robot has finished its last job
int32 STATUS_BROKEN = 3             	# robot is broken and not ready for any task

############### order's information ################################
int32   good_id                         # the good id attached to the robot

int32 GOOD_EMPTY = -1               	# no goods attached
int32 GOOD_NA = -2                  	# undefined good
############### order's information ################################
int32   order_id                        # the order id scheduled to this robot (-1: none)
int32   order_status                    # the status of the assigned order

int32 ORDER_NONE = 0                	# no order assigned
int32 ORDER_APPROACH = 1            	# the robot approaches the first station of the order
int32 ORDER_PICKUP = 2              	# the robot picks up a good at the station
int32 ORDER_TRANSPORT = 3          	# the robot currently transports a good from one station to another
int32 ORDER_DROP = 4                	# the robot drops a good at the last station of its order, finishing the order
int32 ORDER_FINSIH = 5              	# the robot drops a good at the last station of its order, finishing the order




