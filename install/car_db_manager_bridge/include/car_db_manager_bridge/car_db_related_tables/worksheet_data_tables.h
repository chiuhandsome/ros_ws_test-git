#ifndef worksheet_data_tables_H
#define worksheet_data_tables_H
//************* table_names show as below ************************************
//** table name : work_sheet_main                                           **
//** table name : work_sheet_items                                          **
//****************************************************************************
#include <ros_utility_tools/table_mongodbstore_client.h>
#include <ros_utility_tools/ros_tools.h>
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : work_sheet_main                                           **
//****************************************************************************
#include <car_db_manager_msgs/WorkSheetMain.h>
#include <car_db_manager_msgs/WorkSheetMainCmd.h>
//----------------------------------------------------------------------------
using type_work_sheet_main = car_db_manager_msgs::WorkSheetMain  ;
using type_work_sheet_main_cmd = car_db_manager_msgs::WorkSheetMainCmd  ;
using ptr_work_sheet_main = boost::shared_ptr<car_db_manager_msgs::WorkSheetMain>  ;
using type_work_sheet_main_req = car_db_manager_msgs::WorkSheetMainCmd::Request  ;
using type_work_sheet_main_resp = car_db_manager_msgs::WorkSheetMainCmd::Response  ;

typedef enum {
	edynamic_work_sheet_main_search_base_name = 0 , edynamic_work_sheet_main_search_uptime
} dynamic_work_sheet_main_search_type;
//-----------------------------------------------------------------------------
class module_work_sheet_main : public table_mongodbstore_client<type_work_sheet_main,type_work_sheet_main_req,type_work_sheet_main_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_work_sheet_main_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_work_sheet_main> &_iter);
  	public :
		module_work_sheet_main(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_work_sheet_main();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_work_sheet_main> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_work_sheet_main_req &req,const boost::shared_ptr<type_work_sheet_main> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_work_sheet_main> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_work_sheet_main_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_work_sheet_main_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_work_sheet_main_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_work_sheet_main_req &req);
};
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : work_sheet_items                                          **
//****************************************************************************
#include <car_db_manager_msgs/WorkSheetItems.h>
#include <car_db_manager_msgs/WorkSheetItemsCmd.h>
//----------------------------------------------------------------------------
using type_work_sheet_items = car_db_manager_msgs::WorkSheetItems  ;
using type_work_sheet_items_cmd = car_db_manager_msgs::WorkSheetItemsCmd  ;
using ptr_work_sheet_items = boost::shared_ptr<car_db_manager_msgs::WorkSheetItems>  ;
using type_work_sheet_items_req = car_db_manager_msgs::WorkSheetItemsCmd::Request  ;
using type_work_sheet_items_resp = car_db_manager_msgs::WorkSheetItemsCmd::Response  ;

typedef enum {
	edynamic_work_sheet_items_search_base_name = 0 , edynamic_work_sheet_items_search_base_item_name,edynamic_work_sheet_items_search_uptime
	//edynamic_work_sheet_items_search_base_item_name,edynamic_work_sheet_items_search_uptime
} dynamic_work_sheet_items_search_type;
//-----------------------------------------------------------------------------
class module_work_sheet_items : public table_mongodbstore_client<type_work_sheet_items,type_work_sheet_items_req,type_work_sheet_items_resp>
{	
	private:	
		ros::NodeHandle &nh_;
		std::string tbname_ ;
		dynamic_work_sheet_items_search_type F_dynamicsearch_type;
		bool is_search_key_Exist(const boost::shared_ptr<type_work_sheet_items> &_iter);
		//vector<std::string> _just_vector; 
		std::string sub_sch_keydata ;
  	public :
		module_work_sheet_items(ros::NodeHandle &nh,std::string tablename) ;  	 
		~module_work_sheet_items();
		//--------------------------
		bool table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_work_sheet_items> &_data);
		bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,		//-- overLoad virtual  
		                               type_work_sheet_items_req &req,const boost::shared_ptr<type_work_sheet_items> &msg_data);
		db_tb_error_type table_data_checkinput(const boost::shared_ptr<type_work_sheet_items> &_data);
		bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type);//-- overLoad virtual basecontroller
		bool v_set_finddata_MsgType_resp(type_work_sheet_items_resp &resp,db_tb_error_type error_type);//-- overLoad virtual  
		db_tb_error_type v_table_data_check_req(type_work_sheet_items_req &req);
		bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_work_sheet_items_req &req);//-- overLoad virtual basecontroller
		bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) ;
		bool v_check_unique_code_exist(type_work_sheet_items_req &req);
};
//----------------------------------------------------------------------------
//*****************************************************************************
#endif   
