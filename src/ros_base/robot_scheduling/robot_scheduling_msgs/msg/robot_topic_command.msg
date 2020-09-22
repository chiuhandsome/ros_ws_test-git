# set command type and its data 
string robot_name                        # the name of the robot (used in preconditions and topics)
#--------------------------
uint8 GET_STATUS=1
uint8 SET_COMMAND=2
uint8 cmd_type
#--------------------------	
uint16 STATUS=1	 
uint16 MODE_STANDBY=3	
uint16 MODE_MANUAL=4	 
uint16 MODE_REMOTE=5
uint16 MODE_MANU_ACT=40	
uint16 MODE_MANU_SET=41
uint16 MODE_MANU_NONE=400
uint16 MODE_MANU_PLANTOEXEC=410	
uint16 MODE_MANU_PLANTOEXEC_RUN=411
uint16 MODE_MANU_PLANTOEXEC_END=412	
uint16 MODE_MANU_MOVEINT=420	
uint16 MODE_MANU_MOVE=430	
uint16 MODE_MANU_TURN=440
uint16 MODE_MANU_WORKSHEET=450	
uint16 MODE_MANU_SAVE=460

uint16 MODE_REMOTE_ACT=50	
uint16 MODE_REMOTE_SET=51
uint16 MODE_REMOTE_NONE=500
uint16 MODE_REMOTEP_WORKSHEET=510
uint16 MODE_REMOTEP_WORKSHEET_CONT_TEST=520

#uint16 MODE_REMOTE_WORKSHEET_ACT=50
#uint16 MODE_REMOTE_WORKSHEET_NO=51
#uint16 ALARM_CONF=61	
uint16 ALARM_RESET=60	
uint16 ALARM_RECOVERY_ACT=70
uint16 ALARM_RECOVERY_SET=71
uint16 ALARM_RECOVERY_NONE=700
uint16 ALARM_RECOVERY_PLANTOEXEC=710	
uint16 SYSTEM_RESTART=80	
uint16 cmd_id  	
#--------------------------
string cmd_data
#--------------------------
