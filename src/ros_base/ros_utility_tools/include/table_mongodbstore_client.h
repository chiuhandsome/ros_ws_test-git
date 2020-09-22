#ifndef table_mongodbstore_client_H
#define table_mongodbstore_client_H
//----------------------------------------------------------------------------
#include <ros/ros.h>
#include <mongodb_store/message_store.h>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/foreach.hpp>
#include <boost/any.hpp>
//---------------------------------------------------------------------------
enum elang_type{elang_type_None=0, elang_type_E, elang_type_TC,elang_type_SC};
//---------------------------------------------------------------------------
typedef enum {
	edb_tb_err_type_none = 0 , edb_tb_err_type_empty, edb_tb_err_type_int, edb_tb_err_type_param,
    edb_tb_err_type_indexkey,  edb_tb_err_type_database , 
	edb_tb_err_type_editparam ,edb_tb_err_type_searchparam ,edb_tb_err_type_optschparam ,
	edb_tb_err_type_query_result,
	edb_tb_err_type_add , edb_tb_err_type_modify , edb_tb_err_type_delete , edb_tb_err_type_query 		
} db_tb_error_type;

typedef enum {
	edb_tb_search_unique_code = 0 , edb_tb_search_primary_id ,  edb_tb_search_all , 
	edb_tb_search_special  
} db_tb_search_type;

typedef enum {
	edb_tb_edit_none = 0 , edb_tb_edit_add, edb_tb_edit_modify, edb_tb_edit_delete, edb_tb_edit_query , edb_tb_edit_refresh
} db_tb_edit_type ;
//---------------------------------------------------------------------------
using namespace mongodb_store ;
using namespace std ;
//---------------------------------------------------------------------------
/****** function name list for search ****************************************
private:
	void searchkey_map_erase(std::string unique_code, std::string primary_id);	
	bool mongo_table_Insert(const boost::shared_ptr<MsgType> &_data);	
	bool mongo_table_modify(const boost::shared_ptr<MsgType> &_data);	
	void err_type_desc_initSet();
protected:
public:	
	table_mongodbstore_client(ros::NodeHandle &nh,std::string tablename,bool def_code_flag);
 	~table_mongodbstore_client();
	void db_table_refresh();
	void search_dynamic_map_refresh();
	vector< boost::shared_ptr<MsgType>> getdata_table_vector();
	bool db_table_Insert(const boost::shared_ptr<MsgType> &_data,db_tb_error_type &err_type);
	bool db_table_modify(const boost::shared_ptr<MsgType> &_data,db_tb_error_type &err_type);
	bool table_data_delete(std::string unique_code);
	vector< boost::shared_ptr<MsgType>> get_find_results_vector();
	void search_condition_set(db_tb_search_type _search_type);
	virtual bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
		                                       const boost::shared_ptr<MsgType_req> &srv_data,
									           const boost::shared_ptr<MsgType> &msg_data) = 0;
	virtual bool v_check_unique_code_exist(MsgType_req &req) = 0;
	bool request_table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,MsgType_req &req);
	bool db_data_query_process(db_tb_search_type _search_type,std::string param_low,std::string param_up);
	virtual bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type) = 0;
	virtual bool v_set_finddata_MsgType_resp(MsgType_resp &resp,db_tb_error_type error_type) = 0;
	bool response_table_data_Query(std::string base_index,std::string opt_index,std::string parameter,MsgType_resp &resp);
	virtual db_tb_error_type v_table_data_check_req(MsgType_req &req) = 0;
	virtual bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, MsgType_req &req) = 0;
	bool srv_Eval_db_table_srv_service(MsgType_req &req, MsgType_resp &resp) ;
	void db_table_run_srvservice();
	bool check_unique_code_exist(std::string _unique_code);
	std::string get_error_desc(elanguage_type _type,db_tb_error_type _type);
*****************************************************************************/
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
template<typename MsgType,typename MsgType_req,typename MsgType_resp>
class table_mongodbstore_client
{
	private:
		ros::NodeHandle nh_ ;		
		std::string _tablename ;
		//bool using_def_code_flag ;		

