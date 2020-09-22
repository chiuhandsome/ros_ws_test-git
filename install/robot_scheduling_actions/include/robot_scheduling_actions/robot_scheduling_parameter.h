#ifndef robot_scheduling_parameter_H
#define robot_scheduling_parameter_H
#include <ros/ros.h>
//-----------------------------------------------------------------------------
struct ac_check_params
{
	int out_of_times ;	double timeout ; //int current_time ;
};
struct pid_ctrl_params
{
	double target, tolerance , min_bound , max_bound ;
	double d_KP , d_KI, d_KD ;
    bool b_compensation ;
};
struct ac_locomotor_pos2d
{
	double pos_x, pos_y, theta ;
	bool rotate_flag ;
};
struct ac_action_function
{
	std::string function_id , function_name ;
	int function_level ;
	std::string function_ac_name ;
	std::string function_desc_eng , function_desc_tc , function_desc_sc ;
};
struct ac_alarm_code
{
	std::string alarm_id , alarm_name ;
	int alarm_level ;
	std::string alarm_desc_eng , alarm_desc_tc , alarm_desc_sc ;
};
struct ac_operate_code
{
	std::string operate_id , operate_name ;
	int operate_level ;
	std::string operate_desc_eng , operate_desc_tc , operate_desc_sc ;
};
struct ac_action_worksheet
{
	std::string worksheet_no , worksheet_item_name ;
	int item_ser_no ; 
	std::string target_pose_id , action_function_id, action_function_params ;
};
struct function_cmd_data
{
	std::string cmd_id ,cmd_params , cmd_acname ;
};
//-----------------------------------------------------------------------------
/*enum pose_id_type{
	pose_id_none = 0  , 
	//------------
	pose_id_park, pose_id_pre_dock, pose_id_post_dock
} ;*/
//-----------------------------------------------------------------------------
enum runstatus_type{
	runstatus_none = 0  , runstatus_unknow , runstatus_awarded , runstatus_standby , 
	runstatus_manual, runstatus_remote , runstatus_alarm ,  runstatus_pause , runstatus_end,
	//----------------
	runstatus_basectrl ,runstatus_change
} ;
//-----------------------------------------------------------------------------
enum manualstatus_type{
	manualstatus_none = 0  , manualstatus_plantoexec , manualstatus_moveint , manualstatus_move , 
	manualstatus_turn, manualstatus_worksheet ,
	manualstatus_dataproc
} ;
//-----------------------------------------------------------------------------
enum remotestatus_type{
	remotestatus_none = 0  , remotestatus_worksheet //, remotestatus_worksheet_c_test 
} ;
//-----------------------------------------------------------------------------
enum recoverystatus_type{
	recoverystatus_none = 0  , recoverystatus_plantoexec 
} ;
//-----------------------------------------------------------------------------
enum base_status_type{
	base_status_none = 0  , base_status_unknow , base_status_standby ,base_status_ready , 
	base_status_alarm 
} ;
//-----------------------------------------------------------------------------
//enum status_code_type{
//	status_code_none = 0  , status_code_pass , status_code_alarm , status_code_status
//} ;
//******************** 20200820 add ******************************************
//-----------------------------------------------------------------------------
struct battery_s_data
{
	bool status ;
	double capacity,voltage ;
};
//-----------------------------------------------------------------------------
enum runmode_type{
	runmode_none = 0  , runmode_standby , runmode_ready , runmode_running , 
	runmode_alarm , runmode_pause
} ;
//****************************************************************************
//----------------------------------------------------------------------------
#define RAD(a) ((a)/180.0*M_PI)
#define DEG(a) ((a)*180.0/M_PI)
//-----------------------------------------------------------------------------
class robot_scheduling_parameter    
{
	private:
	   	ros::NodeHandle nh_ ;
		void Load_CntParameter();
		//robot_scheduling_service* scheduling_service_ ;
		//----------------------------------
		std::string cmd_srv_service_for_upper_name ;
		std::string cmd_clt_service_to_upper_name ;
		std::string cmd_srv_service_for_lower_name ;
		std::string cmd_clt_service_to_lower_name ;
		//----------------------------------
		void ac_target_pose2d_init_set(ros::NodeHandle pnh) ;		
		void ac_check_params_init_set(ros::NodeHandle pnh) ;
		void ac_fixed_pose2d_init_set(ros::NodeHandle pnh) ;
		void ac_dock_rotate_init_set(ros::NodeHandle pnh) ;

