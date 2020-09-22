#################################################################
## Station for Robots to Drive to
#################################################################

Header                 header       # header
int32                  id           # station ID
string                 name         # station name
geometry_msgs/Pose     pose         # station position
############### type of target align ############################
int32   align_type                  # the type of target align
string  align_id                    # the id of target align (position-align management db)

int32 ALIGNTYPE_NA = 0              # undefined type of target align
int32 ALIGNTYPE_DOCKER = 1          # docker type of target align
############### type of action ############################
int32     action_type               # the type of action
FLOAT64[] action_parms