		MessageStoreProxy* base_mongodb ; 
		std::multimap<std::string, std::string> searchkey_map ;
		vector<std::string> err_type_desc_TC ;
		vector<std::string> err_type_desc_SC ;
		vector<std::string> err_type_desc_E ;		
		//------------------------------------------------------- 
		void searchkey_map_erase(std::string unique_code, std::string primary_id)
		{
			std::multimap<std::string, std::string>::iterator it,itlow,itup;
			itlow = searchkey_map.lower_bound (unique_code);   
			itup = searchkey_map.upper_bound (unique_code);    
			for (it=itlow; it!=itup; ++it){
				if(it->second == primary_id)
					searchkey_map.erase (it);      
			}	
		}		
		//------------------------------------------------------- 
		bool mongo_table_Insert(const boost::shared_ptr<MsgType> &_data)
		{
			//-- add to mongo db ---			
			(*_data).update_time = get_Now_LocalTime();  //-- from tools
			std::string _id = base_mongodb->insertNamed(_tablename, (*_data));
			(*_data).primary_id = _id ;
			bool bAdd = base_mongodb->updateID(_id, (*_data));
			//--------------
			return bAdd ;
		}
		//------------------------------------------------------- 
		bool mongo_table_modify(const boost::shared_ptr<MsgType> &_data)
		{
			//-- modified mongodb ----
			(*_data).update_time = get_Now_LocalTime();
			std::string id = (*_data).primary_id ;
			bool bModify = base_mongodb->updateID(id, (*_data)); 
			return bModify ;	
		}
		//------------------------------------------------------- 
		void err_type_desc_initSet()
		{
			for(int i=0;i<15;i++){
				err_type_desc_TC.push_back("正常");
				err_type_desc_TC.push_back("不允許空白資料！");
				err_type_desc_TC.push_back("資料需為整數格式！");
				err_type_desc_TC.push_back("輸入參數資料錯誤!");
				err_type_desc_TC.push_back("資料索引鍵值錯誤！");
				err_type_desc_TC.push_back("表格資料錯誤！");
				err_type_desc_TC.push_back("編輯參數錯誤！");
				err_type_desc_TC.push_back("搜尋參數錯誤！");
				err_type_desc_TC.push_back("選擇搜尋參數錯誤！");
				err_type_desc_TC.push_back("無任何符合查詢資料！");
				err_type_desc_TC.push_back("新增資料錯誤！");
				err_type_desc_TC.push_back("修改資料錯誤！");
				err_type_desc_TC.push_back("删除資料錯誤！");
				err_type_desc_TC.push_back("查詢資料錯誤！");

				err_type_desc_SC.push_back("正常");
				err_type_desc_SC.push_back("不允许空白资料！");
				err_type_desc_SC.push_back("资料需为整数格式！");
				err_type_desc_SC.push_back("输入参数资料错误!");
				err_type_desc_SC.push_back("资料索引键值错误！");
				err_type_desc_SC.push_back("表格资料错误！");
				err_type_desc_SC.push_back("编辑参数错误！");
				err_type_desc_SC.push_back("搜寻参数错误！");
				err_type_desc_SC.push_back("选择搜寻参数错误！");
				err_type_desc_SC.push_back("无任何符合查询资料！");
				err_type_desc_SC.push_back("新增资料错误！");
				err_type_desc_SC.push_back("修改资料错误！");
				err_type_desc_SC.push_back("删除资料错误！");
				err_type_desc_SC.push_back("查询资料错误！");

				err_type_desc_E.push_back("normal");
				err_type_desc_E.push_back("blank data isn't allowed!");
				err_type_desc_E.push_back("Data must be in integer format！");
				err_type_desc_E.push_back("Input parameter is wrong!");
				err_type_desc_E.push_back("Data index key value error！");
				err_type_desc_E.push_back("Table data is wrong !");
				err_type_desc_E.push_back("parameter error - Edit ！");
				err_type_desc_E.push_back("parameter error - Search") ;
				err_type_desc_E.push_back("parameter error - Option Search");
				err_type_desc_E.push_back("No matching data to inquire condition！");
				err_type_desc_E.push_back("Error - add mode ");
				err_type_desc_E.push_back("Error - modify mode ");
				err_type_desc_E.push_back("Error - delete mode ");
				err_type_desc_E.push_back("Error - inquire mode");
			}
		}	
		//------------------------------------------------------- 
	protected:
	public:
		//-------------------------------------------------------
		bool bUniqueCheck ;
		//------------------------------------------------------- 	
		db_tb_search_type F_search_type ;
		std::string search_keydata ;	
		vector< boost::shared_ptr<MsgType>> ptr_results_vector ;
		vector< boost::shared_ptr<MsgType>> find_results_vector; 
		ros::ServiceServer db_table_srv_service ;
		std::string db_table_srv_service_name ;
		std::string _update_primary_id ,_update_updatetime  ;
		//------------------------------------------------------- 
		table_mongodbstore_client(ros::NodeHandle &nh,std::string tablename) //,bool def_code_flag)
		{
			nh_ = nh ;
			_tablename = tablename ;
			bUniqueCheck = true ;
			//using_def_code_flag = def_code_flag;
            F_search_type = edb_tb_search_unique_code ;	
			base_mongodb = new MessageStoreProxy(nh_,_tablename);
			//-------------
			db_table_srv_service_name = tablename+"_service";
			//-------------
			err_type_desc_initSet();
			db_table_refresh();	//-- ptr_results_vector data initial 
			//---------------
			//ROS_INFO("Table name:%s numbers:%d",_tablename.c_str(),ptr_results_vector.size());
		}
		//------------------------------------------------------- 
		~table_mongodbstore_client()
		{
			delete base_mongodb ;  	
		}
		//-------------------------------------------------------
		void db_table_refresh()
		{
			ptr_results_vector.clear();
			base_mongodb->query<MsgType>(ptr_results_vector) ;
			
			searchkey_map.clear();
			BOOST_FOREACH( boost::shared_ptr<MsgType> p, ptr_results_vector){
				searchkey_map.insert(std::pair<std::string, std::string>((*p).unique_code,(*p).primary_id));
			}
		}
		//------------------------------------------------------- 
		std::multimap<std::string, std::string> search_dynamic_map ;
		//------------------------------------------------------- 	
		void search_dynamic_map_refresh()
		{			
			//-- search_dynamic_map refresh ----
			if(F_search_type == edb_tb_search_unique_code)
				return ;
			//----- can delete -----
			search_dynamic_map.clear();
			//ROS_INFO("Table name:%s numbers 123:%d",_tablename.c_str(),ptr_results_vector.size());
			BOOST_FOREACH( boost::shared_ptr<MsgType> p,  ptr_results_vector){
				if(F_search_type == edb_tb_search_primary_id){
					search_dynamic_map.insert(std::pair<std::string,std::string>((*p).primary_id,(*p).primary_id));
				}
				//else if(F_search_type == edb_tb_search_update_time){
				//	search_dynamic_map.insert(std::pair<std::string,std::string>((*p).primary_id,(*p).update_time));
				//}
				//else if(F_search_type == edb_tb_search_all){
				//	search_dynamic_map.insert(std::pair<std::string,std::string>((*p).primary_id,(*p).unique_code));
				//}
			}	
		}		
		//------------------------------------------------------- 
		vector< boost::shared_ptr<MsgType>> getdata_table_vector()
		{
			return ptr_results_vector; 	
		}
		//------------------------------------------------------- 
		bool db_table_Insert(const boost::shared_ptr<MsgType> &_data,db_tb_error_type &err_type)
		{
			err_type = edb_tb_err_type_none ;
			//-- mongoDB insert ----			
			bool bAdd = mongo_table_Insert(_data);
			//-- insert data to ptr_results_vector and  searchkey_map  ----
			if(bAdd){
				ptr_results_vector.emplace_back(_data);
				searchkey_map.insert(std::pair<std::string,std::string>((*_data).unique_code,(*_data).primary_id));
			}
			else
				err_type = edb_tb_err_type_database ;
			
			return bAdd ;	
		}
		//------------------------------------------------------- 
		//virtual void table_data_modify(std::string _unique_code,const boost::shared_ptr<MsgType> &_data) = 0 ;
		//-------------------------------------------------------
		bool db_table_modify(const boost::shared_ptr<MsgType> &_data,db_tb_error_type &err_type)
		{
			err_type = edb_tb_err_type_none ;

			//-- mongoDB modify ----
			bool bModify = mongo_table_modify(_data) ;
			//-- ptr_results_vector modify ----
			if(!bModify)
				err_type = edb_tb_err_type_database ; 

			return bModify ;				
		}
		//-------------------------------------------------------
		virtual bool v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance) = 0 ;
		//------------------------------------------------------- 
		bool table_data_delete(std::string unique_code)
		{
			int distance ;
			//bool bDel_pos = v_ptr_results_vector_find_if(unique_code,"",edb_tb_search_unique_code,distance);
			bool bDel_pos = v_ptr_results_vector_find_if(unique_code,"",edb_tb_search_primary_id,distance);
			if(bDel_pos){
				//-- mongoDB delete ----		
				std::string id = (*(ptr_results_vector.begin() + distance))->primary_id ;				
				bDel_pos = base_mongodb->deleteID(id);  
				if(bDel_pos){
					//-- delete ptr_results_vector and searchkey_map 
					ptr_results_vector.erase(ptr_results_vector.begin() + distance);
					searchkey_map_erase(unique_code, id);
				}
			}
			return bDel_pos ;
		}
		//------------------------------------------------------- 
		vector< boost::shared_ptr<MsgType>> get_find_results_vector()
		{
			return find_results_vector ;	
		}
		//------------------------------------------------------- 
		void search_condition_set(db_tb_search_type _search_type)
		{
			F_search_type = _search_type ;

			search_dynamic_map_refresh();	
		}
		//------------------------------------------------------- 
		virtual bool v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
		                                       MsgType_req &req,const boost::shared_ptr<MsgType> &msg_data) = 0;
		virtual bool v_check_unique_code_exist(MsgType_req &req) = 0;
		//-------------------------------------------------------
		bool request_table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,MsgType_req &req)
		{
			bool bRet = true ;	
			bool bExist = true ;	
			if(bUniqueCheck){			
				bExist = v_check_unique_code_exist(req);
				bRet = ((_type == edb_tb_edit_add) && !bExist) || 
			        	((_type == edb_tb_edit_modify) && bExist);
			}
			if(bRet){
				boost::shared_ptr<MsgType> msg_transfer(new MsgType()) ;
				//boost::shared_ptr<MsgType> msg_transfer = std::make_shared<MsgType>();	//template can't use
				bRet = v_srv_msg_transfer_update(_type,error_type,req,msg_transfer) ;	

			}
			else{
				if(((_type == edb_tb_edit_add) && bExist) || ((_type == edb_tb_edit_modify) && !bExist))
					error_type = edb_tb_err_type_indexkey ;
				else 
					error_type = edb_tb_err_type_editparam ;
			}

			return bRet ;    
		}
		//-----------------------------------------------------------------------------
		bool db_data_query_process(db_tb_search_type _search_type,std::string param_low,std::string param_up = "")
		{
			//ROS_INFO("db_data_query_process ==> %d", (int)_search_type);
			bool bQuery = false ;
			if(_search_type == edb_tb_search_all){
				//-- get all data base on mongodb's object_ID --
				//param_low = "000000000000000000000000" ;
				param_low = "" ;
				param_up = "zzzzzzzzzzzzzzzzzzzzzzzz" ;
				bQuery = true ;
			}	
			else{
				if(param_up.empty())
					param_up = param_low ;
				bQuery = !param_up.empty() && !param_low.empty() ; 
			}
			//ROS_INFO("param_low ==> %s,param_up ==> %s", param_low.c_str(),param_up.c_str());
			//--------------------
			//ROS_INFO("bQuery==>%d",(int)bQuery);
			if(bQuery){
				//ROS_INFO("bQuery search_dynamic_map.size");
				//-- get range for meeting searched-conditions ------ 				        
				std::multimap<std::string, std::string>::iterator it,itlow,itup;
				if((_search_type == edb_tb_search_unique_code) ||
				   (_search_type == edb_tb_search_all)){
					//-- using fixed-search (unique_code)
					itlow = searchkey_map.lower_bound(param_low);   
					itup = searchkey_map.upper_bound(param_up);  
					//ROS_INFO("search_dmap.size==>%d %s %s ==>",searchkey_map.size(),param_low.c_str(),param_up.c_str());
				}
				else{
					//-- using dyncmic-search (except unique_code)
					itlow = search_dynamic_map.lower_bound(param_low);   
					itup = search_dynamic_map.upper_bound(param_up); 
					//ROS_INFO("search_dynamic_map.size==>%d",search_dynamic_map.size());
				}
				//-- get find_results_vector --- 
				find_results_vector.clear(); 
				int distance ;
				std::string sch_code ; 
				//ROS_INFO("=== >before sch_code==>%s %s",itlow.c_str(),itup.c_str());
				for (it=itlow; it!=itup; ++it){
					sch_code = it->first ;
					//ROS_INFO("sch_code==>%s %s",it->first.c_str(),it->second.c_str());
					if(v_ptr_results_vector_find_if(sch_code,it->second,_search_type,distance)){
						//-- if find out data,push it to find_results_vector
						find_results_vector.emplace_back(*(ptr_results_vector.begin() + distance));
					}
				} 
			}
			return bQuery ;
		}
		//-------------------------------------------------------
		virtual bool v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type) = 0;
		virtual bool v_set_finddata_MsgType_resp(MsgType_resp &resp,db_tb_error_type error_type) = 0;
		//-------------------------------------------------------
		bool response_table_data_Query(std::string base_index,std::string opt_index,std::string parameter,MsgType_resp &resp)
		{			
			//ROS_INFO("base_index=> %s opt_index=>%s parameter=>%s",base_index.c_str(),opt_index.c_str(),parameter.c_str());
			
			db_tb_error_type _error_type = edb_tb_err_type_none ;
			bool bRet = true ;
			int _type = strtoint(base_index,-1);	//-- search type	
			if(_type == (int)edb_tb_search_all){
				parameter = "all"	;
			}		
			if((_type < (int)edb_tb_search_unique_code) || (_type > (int)edb_tb_search_special) || parameter.empty()){
				_error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
				bRet = false ;
			}
			//ROS_INFO("bRet %d",(int)bRet);
			// bRet = (_type != -1) || parameter.empty() ;
			if(bRet){
				//-- decide search data of lower_bound and upper_bound --
				std::string param_low = "" ; 
				std::string param_up = "" ;    
				std::string s_find (",");
				std::size_t _found = parameter.find(s_find);
				//-- get 1'st founded-data to param_low ---
				if (_found != std::string::npos){
					param_low = parameter.substr(0,_found);
					parameter = parameter.substr(_found+1);
					//-- get 2'nd founded-data to param_low ---
					_found = parameter.find(s_find);
					if (_found != std::string::npos)
						param_up = parameter.substr(0,_found-1);    
					else
						param_up = parameter ;   					
				}
				else
					param_low = parameter ;
				
				if(param_up.empty())
					param_up = param_low ;				
				//------------------------------------------------------
				db_tb_search_type sch_type = (db_tb_search_type)_type ;
				//ROS_INFO("db_tb_search_type %d",(int)sch_type);
				if(sch_type == edb_tb_search_special){	// option-search by user's default
					bRet = v_db_data_query_opt_process(opt_index,param_low,param_up,_error_type); 	
				}
				else{	// standard-search for unique_code,base_name ....
					if(sch_type != edb_tb_search_unique_code){
						//ROS_INFO("edb_tb_search_unique_code %d",(int)sch_type);
						search_condition_set(sch_type);
					}					
				}
				//ROS_INFO("bRet ==> %d",(int)bRet);
				if(bRet)
					bRet = db_data_query_process(sch_type,param_low,param_up);
			}	
			//db_tb_error_type _error_type = bRet ? edb_tb_err_type_none : edb_tb_err_type_query ;
			//-- set find_results_vector's data to MsgType_resp &resp
			v_set_finddata_MsgType_resp(resp,_error_type);	
			return bRet ;
		}
		//-------------------------------------------------------
		db_tb_error_type table_srv_error_type ;
		virtual db_tb_error_type v_table_data_check_req(MsgType_req &req) = 0;
		virtual bool v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, MsgType_req &req) = 0;
		//-------------------------------------------------------		
		bool srv_Eval_db_table_srv_service(MsgType_req &req, MsgType_resp &resp)
		{
			//ROS_INFO("srv_Eval_db_table_srv_service:%d %s",(int)req.cmd_id,req.query_base_index.c_str());
			table_srv_error_type = edb_tb_err_type_none ; 
			//--- check _edit_type (cmd_id) ---
			resp.result = false ;			
			int _cmd_id = req.cmd_id ;
			if((_cmd_id <= (int)edb_tb_edit_none) || (_cmd_id > (int)edb_tb_edit_refresh)){
				table_srv_error_type = edb_tb_err_type_editparam ;	// error code for edit_type-error(cmd_id)
				return true ;
			}
			//ROS_INFO("return");
			//----------------------------				
			db_tb_edit_type _edit_type = (db_tb_edit_type) _cmd_id ;				
			switch(_edit_type){
				case edb_tb_edit_add :
				case edb_tb_edit_modify :{		
					//-- input data check  --	
					db_tb_error_type _checkdata = v_table_data_check_req(req);
					if(_checkdata != edb_tb_err_type_none){
						table_srv_error_type = edb_tb_err_type_database ;	// error code for data-error(req.message)
						resp.error_code = convert_str((int)table_srv_error_type) ;
						resp.result = false ;
						return true ;
					}
					//-- update req-message data --
					bool bUpdate = request_table_data_Update(_edit_type,table_srv_error_type,req) ;
					if(!bUpdate){
						//-- error for data_update process --
						//table_srv_error_type = edb_tb_err_type_database ;	// error code for data-error(req.message)						
						resp.error_code = convert_str((int)table_srv_error_type) ;
						resp.result = false ;						
						return true ;	
					}
					else {
						//-- recode premary_id and up_data_time with query_base_index and query_opt_index
						resp.primary_id = _update_primary_id ;	
						resp.update_time = _update_updatetime ; 
						resp.error_code = convert_str((int)edb_tb_err_type_none) ;
						resp.result = true ;
					}

				} break ;
				case edb_tb_edit_delete :{
					std::string _code = req.query_parameter ;	//-- modify to primary_id --
					//ROS_INFO("delete unique_code:%s",_code.c_str());
					search_condition_set(edb_tb_search_primary_id);
					std::multimap<std::string, std::string>::iterator it = search_dynamic_map.find(_code);
					bool bExist = (it != search_dynamic_map.end());
					//bool bExist = check_unique_code_exist(_code);
					bool bdel = !_code.empty() && bExist;
					
					if(bdel) 
						bdel = table_data_delete(_code);
					if(bdel){
						resp.error_code = convert_str((int)edb_tb_err_type_none) ;
						resp.result = true ;
					}
					else{
						table_srv_error_type = edb_tb_err_type_database ;	// error code for data-error(req.message)
						resp.error_code = convert_str((int)table_srv_error_type) ;
						resp.result = false ;
						return true ;	
					}
				} break ;
				case edb_tb_edit_query :{
					std::string _base_index = req.query_base_index ;
					std::string _opt_index = req.query_opt_index ;
					std::string _parameter = req.query_parameter ;		
					//ROS_INFO("=====>_base_index:%s _opt_index:%s _parameter:%s",_base_index.c_str(),_opt_index.c_str(),_parameter.c_str());			
					if(response_table_data_Query(_base_index,_opt_index,_parameter,resp)){
						resp.error_code = convert_str((int)edb_tb_err_type_none) ;
						resp.result = true ;	
					}
					else{
						table_srv_error_type = edb_tb_err_type_query ;	// error code for data-request
						resp.error_code = convert_str((int)table_srv_error_type) ;
						resp.result = false ;	
						return true ;		
					}
				} break ;
				case edb_tb_edit_refresh :{
					db_table_refresh();
					//ROS_INFO("Table name:%s numbers:%d",_tablename.c_str(),ptr_results_vector.size());
					resp.error_code = convert_str((int)edb_tb_err_type_none) ;
            		resp.result = true ;
				} break ;
			}

			return true ;
		}
		//-------------------------------------------------------
		void db_table_run_srvservice()
		{
			db_table_srv_service = nh_.advertiseService(db_table_srv_service_name,
			                       &table_mongodbstore_client<MsgType,MsgType_req,MsgType_resp>::srv_Eval_db_table_srv_service, this);
		}
		//------------------------------------------------------- 
		bool check_unique_code_exist(std::string _unique_code)
		{
			int distance ;
			bool bexist = v_ptr_results_vector_find_if(_unique_code,"",edb_tb_search_unique_code,distance);
			return bexist ;
		}
		//------------------------------------------------------- 
		std::string get_error_desc(elang_type lang_type,db_tb_error_type _type)
		{
			std::string sRet = "";
			int error_ser = (int) _type ;
			if(lang_type == elang_type_E)
				sRet = err_type_desc_E[error_ser]; 	
			else if(lang_type == elang_type_TC)
				sRet = err_type_desc_TC[error_ser]; 	
			else if(lang_type == elang_type_SC)
				sRet = err_type_desc_SC[error_ser]; 	
			
			return sRet ;
		}
		//-------------------------------------------------------
};
//-----------------------------------------------------------------------------
#endif   