		void ac_setlocation_params_init_set(ros::NodeHandle pnh) ;
		//void ac_dock_rotate_init_set(ros::NodeHandle pnh) ;
		void ac_pid_ctrl_init_set(ros::NodeHandle pnh) ;
		//std::string move_to_ac_name ;
		double ac_cancel_time ;	
		//std::string move_to_rcvr_ac_name ;
		double ac_clearmap_time ;	
		//---------------------------------   
		//runstatus_type system_status_type ; 
		//int system_alarm_code ;  
		
		//------------
		bool b_PoseRecognize ;	
		std::map<std::string, std::shared_ptr<ac_check_params>> ac_check_params_map_;
		std::map<std::string, std::shared_ptr<ac_locomotor_pos2d>> ac_locomotor_pos2d_map_;
		std::map<std::string, std::shared_ptr<ac_action_function>> ac_action_function_map_;
		std::map<std::string, std::shared_ptr<ac_alarm_code>> ac_alarm_code_map_;
		std::map<std::string, std::shared_ptr<ac_operate_code>> ac_operate_code_map_;
		std::map<std::string, bool> ac_dock_rotate_map_;
		std::map<std::string, std::shared_ptr<pid_ctrl_params>> ac_pid_ctrl_params_map_;
		std::map<int, std::shared_ptr<ac_action_worksheet>> ac_action_worksheet_map_;	
		std::vector<int> ac_action_ws_items_v;		
		std::vector<std::shared_ptr<ac_locomotor_pos2d>> ac_target_pose2d_v; 
		
		std::map<std::string,std::string> sch_locomotor_pos2d_map_;	
		std::map<std::string,std::string> sch_action_function_map_;	
		//--------------
		int power_charge_timeout ;		//secs
		int acquire_battery_period ;	//secs
		int charge_voltage_target ;		//%
		//-- reset location parameters ---
		double target_scan_pos1_x , target_scan_pos1_y , target_scan_pos2_x , target_scan_pos2_y , 
		       target_scan_pos3_x , target_scan_pos3_y ; 
		//-- declare variable for database ----
		std::string act_check_params_name_db ;
		ac_check_params* act_check_params_db ;	
		std::string act_pose_2d_name_db ;		
		ac_locomotor_pos2d* act_pose_2d_db ;
		std::string act_action_function_name_db ;
		ac_action_function* act_action_function_db ;
		std::string act_alarm_code_name_db ;
		ac_alarm_code* ac_alarm_code_db ;
		std::string act_operate_code_name_db ;
		ac_operate_code* ac_operate_code_db ;
		std::string act_action_worksheet_no_name_db ;

		std::string act_pid_ctrl_params_name_db ;
		pid_ctrl_params* ac_pid_ctrl_params_db ;
		//------------------------------------
		bool bWorkSheetRun_Start ;
		int worksheet_current_index ;
		bool b_interrupt_move ;
		//*********************************************************************
		//--- robot_interface_params ---------
		std::string if_target_pose_id ;
		std::shared_ptr<ac_locomotor_pos2d> if_target_pose_pos2d ;

		//status_code_type if_status_code_type;
		//std::string if_status_code ;

		bool b_simulation ;
		//**************** 2020.08.18 *****************************************
		runstatus_type system_status_type ; 
		runstatus_type pre_system_status_type ; 
		runstatus_type reg_system_status_type ; 
		runstatus_type reg_pre_system_status_type ; 

		manualstatus_type manual_status_type ; 
		manualstatus_type pre_manual_status_type ; 

		remotestatus_type remote_status_type ;
		remotestatus_type pre_remote_status_type ;

		bool bRemoteRun_Start ;
		bool bRemoteRun_cont_test ;

		recoverystatus_type recovery_status_type ;

		bool b_base_ctrl_connected ,b_base_ctrl_ready;
		std::string system_alarm_code ;
		bool b_system_alarm ;

