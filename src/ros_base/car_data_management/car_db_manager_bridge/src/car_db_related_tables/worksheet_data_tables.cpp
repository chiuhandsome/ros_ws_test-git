#include <car_db_related_tables/worksheet_data_tables.h>
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : work_sheet_main                                           **
//****************************************************************************
//------------------------------------------------------------------------------
module_work_sheet_main::module_work_sheet_main(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_work_sheet_main,type_work_sheet_main_req,type_work_sheet_main_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    bUniqueCheck = true ;
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_work_sheet_main::~module_work_sheet_main() 
{
   
}
//------------------------------------------------------- 
bool module_work_sheet_main::is_search_key_Exist(const boost::shared_ptr<type_work_sheet_main> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_work_sheet_main_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else{
            if(F_dynamicsearch_type == edynamic_work_sheet_main_search_uptime)
                _result = (_iter->update_time == search_keydata);
        }
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_work_sheet_main::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_work_sheet_main> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_work_sheet_main>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_work_sheet_main::is_search_key_Exist,this,std::placeholders::_1));   
        if(_type == edb_tb_edit_add){
            bRet = (it == ptr_results_vector.end());
            if(bRet){
                 bRet = db_table_Insert(_data,error_type);
            }
            else error_type = edb_tb_err_type_add ;
        }   
        else{
            bRet = (it != ptr_results_vector.end());
            if(bRet){
                //-- data-refresh then modify table ----
                (*_data).primary_id = (*it)->primary_id ;
                //------------------------------------
                bRet = db_table_modify(_data,error_type);
                if(bRet){
                    (*it)->primary_id = (*_data).primary_id ;
                    (*it)->unique_code = (*_data).unique_code ;
                    (*it)->base_name = (*_data).base_name ;
                    (*it)->occur_time = (*_data).occur_time ;
                    (*it)->workitems_num = (*_data).workitems_num ;
                    (*it)->update_time = (*_data).update_time ;  
                }    
                else error_type = edb_tb_err_type_modify ;          
            }
            else error_type = edb_tb_err_type_modify ;    
        }  
    }

    return bRet ;    
}
//-----------------------------------------------------------------------------
bool module_work_sheet_main::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_work_sheet_main_req &req,const boost::shared_ptr<type_work_sheet_main> &msg_data)
{
    msg_data->primary_id = req.req_work_sheet_main.primary_id ; 
    msg_data->unique_code = req.req_work_sheet_main.unique_code ; 
    msg_data->base_name = req.req_work_sheet_main.base_name ; 
    msg_data->occur_time = req.req_work_sheet_main.occur_time ; 
    msg_data->workitems_num = req.req_work_sheet_main.workitems_num ; 
    msg_data->update_time = req.req_work_sheet_main.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_work_sheet_main::table_data_checkinput(const boost::shared_ptr<type_work_sheet_main> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_work_sheet_main::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_work_sheet_main_search_base_name) || (_type > (int)edynamic_work_sheet_main_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_work_sheet_main_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_work_sheet_main> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_work_sheet_main_search_base_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_work_sheet_main_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_work_sheet_main::v_set_finddata_MsgType_resp(type_work_sheet_main_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_work_sheet_main.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_work_sheet_main> p, find_results_vector){
        resp.result_work_sheet_main[index].primary_id = (*p).primary_id ;
        resp.result_work_sheet_main[index].unique_code = (*p).unique_code ;
        resp.result_work_sheet_main[index].base_name = (*p).base_name ;
        resp.result_work_sheet_main[index].occur_time = (*p).occur_time ;
        resp.result_work_sheet_main[index].workitems_num = (*p).workitems_num ;
        resp.result_work_sheet_main[index].update_time = (*p).update_time ;
        index++ ;
    }
    //------------------------
    if((error_type == edb_tb_err_type_none) && (counter == 0)){
        error_type = edb_tb_err_type_query_result ;
    }
    resp.error_code = convert_str((int) error_type) ;
    resp.result = (error_type == edb_tb_err_type_none);
    return true ;
}
//------------------------------------------------------- 
db_tb_error_type module_work_sheet_main::v_table_data_check_req(type_work_sheet_main_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_work_sheet_main> msg_data = boost::make_shared<type_work_sheet_main>();
    msg_data->primary_id = req.req_work_sheet_main.primary_id ; 
    msg_data->unique_code = req.req_work_sheet_main.unique_code ; 
    msg_data->base_name = req.req_work_sheet_main.base_name ; 
    msg_data->occur_time = req.req_work_sheet_main.occur_time ; 
    msg_data->workitems_num = req.req_work_sheet_main.workitems_num ; 
    msg_data->update_time = req.req_work_sheet_main.update_time ; 

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_work_sheet_main::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_work_sheet_main_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_work_sheet_main::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_work_sheet_main>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_work_sheet_main::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_work_sheet_main::v_check_unique_code_exist(type_work_sheet_main_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_work_sheet_main.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : work_sheet_items                                          **
//****************************************************************************
//------------------------------------------------------------------------------
module_work_sheet_items::module_work_sheet_items(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_work_sheet_items,type_work_sheet_items_req,type_work_sheet_items_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    bUniqueCheck = false ;
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_work_sheet_items::~module_work_sheet_items() 
{
   
}
//------------------------------------------------------- 
bool module_work_sheet_items::is_search_key_Exist(const boost::shared_ptr<type_work_sheet_items> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_work_sheet_items_search_base_name){
            _result = (_iter->unique_code == search_keydata) && (_iter->primary_id == sub_sch_keydata);
        }
        else if(F_dynamicsearch_type == edynamic_work_sheet_items_search_base_item_name)
            _result = (_iter->base_item_name == search_keydata);    
        else if(F_dynamicsearch_type == edynamic_work_sheet_items_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_work_sheet_items::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_work_sheet_items> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        //search_keydata = (*_data).unique_code ;
        //F_search_type = edb_tb_search_unique_code ;
        search_keydata = (*_data).primary_id ;
        F_search_type = edb_tb_search_primary_id ;

        vector< boost::shared_ptr<type_work_sheet_items>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_work_sheet_items::is_search_key_Exist,this,std::placeholders::_1));   
        if(_type == edb_tb_edit_add){
            bRet = (it == ptr_results_vector.end());
            if(bRet){
                 bRet = db_table_Insert(_data,error_type);
            }
            else error_type = edb_tb_err_type_add ;
        }   
        else{
            bRet = (it != ptr_results_vector.end());
            if(bRet){
                //-- data-refresh then modify table ----
                (*_data).primary_id = (*it)->primary_id ;
                //------------------------------------
                bRet = db_table_modify(_data,error_type);
                if(bRet){
                    (*it)->primary_id = (*_data).primary_id ;
                    (*it)->unique_code = (*_data).unique_code ;
                    (*it)->base_item_name = (*_data).base_item_name ;
                    (*it)->item_ser_no = (*_data).item_ser_no ;
                    (*it)->occur_time = (*_data).occur_time ;
                    (*it)->target_pose_id = (*_data).target_pose_id ;
                    (*it)->action_function_id = (*_data).action_function_id ;
                    (*it)->action_function_params = (*_data).action_function_params ;
                    (*it)->remark = (*_data).remark ;
                    (*it)->update_time = (*_data).update_time ;  
                }    
                else error_type = edb_tb_err_type_modify ;          
            }
            else error_type = edb_tb_err_type_modify ;    
        }  
    }

    return bRet ;    
}
//-----------------------------------------------------------------------------
bool module_work_sheet_items::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_work_sheet_items_req &req,const boost::shared_ptr<type_work_sheet_items> &msg_data)
{
    msg_data->primary_id = req.req_work_sheet_items.primary_id ; 
    msg_data->unique_code = req.req_work_sheet_items.unique_code ; 
    //msg_data->base_name = req.req_work_sheet_items.base_name ; 
    msg_data->base_item_name = req.req_work_sheet_items.base_item_name ; 
    msg_data->item_ser_no = req.req_work_sheet_items.item_ser_no ; 
    msg_data->occur_time = req.req_work_sheet_items.occur_time ; 
    msg_data->target_pose_id = req.req_work_sheet_items.target_pose_id ; 
    msg_data->action_function_id = req.req_work_sheet_items.action_function_id ;  
    msg_data->action_function_params = req.req_work_sheet_items.action_function_params ;  
    msg_data->remark = req.req_work_sheet_items.remark ;  
    msg_data->update_time = req.req_work_sheet_items.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_work_sheet_items::table_data_checkinput(const boost::shared_ptr<type_work_sheet_items> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_work_sheet_items::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_work_sheet_items_search_base_name) || (_type > (int)edynamic_work_sheet_items_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_work_sheet_items_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_work_sheet_items> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_work_sheet_items_search_base_name){
            //ROS_INFO("edynamic_work_sheet_items_search_base_name: %s %s",(*p).unique_code.c_str(),(*p).primary_id.c_str());
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).unique_code,(*p).primary_id));
            //search_dynamic_map.insert(std::pair<std::string,std::string>((*p).primary_id,(*p).unique_code));
        }    
        else if(F_dynamicsearch_type == edynamic_work_sheet_items_search_base_item_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_item_name,(*p).primary_id));
        }  
        else if(F_dynamicsearch_type == edynamic_work_sheet_items_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_work_sheet_items::v_set_finddata_MsgType_resp(type_work_sheet_items_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_work_sheet_items.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_work_sheet_items> p, find_results_vector){
        resp.result_work_sheet_items[index].primary_id = (*p).primary_id ;
        resp.result_work_sheet_items[index].unique_code = (*p).unique_code ;
        //resp.result_work_sheet_items[index].base_name = (*p).base_name ;
        resp.result_work_sheet_items[index].base_item_name = (*p).base_item_name ;
        resp.result_work_sheet_items[index].item_ser_no = (*p).item_ser_no ;
        resp.result_work_sheet_items[index].occur_time = (*p).occur_time ;
        resp.result_work_sheet_items[index].target_pose_id = (*p).target_pose_id ;
        resp.result_work_sheet_items[index].action_function_id = (*p).action_function_id ;
        resp.result_work_sheet_items[index].action_function_params = (*p).action_function_params ;
        resp.result_work_sheet_items[index].remark = (*p).remark ;
        resp.result_work_sheet_items[index].update_time = (*p).update_time ;
        index++ ;
    }
    //------------------------
    if((error_type == edb_tb_err_type_none) && (counter == 0)){
        error_type = edb_tb_err_type_query_result ;
    }
    resp.error_code = convert_str((int) error_type) ;
    resp.result = (error_type == edb_tb_err_type_none);
    return true ;
}
//------------------------------------------------------- 
db_tb_error_type module_work_sheet_items::v_table_data_check_req(type_work_sheet_items_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_work_sheet_items> msg_data = boost::make_shared<type_work_sheet_items>();
    msg_data->primary_id = req.req_work_sheet_items.primary_id ; 
    msg_data->unique_code = req.req_work_sheet_items.unique_code ; 
    //msg_data->base_name = req.req_work_sheet_items.base_name ; 
    msg_data->base_item_name = req.req_work_sheet_items.base_item_name ; 
    msg_data->item_ser_no = req.req_work_sheet_items.item_ser_no ; 
    msg_data->occur_time = req.req_work_sheet_items.occur_time ; 
    msg_data->target_pose_id = req.req_work_sheet_items.target_pose_id ; 
    msg_data->action_function_id = req.req_work_sheet_items.action_function_id ; 
    msg_data->action_function_params = req.req_work_sheet_items.action_function_params ; 
    msg_data->remark = req.req_work_sheet_items.remark ; 
    msg_data->update_time = req.req_work_sheet_items.update_time ;

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_work_sheet_items::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_work_sheet_items_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_work_sheet_items::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;
    sub_sch_keydata = _sub_sch_keydata ;
    //ROS_INFO("====>v_ptr_results_vector_find_if : %s rst_distance:%d");
    //_just_vector.clear();

    vector< boost::shared_ptr<type_work_sheet_items>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_work_sheet_items::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
        //ROS_INFO("v_ptr_results_vector_find_if : %s rst_distance:%d",search_keydata.c_str(), rst_distance);
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_work_sheet_items::v_check_unique_code_exist(type_work_sheet_items_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_work_sheet_items.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------