		std::shared_ptr<battery_s_data> battery_data; 
		base_status_type base_status_ ;

		std::shared_ptr<function_cmd_data> function_cmd_ptr;

		double turn_target_abs_angle ;
		double turn_action_rel_angle ;
		std::string turn_action_name ;

		int upper_robot_info_rate , upper_robot_state_rate;
		int lower_robot_info_rate , lower_robot_state_rate;

		double robot_wait_time ;
		bool b_ws_post_turn_flag ;
		bool b_ws_abs_turn_set_pass ;

		runmode_type manual_runmode_type ;
		runmode_type manualparent_runmode_type ;
		bool bManualRun_Start ;

		bool bAlarm_Reset ;
		bool bAlarm_Recovery ;
		bool bSystem_ReStart ;

		runmode_type remote_runmode_type ;
		bool b_plantoexec_run ;
	public:
	   	robot_scheduling_parameter(ros::NodeHandle& nh);
	   	~robot_scheduling_parameter();
		//bool bfirst_run ;    		

	   	void set_system_status(runstatus_type status_type){system_status_type = status_type ;}
		runstatus_type get_system_status(){return system_status_type ;}
		void set_pre_system_status(runstatus_type status_type){pre_system_status_type = status_type ;}
		runstatus_type get_pre_system_status(){return pre_system_status_type ;}
		void save_system_status()
			{
				reg_system_status_type = system_status_type ;
			 	reg_pre_system_status_type = pre_system_status_type ;
			}
		void restore_system_status()
			{
				system_status_type = reg_system_status_type ;
			 	pre_system_status_type = reg_pre_system_status_type ;
			}
		

		void set_manual_status(manualstatus_type status_type){manual_status_type = status_type ;}
		manualstatus_type get_manual_status(){return manual_status_type ;}
		void set_pre_manual_status(manualstatus_type status_type){pre_manual_status_type = status_type ;}
		manualstatus_type get_pre_manual_status(){return pre_manual_status_type ;}

		void set_remote_status(remotestatus_type status_type){remote_status_type = status_type ;}
		remotestatus_type get_remote_status(){return remote_status_type ;}

		void set_RemoteRun_Start(bool b_Start){bRemoteRun_Start = b_Start ;} ;
		bool get_RemoteRun_Start(){ return bRemoteRun_Start;};

		void set_RemoteRun_cont_test(bool b_Start){bRemoteRun_cont_test = b_Start ;} ;
		bool get_RemoteRun_cont_test(){ return bRemoteRun_cont_test;};

		void set_recovery_status(recoverystatus_type status_type){recovery_status_type = status_type ;}
		recoverystatus_type get_recovery_status(){return recovery_status_type ;}

	   	void set_system_alarm_code(std::string alarm_code) {system_alarm_code = alarm_code ;  }
		std::string get_system_alarm_code() {return system_alarm_code ;  }
		void set_system_alarm(bool bAlarm) {b_system_alarm = bAlarm ;  }
		bool get_system_alarm() {return b_system_alarm ;  }
		//-----------
		void set_pose_recognize(bool PoseRecognize) {b_PoseRecognize = PoseRecognize ;}
		bool get_pose_recognize() {return b_PoseRecognize ;}
		//-----------

		void set_ac_cancel_time(double cancel_time) {ac_cancel_time = cancel_time ;}
		double get_ac_cancel_time() {return ac_cancel_time ;}

		void set_ac_clearmap_time(double time) {ac_clearmap_time = time ;}
		double get_ac_clearmap_time() {return ac_clearmap_time ;}
		//-----------
		std::shared_ptr<ac_check_params> get_ac_check_params(std::string ac_name);
		void set_ac_check_params(std::string ac_name,std::shared_ptr<ac_check_params> _param);
		void delete_ac_check_params(std::string ac_name);

		std::shared_ptr<ac_locomotor_pos2d> get_ac_locomotor_params(std::string ac_name);
		void set_ac_locomotor_params(std::string ac_name,std::shared_ptr<ac_locomotor_pos2d> _param);
		void delete_ac_locomotor_params(std::string ac_name);

		std::string get_sch_locomotor_pos2d(std::string pose_id); 
		void set_sch_locomotor_pos2d(std::string pose_id,std::string pose_name);
		void delete_sch_locomotor_pos2d(std::string pose_id);

		std::shared_ptr<ac_action_function> get_ac_action_function(std::string ac_name);
		void set_ac_action_function(std::string ac_name,std::shared_ptr<ac_action_function> _param);
		void delete_ac_action_function(std::string ac_name);

		std::string get_sch_action_function(std::string function_id); 
		void set_sch_action_function(std::string function_id,std::string function_name);
		void delete_sch_action_function(std::string function_id);

		std::shared_ptr<ac_alarm_code> get_ac_alarm_code(std::string ac_name);
		void set_ac_alarm_code(std::string ac_name,std::shared_ptr<ac_alarm_code> _param);
		void delete_ac_alarm_code(std::string ac_name);

		std::shared_ptr<ac_operate_code> get_ac_operate_code(std::string ac_name);
		void set_ac_operate_code(std::string ac_name,std::shared_ptr<ac_operate_code> _param);
		void delete_ac_operate_code(std::string ac_name);

		std::shared_ptr<ac_action_worksheet> get_ac_action_work_ser_no(int ser_no);
		void set_ac_action_worksheet(int ser_no,std::shared_ptr<ac_action_worksheet> _param);
		void delete_ac_action_worksheet(int item_no);
		int get_ac_action_worksheet_size();
		void set_WorkSheetRun_Start(bool b_Start){bWorkSheetRun_Start = b_Start ;} ;
		bool get_WorkSheetRun_Start(){ return bWorkSheetRun_Start;};
		void set_worksheet_current_index(int index){ worksheet_current_index = index ;}	
		int get_worksheet_current_index(){ return worksheet_current_index ;}			

		bool get_ac_dock_rotate_params(std::string dock_id);
		void set_ac_dock_rotate_params(std::string dock_id,bool _param);
		void delete_ac_dock_rotate_params(std::string dock_id);

		void set_ac_target_pose2d_v(std::vector<std::shared_ptr<ac_locomotor_pos2d>> pose2d_v);
		//-----------
		std::shared_ptr<pid_ctrl_params> get_ac_pid_ctrl_params(std::string ac_name);
		void set_ac_pid_ctrl_params(std::string ac_name,std::shared_ptr<pid_ctrl_params> _param);
		void delete_ac_pid_ctrl_params(std::string ac_name);
		//-------------------------
		void set_power_charge_timeout(double charge_timeout){ power_charge_timeout = charge_timeout ;}
		int get_power_charge_timeout(){ return power_charge_timeout ;}

		void set_acquire_battery_period(double battery_period){ acquire_battery_period = battery_period ;}
		int get_acquire_battery_period(){ return acquire_battery_period ;}

		void set_charge_voltage_target(double voltage_target){ charge_voltage_target = voltage_target ;}
		int get_charge_voltage_target(){ return charge_voltage_target ;}

		void set_ac_setlocation_params_init_set(double _pos1_x , double _pos1_y , double _pos2_x , double _pos2_y , 
		       									double _pos3_x , double _pos3_y)
			{
				target_scan_pos1_x = _pos1_x  ; target_scan_pos1_y = _pos1_y  ; 
				target_scan_pos2_x = _pos2_x  ; target_scan_pos2_y = _pos2_y  ; 
		        target_scan_pos3_x = _pos3_x  ; target_scan_pos3_y = _pos3_y  ; 
			}
		void get_ac_setlocation_params_init_set(double &_pos1_x , double &_pos1_y , double &_pos2_x , double &_pos2_y , 
		       									double &_pos3_x , double &_pos3_y)
			{
				_pos1_x = target_scan_pos1_x   ;  _pos1_y = target_scan_pos1_y ; 
				_pos2_x = target_scan_pos2_x   ;  _pos2_y = target_scan_pos2_y ; 
		        _pos3_x = target_scan_pos3_x   ;  _pos3_y = target_scan_pos3_y ; 
			}

		void get_system_service_name(std::string &_service_for_upper_name ,std::string &_service_to_upper_name ,
									 std::string &_service_for_lower_name ,std::string &_service_to_lower_name )
			{
				_service_for_upper_name = cmd_srv_service_for_upper_name ;
				_service_to_upper_name = cmd_clt_service_to_upper_name ;
				_service_for_lower_name = cmd_srv_service_for_lower_name ;
				_service_to_lower_name = cmd_clt_service_to_lower_name ;
			}
		//----------------------------
		void set_ac_check_params_db(std::string ac_name ,std::shared_ptr<ac_check_params> act_db)
			{
				act_check_params_name_db = ac_name ;
				act_check_params_db->out_of_times = act_db->out_of_times ;
				act_check_params_db->timeout = act_db->timeout ;
			}

		void set_ac_pose_2d_db(std::string ac_name ,std::shared_ptr<ac_locomotor_pos2d> act_db)
			{
				act_pose_2d_name_db = ac_name ;
				act_pose_2d_db->pos_x = act_db->pos_x ;
				act_pose_2d_db->pos_y = act_db->pos_y ;
				act_pose_2d_db->rotate_flag = act_db->rotate_flag ;
				act_pose_2d_db->theta = act_db->theta ;
			}
		void set_act_action_function_db(std::string ac_name ,std::shared_ptr<ac_action_function> act_db)
			{
				act_action_function_name_db = ac_name ;
				act_action_function_db->function_id = act_db->function_id ;
				act_action_function_db->function_level = act_db->function_level ;
				act_action_function_db->function_ac_name = act_db->function_ac_name ;
				act_action_function_db->function_name = act_db->function_name ;
				act_action_function_db->function_desc_eng = act_db->function_desc_eng ;
				act_action_function_db->function_desc_tc = act_db->function_desc_tc ;
				act_action_function_db->function_desc_sc = act_db->function_desc_sc ;
			}
		void set_act_alarm_code_db(std::string ac_name ,std::shared_ptr<ac_alarm_code> act_db)
			{
				act_alarm_code_name_db = ac_name ;
				ac_alarm_code_db->alarm_id = act_db->alarm_id ;
				ac_alarm_code_db->alarm_level = act_db->alarm_level ;
				ac_alarm_code_db->alarm_name = act_db->alarm_name ;
				ac_alarm_code_db->alarm_desc_eng = act_db->alarm_desc_eng ;
				ac_alarm_code_db->alarm_desc_tc = act_db->alarm_desc_tc ;
				ac_alarm_code_db->alarm_desc_sc = act_db->alarm_desc_sc ;
			}
		void set_act_operate_code_db(std::string ac_name ,std::shared_ptr<ac_operate_code> act_db)
			{
				act_operate_code_name_db = ac_name ;
				ac_operate_code_db->operate_id = act_db->operate_id ;
				ac_operate_code_db->operate_level = act_db->operate_level ;
				ac_operate_code_db->operate_name = act_db->operate_name ;
				ac_operate_code_db->operate_desc_eng = act_db->operate_desc_eng ;
				ac_operate_code_db->operate_desc_tc = act_db->operate_desc_tc ;
				ac_operate_code_db->operate_desc_sc = act_db->operate_desc_sc ;
			}
		void set_ac_pid_ctrl_params_db(std::string ac_name ,std::shared_ptr<pid_ctrl_params> act_db)
			{
				act_pid_ctrl_params_name_db = ac_name ;
				ac_pid_ctrl_params_db->target = act_db->target ;
				ac_pid_ctrl_params_db->tolerance = act_db->tolerance ;
				ac_pid_ctrl_params_db->min_bound = act_db->min_bound ;
				ac_pid_ctrl_params_db->max_bound = act_db->max_bound ;
				ac_pid_ctrl_params_db->d_KP = act_db->d_KP ;
				ac_pid_ctrl_params_db->d_KI = act_db->d_KI ;
				ac_pid_ctrl_params_db->d_KD = act_db->d_KD ;
				ac_pid_ctrl_params_db->b_compensation = act_db->b_compensation ;
			}
			
		//----------------------------
		ac_check_params* get_ac_check_params_db(std::string &ac_name)
			{
				ac_name = act_check_params_name_db;
				return act_check_params_db ;
			}

		ac_locomotor_pos2d* get_ac_pose_2d_db(std::string &ac_name)
			{
				ac_name = act_pose_2d_name_db ;
				return act_pose_2d_db ;
			}
		ac_action_function* get_act_action_function_db(std::string &ac_name)
			{
				ac_name = act_action_function_name_db ;
				return act_action_function_db ;
			}

		ac_alarm_code* get_act_alarm_code_db(std::string &ac_name)
			{
				ac_name = act_alarm_code_name_db ;
				return ac_alarm_code_db ;
			}

		ac_operate_code* get_act_operate_code_db(std::string &ac_name)
			{
				ac_name = act_operate_code_name_db ;
				return ac_operate_code_db ;
			}

		pid_ctrl_params* get_ac_pid_ctrl_params_db(std::string &ac_name)
			{
				ac_name = act_pid_ctrl_params_name_db ;
				return ac_pid_ctrl_params_db ;
			}

		void clear_ac_action_worksheet_map()
			{				
				std::map<int, std::shared_ptr<ac_action_worksheet>>::iterator map_it = ac_action_worksheet_map_.begin();
				while (map_it != ac_action_worksheet_map_.end()) {
					map_it = ac_action_worksheet_map_.erase(map_it);
				}
			}
		void set_ac_action_worksheet_name_db(std::string worksheet_no_name)
			{
				act_action_worksheet_no_name_db = worksheet_no_name ;
			}
		std::string get_ac_action_worksheet_name_db()
			{
				return act_action_worksheet_no_name_db ;
			}

		std::vector<int> get_ac_action_ws_items_v()
			{		
				ROS_INFO("get_ac_action_ws_items_v");
				ac_action_ws_items_v.clear();		
				std::map<int, std::shared_ptr<ac_action_worksheet>>::iterator map_it = ac_action_worksheet_map_.begin();
				while (map_it != ac_action_worksheet_map_.end()) {
					ac_action_ws_items_v.push_back(map_it->first);
					map_it++;
				}
				ROS_INFO("get_ac_action_ws_items_v end");
				return ac_action_ws_items_v ;
			}
			
		//--------------------------		
		void set_interrupt_info(std::string _info)
			{
				//interrupt_info = _info;
				if(_info == "MoveTarget")
					b_interrupt_move = true ;
				//else if(_info == "GetAlarmCodeAll")
				//	b_GetAlarmCodeAll = true ;	
			} ;
		bool get_interrupt_move(){return b_interrupt_move ;} 
		void reset_interrupt_move(){b_interrupt_move = false ;}
		//*********************************************************************
		//--- robot_interface_params ---------
		bool set_if_target_pose_id(std::string _target_pose_id) ;
		std::string get_if_target_pose_id() {return if_target_pose_id ;};
		std::shared_ptr<ac_locomotor_pos2d> get_if_target_pose_pos2d(){return if_target_pose_pos2d ;} ;

		//void set_if_status_code_type(status_code_type _type,std::string _code ="") ;
		//void get_if_status_code_type(status_code_type &_type,std::string &_code) ;

		bool get_b_simulation(){return b_simulation ;} ;
		//**************** 2020.08.18 *****************************************
		void set_base_ctrl_connected(bool b_conn){b_base_ctrl_connected = b_conn ;} ;
		bool get_base_ctrl_connected(){return b_base_ctrl_connected ;} ;
		void set_base_ctrl_ready(bool b_conn)
			{	
				b_base_ctrl_ready = b_conn ;
				if(b_conn)
					base_status_ = base_status_ready; 
				else
					base_status_ = base_status_standby; 	
			}
		bool get_base_ctrl_ready(){return b_base_ctrl_ready ;} ;


		void set_battery_data(std::shared_ptr<battery_s_data> _data) 
			{
				battery_data->status = _data->status;
				battery_data->capacity = _data->capacity;
				battery_data->voltage = _data->voltage;
			}
		std::shared_ptr<battery_s_data> get_battery_data(){return battery_data;} ;

		bool set_base_status_type(int _type)
			{ 
				base_status_ = (base_status_type)_type ;
				b_base_ctrl_connected = (base_status_ >= base_status_standby) && (base_status_ != base_status_alarm);
				b_base_ctrl_ready = (base_status_ == base_status_ready) && (base_status_ != base_status_alarm);
			} 
		
		base_status_type get_base_status_type(){return base_status_ ;} ;

		void set_function_cmd_ptr(std::shared_ptr<function_cmd_data> cmd_ptr)
		{
			if(function_cmd_ptr == NULL)
            	function_cmd_ptr = std::make_shared<function_cmd_data>();    
			function_cmd_ptr->cmd_id = cmd_ptr->cmd_id ; 
			function_cmd_ptr->cmd_params = cmd_ptr->cmd_params ;  
			function_cmd_ptr->cmd_acname = cmd_ptr->cmd_acname ; 
		}

		std::shared_ptr<function_cmd_data> get_function_cmd_ptr(){return function_cmd_ptr;}

		void set_turn_target_abs_angle(double _angle){turn_target_abs_angle = _angle;}		
		double get_turn_target_abs_angle(){return turn_target_abs_angle;}	

		void set_turn_action_rel_angle(double _angle) {	turn_action_rel_angle = _angle; }	
		double get_turn_action_rel_angle(){return turn_action_rel_angle;}	

		double compensate_rel_angle(double _angle)
			{
				double d_Result = _angle ;
				if(fabs(_angle)>180.0){
					if(_angle > 0)
						d_Result = _angle - 360 ;
					else if(_angle < 0)
						d_Result = _angle + 360 ;			
				}
				return d_Result ;
			}

		void set_turn_action_name(std::string action_name){turn_action_name = action_name;}	
		std::string get_turn_action_name(){return turn_action_name;}	
		//-------------------------------
		std::vector<std::string> v_params_ ;
		bool split_condition(std::string cond) ;

		
		void get_upper_topic_rate(int &info_rate , int &state_rate)
		{
			info_rate = upper_robot_info_rate;
			state_rate = upper_robot_state_rate;
		}	

		double get_robot_wait_time(){return robot_wait_time ;}; 
		void set_robot_wait_time(double wait_time){robot_wait_time = wait_time ;}

		std::map<int, std::shared_ptr<ac_action_worksheet>> get_ac_action_worksheet_map() {return ac_action_worksheet_map_ ;}

		void set_ws_post_turn_flag(bool _flag){b_ws_post_turn_flag = _flag;}
		bool get_ws_post_turn_flag(){return b_ws_post_turn_flag ;}	

		void set_ws_abs_turn_set_pass(bool _pass){b_ws_abs_turn_set_pass = _pass;}
		bool get_ws_abs_turn_set_pass(){return b_ws_abs_turn_set_pass ;}

		void set_manual_runmode_type(runmode_type _type){manual_runmode_type = _type;}
		runmode_type get_manual_runmode_type(){return manual_runmode_type;}

		void set_manualparent_runmode_type(runmode_type _type){manualparent_runmode_type = _type;}
		runmode_type get_manualparent_runmode_type(){return manualparent_runmode_type;}	

		void set_remote_runmode_type(runmode_type _type){remote_runmode_type = _type;}
		runmode_type get_remote_runmode_type(){return remote_runmode_type;}

		void set_ManualRun_Start(bool b_Start){bManualRun_Start = b_Start ;} ;
		bool get_ManualRun_Start(){ return bManualRun_Start;};

		void set_Alarm_Reset(bool b_Set){bAlarm_Reset = b_Set ;} ;
		bool get_Alarm_Reset(){ return bAlarm_Reset;};

		void set_Alarm_Recovery(bool b_Set){bAlarm_Recovery = b_Set ;} ;
		bool get_Alarm_Recovery(){ return bAlarm_Recovery;};

		void set_System_ReStart(bool b_Set){bSystem_ReStart = b_Set ;} ;
		bool get_System_ReStart(){ return bSystem_ReStart;};

		void set_plantoexec_run(bool b_Set){b_plantoexec_run = b_Set ;} 
		bool get_plantoexec_run(){ return b_plantoexec_run;}

		runmode_type get_systme_runmode_type() ;

};
//-----------------------------------------------------------------------------
#endif
