#include <car_db_manager_tables/parameters_tables.h>
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : check_parameters                                           **
//****************************************************************************
//------------------------------------------------------------------------------
module_check_parameters::module_check_parameters(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_check_parameters,type_check_parameters_req,type_check_parameters_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_check_parameters::~module_check_parameters() 
{
   
}
//------------------------------------------------------- 
bool module_check_parameters::is_search_key_Exist(const boost::shared_ptr<type_check_parameters> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_check_parameters_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else
        if(F_dynamicsearch_type == edynamic_check_parameters_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_check_parameters::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_check_parameters> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_check_parameters>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_check_parameters::is_search_key_Exist,this,std::placeholders::_1));   
        if(_type == edb_tb_edit_add){
            bRet = (it == ptr_results_vector.end());
            if(bRet){
                 bRet = db_table_Insert(_data,error_type);
                 //ROS_INFO("db_table_Insert table_data_Update ===%f %d=======",(*_data).timeout,(*_data).out_of_times);
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
                    (*it)->timeout = (*_data).timeout ;
                    (*it)->out_of_times = (*_data).out_of_times ;
                    (*it)->update_time = (*_data).update_time ;  
                    //ROS_INFO("table_data_Update ===%f %d=======",(*_data).timeout,(*_data).out_of_times);
                }    
                else error_type = edb_tb_err_type_modify ;          
            }
            else error_type = edb_tb_err_type_modify ;    
        }  
    }

    return bRet ;    
}
//-----------------------------------------------------------------------------
bool module_check_parameters::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_check_parameters_req &req,const boost::shared_ptr<type_check_parameters> &msg_data)
{
    msg_data->primary_id = req.req_check_parameters.primary_id ; 
    msg_data->unique_code = req.req_check_parameters.unique_code ; 
    msg_data->base_name = req.req_check_parameters.base_name ; 
    msg_data->timeout = req.req_check_parameters.timeout ; 
    msg_data->out_of_times = req.req_check_parameters.out_of_times ; 
    msg_data->update_time = req.req_check_parameters.update_time ;  
    //ROS_INFO("v_srv_msg_transfer_update   ===%f %d=======",msg_data->timeout,msg_data->out_of_times);

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_check_parameters::table_data_checkinput(const boost::shared_ptr<type_check_parameters> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_check_parameters::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    //ROS_INFO("opt_index:%s param_low:%s param_up:%s",opt_index.c_str(),param_low.c_str(),param_up.c_str());
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_check_parameters_search_base_name) || (_type > (int)edynamic_check_parameters_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }   
    //ROS_INFO("bRet1234567:%d",bRet); 
    //------------------
    F_dynamicsearch_type = (dynamic_check_parameters_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_check_parameters> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_check_parameters_search_base_name){
            //ROS_INFO("(*p).base_name:%s (*p).primary_id:%s",(*p).base_name.c_str(),(*p).primary_id.c_str()); 
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_check_parameters_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    //ROS_INFO("search_dynamic_map:%d",search_dynamic_map.size()); 
    return bRet ;
}
//------------------------------------------------------- 
bool module_check_parameters::v_set_finddata_MsgType_resp(type_check_parameters_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;

    resp.result_check_parameters.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_check_parameters> p, find_results_vector){
        resp.result_check_parameters[index].primary_id = (*p).primary_id ;
        resp.result_check_parameters[index].unique_code = (*p).unique_code ;
        resp.result_check_parameters[index].base_name = (*p).base_name ;
        resp.result_check_parameters[index].timeout = (*p).timeout ;
        resp.result_check_parameters[index].out_of_times = (*p).out_of_times ;
        resp.result_check_parameters[index].update_time = (*p).update_time ;
        //ROS_INFO("v_set_finddata_MsgType_resp ===%f %d=======",resp.result_check_parameters[index].timeout,resp.result_check_parameters[index].out_of_times);
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
db_tb_error_type module_check_parameters::v_table_data_check_req(type_check_parameters_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_check_parameters> msg_data = boost::make_shared<type_check_parameters>();
    msg_data->primary_id = req.req_check_parameters.primary_id ; 
    msg_data->unique_code = req.req_check_parameters.unique_code ; 
    msg_data->base_name = req.req_check_parameters.base_name ; 
    msg_data->out_of_times = req.req_check_parameters.out_of_times ; 
    msg_data->timeout = req.req_check_parameters.timeout ; 
    msg_data->update_time = req.req_check_parameters.update_time ; 
    //ROS_INFO("v_set_finddata_MsgType_resp ===%f %d=======",msg_data->timeout,msg_data->out_of_times);


    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_check_parameters::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_check_parameters_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_check_parameters::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_check_parameters>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_check_parameters::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;  
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_check_parameters::v_check_unique_code_exist(type_check_parameters_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_check_parameters.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : pid_ctrl_parameters                                       **
//****************************************************************************
//------------------------------------------------------------------------------
module_pid_ctrl_parameters::module_pid_ctrl_parameters(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_pid_ctrl_parameters,type_pid_ctrl_parameters_req,type_pid_ctrl_parameters_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_pid_ctrl_parameters::~module_pid_ctrl_parameters() 
{
   
}
//------------------------------------------------------- 
bool module_pid_ctrl_parameters::is_search_key_Exist(const boost::shared_ptr<type_pid_ctrl_parameters> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_pid_ctrl_parameters_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else
        if(F_dynamicsearch_type == edynamic_pid_ctrl_parameters_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_pid_ctrl_parameters::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_pid_ctrl_parameters> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_pid_ctrl_parameters>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_pid_ctrl_parameters::is_search_key_Exist,this,std::placeholders::_1));   
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
                    (*it)->target = (*_data).target ;
                    (*it)->tolerance = (*_data).tolerance ;
                    (*it)->min_bound = (*_data).min_bound ;
                    (*it)->max_bound = (*_data).max_bound ;
                    (*it)->d_KP = (*_data).d_KP ;
                    (*it)->d_KI = (*_data).d_KI ;
                    (*it)->d_KD = (*_data).d_KD ;
                    (*it)->b_compensation = (*_data).b_compensation ;
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
bool module_pid_ctrl_parameters::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_pid_ctrl_parameters_req &req,const boost::shared_ptr<type_pid_ctrl_parameters> &msg_data)
{
    msg_data->primary_id = req.req_pid_ctrl_parameters.primary_id ; 
    msg_data->unique_code = req.req_pid_ctrl_parameters.unique_code ; 
    msg_data->base_name = req.req_pid_ctrl_parameters.base_name ; 
    msg_data->target = req.req_pid_ctrl_parameters.target ; 
    msg_data->tolerance = req.req_pid_ctrl_parameters.tolerance ; 
    msg_data->min_bound = req.req_pid_ctrl_parameters.min_bound ;  
    msg_data->max_bound = req.req_pid_ctrl_parameters.max_bound ; 
    msg_data->d_KP = req.req_pid_ctrl_parameters.d_KP ; 
    msg_data->d_KI = req.req_pid_ctrl_parameters.d_KI ; 
    msg_data->d_KD = req.req_pid_ctrl_parameters.d_KD ; 
    msg_data->b_compensation = req.req_pid_ctrl_parameters.b_compensation ; 
    msg_data->update_time = req.req_pid_ctrl_parameters.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_pid_ctrl_parameters::table_data_checkinput(const boost::shared_ptr<type_pid_ctrl_parameters> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_pid_ctrl_parameters::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_pid_ctrl_parameters_search_base_name) || (_type > (int)edynamic_pid_ctrl_parameters_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_pid_ctrl_parameters_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_pid_ctrl_parameters> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_pid_ctrl_parameters_search_base_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_pid_ctrl_parameters_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_pid_ctrl_parameters::v_set_finddata_MsgType_resp(type_pid_ctrl_parameters_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_pid_ctrl_parameters.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_pid_ctrl_parameters> p, find_results_vector){
        resp.result_pid_ctrl_parameters[index].primary_id = (*p).primary_id ;
        resp.result_pid_ctrl_parameters[index].unique_code = (*p).unique_code ;
        resp.result_pid_ctrl_parameters[index].base_name = (*p).base_name ;
        resp.result_pid_ctrl_parameters[index].target = (*p).target ;
        resp.result_pid_ctrl_parameters[index].tolerance = (*p).tolerance ;
        resp.result_pid_ctrl_parameters[index].min_bound = (*p).min_bound ;
        resp.result_pid_ctrl_parameters[index].max_bound = (*p).max_bound ;
        resp.result_pid_ctrl_parameters[index].d_KP = (*p).d_KP ;
        resp.result_pid_ctrl_parameters[index].d_KI = (*p).d_KI ;
        resp.result_pid_ctrl_parameters[index].d_KD = (*p).d_KD ;
        resp.result_pid_ctrl_parameters[index].b_compensation = (*p).b_compensation ;
        resp.result_pid_ctrl_parameters[index].update_time = (*p).update_time ;
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
db_tb_error_type module_pid_ctrl_parameters::v_table_data_check_req(type_pid_ctrl_parameters_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_pid_ctrl_parameters> msg_data = boost::make_shared<type_pid_ctrl_parameters>();
    msg_data->primary_id = req.req_pid_ctrl_parameters.primary_id ; 
    msg_data->unique_code = req.req_pid_ctrl_parameters.unique_code ; 
    msg_data->base_name = req.req_pid_ctrl_parameters.base_name ; 
    msg_data->target = req.req_pid_ctrl_parameters.target ; 
    msg_data->tolerance = req.req_pid_ctrl_parameters.tolerance ; 
    msg_data->min_bound = req.req_pid_ctrl_parameters.min_bound ; 
    msg_data->max_bound = req.req_pid_ctrl_parameters.max_bound ; 
    msg_data->d_KP = req.req_pid_ctrl_parameters.d_KP ; 
    msg_data->d_KI = req.req_pid_ctrl_parameters.d_KI ; 
    msg_data->d_KD = req.req_pid_ctrl_parameters.d_KD ; 
    msg_data->b_compensation = req.req_pid_ctrl_parameters.b_compensation ; 
    msg_data->update_time = req.req_pid_ctrl_parameters.update_time ;

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_pid_ctrl_parameters::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_pid_ctrl_parameters_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_pid_ctrl_parameters::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_pid_ctrl_parameters>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_pid_ctrl_parameters::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_pid_ctrl_parameters::v_check_unique_code_exist(type_pid_ctrl_parameters_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_pid_ctrl_parameters.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : targer_pos2d_parameters                                   **
//****************************************************************************
//------------------------------------------------------------------------------
module_targer_pos2d_parameters::module_targer_pos2d_parameters(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_targer_pos2d_parameters,type_targer_pos2d_parameters_req,type_targer_pos2d_parameters_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_targer_pos2d_parameters::~module_targer_pos2d_parameters() 
{
   
}
//------------------------------------------------------- 
bool module_targer_pos2d_parameters::is_search_key_Exist(const boost::shared_ptr<type_targer_pos2d_parameters> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_targer_pos2d_parameters_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else
        if(F_dynamicsearch_type == edynamic_targer_pos2d_parameters_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_targer_pos2d_parameters::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_targer_pos2d_parameters> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_targer_pos2d_parameters>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_targer_pos2d_parameters::is_search_key_Exist,this,std::placeholders::_1));   
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
                    (*it)->pos_x = (*_data).pos_x ;
                    (*it)->pos_y = (*_data).pos_y ;
                    (*it)->theta = (*_data).theta ;
                    (*it)->rotate_flag = (*_data).rotate_flag ;
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
bool module_targer_pos2d_parameters::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_targer_pos2d_parameters_req &req,const boost::shared_ptr<type_targer_pos2d_parameters> &msg_data)
{
    msg_data->primary_id = req.req_targer_pos2d_parameters.primary_id ; 
    msg_data->unique_code = req.req_targer_pos2d_parameters.unique_code ; 
    msg_data->base_name = req.req_targer_pos2d_parameters.base_name ; 
    msg_data->pos_x = req.req_targer_pos2d_parameters.pos_x ; 
    msg_data->pos_y = req.req_targer_pos2d_parameters.pos_y ; 
    msg_data->theta = req.req_targer_pos2d_parameters.theta ; 
    msg_data->rotate_flag = req.req_targer_pos2d_parameters.rotate_flag ;
    msg_data->update_time = req.req_targer_pos2d_parameters.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_targer_pos2d_parameters::table_data_checkinput(const boost::shared_ptr<type_targer_pos2d_parameters> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_targer_pos2d_parameters::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_targer_pos2d_parameters_search_base_name) || (_type > (int)edynamic_targer_pos2d_parameters_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_targer_pos2d_parameters_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_targer_pos2d_parameters> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_targer_pos2d_parameters_search_base_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_targer_pos2d_parameters_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_targer_pos2d_parameters::v_set_finddata_MsgType_resp(type_targer_pos2d_parameters_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_targer_pos2d_parameters.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_targer_pos2d_parameters> p, find_results_vector){
        resp.result_targer_pos2d_parameters[index].primary_id = (*p).primary_id ;
        resp.result_targer_pos2d_parameters[index].unique_code = (*p).unique_code ;
        resp.result_targer_pos2d_parameters[index].base_name = (*p).base_name ;
        resp.result_targer_pos2d_parameters[index].pos_x = (*p).pos_x ;
        resp.result_targer_pos2d_parameters[index].pos_y = (*p).pos_y ;
        resp.result_targer_pos2d_parameters[index].theta = (*p).theta ;
        resp.result_targer_pos2d_parameters[index].rotate_flag = (*p).rotate_flag ;
        resp.result_targer_pos2d_parameters[index].update_time = (*p).update_time ;
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
db_tb_error_type module_targer_pos2d_parameters::v_table_data_check_req(type_targer_pos2d_parameters_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_targer_pos2d_parameters> msg_data = boost::make_shared<type_targer_pos2d_parameters>();
    msg_data->primary_id = req.req_targer_pos2d_parameters.primary_id ; 
    msg_data->unique_code = req.req_targer_pos2d_parameters.unique_code ; 
    msg_data->base_name = req.req_targer_pos2d_parameters.base_name ; 
    msg_data->pos_x = req.req_targer_pos2d_parameters.pos_x ; 
    msg_data->pos_y = req.req_targer_pos2d_parameters.pos_y ; 
    msg_data->theta = req.req_targer_pos2d_parameters.theta ; 
    msg_data->rotate_flag = req.req_targer_pos2d_parameters.rotate_flag ; 
    msg_data->update_time = req.req_targer_pos2d_parameters.update_time ;

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_targer_pos2d_parameters::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_targer_pos2d_parameters_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_targer_pos2d_parameters::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_targer_pos2d_parameters>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_targer_pos2d_parameters::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_targer_pos2d_parameters::v_check_unique_code_exist(type_targer_pos2d_parameters_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_targer_pos2d_parameters.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : talarmcode_parameters                                     **
//****************************************************************************
//------------------------------------------------------------------------------
module_alarmcode_parameters::module_alarmcode_parameters(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_alarmcode_parameters,type_alarmcode_parameters_req,type_alarmcode_parameters_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_alarmcode_parameters::~module_alarmcode_parameters() 
{
   
}
//------------------------------------------------------- 
bool module_alarmcode_parameters::is_search_key_Exist(const boost::shared_ptr<type_alarmcode_parameters> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_alarmcode_parameters_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else
        if(F_dynamicsearch_type == edynamic_alarmcode_parameters_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_alarmcode_parameters::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_alarmcode_parameters> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_alarmcode_parameters>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_alarmcode_parameters::is_search_key_Exist,this,std::placeholders::_1));   
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
                    (*it)->alarm_level = (*_data).alarm_level ;
                    (*it)->alarm_desc_eng = (*_data).alarm_desc_eng ;
                    (*it)->alarm_desc_tc = (*_data).alarm_desc_tc ;
                    (*it)->alarm_desc_sc = (*_data).alarm_desc_sc ;
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
bool module_alarmcode_parameters::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_alarmcode_parameters_req &req,const boost::shared_ptr<type_alarmcode_parameters> &msg_data)
{
    msg_data->primary_id = req.req_alarmcode_parameters.primary_id ; 
    msg_data->unique_code = req.req_alarmcode_parameters.unique_code ; 
    msg_data->base_name = req.req_alarmcode_parameters.base_name ; 
    msg_data->alarm_level = req.req_alarmcode_parameters.alarm_level ; 
    msg_data->alarm_desc_eng = req.req_alarmcode_parameters.alarm_desc_eng ; 
    msg_data->alarm_desc_tc = req.req_alarmcode_parameters.alarm_desc_tc ; 
    msg_data->alarm_desc_sc = req.req_alarmcode_parameters.alarm_desc_sc ;
    msg_data->update_time = req.req_alarmcode_parameters.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_alarmcode_parameters::table_data_checkinput(const boost::shared_ptr<type_alarmcode_parameters> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_alarmcode_parameters::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_alarmcode_parameters_search_base_name) || (_type > (int)edynamic_alarmcode_parameters_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_alarmcode_parameters_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_alarmcode_parameters> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_alarmcode_parameters_search_base_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_alarmcode_parameters_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_alarmcode_parameters::v_set_finddata_MsgType_resp(type_alarmcode_parameters_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_alarmcode_parameters.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_alarmcode_parameters> p, find_results_vector){
        resp.result_alarmcode_parameters[index].primary_id = (*p).primary_id ;
        resp.result_alarmcode_parameters[index].unique_code = (*p).unique_code ;
        resp.result_alarmcode_parameters[index].base_name = (*p).base_name ;
        resp.result_alarmcode_parameters[index].alarm_level = (*p).alarm_level ;
        resp.result_alarmcode_parameters[index].alarm_desc_eng = (*p).alarm_desc_eng ;
        resp.result_alarmcode_parameters[index].alarm_desc_tc = (*p).alarm_desc_tc ;
        resp.result_alarmcode_parameters[index].alarm_desc_sc = (*p).alarm_desc_sc ;
        resp.result_alarmcode_parameters[index].update_time = (*p).update_time ;
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
db_tb_error_type module_alarmcode_parameters::v_table_data_check_req(type_alarmcode_parameters_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_alarmcode_parameters> msg_data = boost::make_shared<type_alarmcode_parameters>();
    msg_data->primary_id = req.req_alarmcode_parameters.primary_id ; 
    msg_data->unique_code = req.req_alarmcode_parameters.unique_code ; 
    msg_data->base_name = req.req_alarmcode_parameters.base_name ; 
    msg_data->alarm_level = req.req_alarmcode_parameters.alarm_level ; 
    msg_data->alarm_desc_eng = req.req_alarmcode_parameters.alarm_desc_eng ; 
    msg_data->alarm_desc_tc = req.req_alarmcode_parameters.alarm_desc_tc ; 
    msg_data->alarm_desc_sc = req.req_alarmcode_parameters.alarm_desc_sc ; 
    msg_data->update_time = req.req_alarmcode_parameters.update_time ;

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_alarmcode_parameters::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_alarmcode_parameters_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_alarmcode_parameters::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_alarmcode_parameters>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_alarmcode_parameters::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_alarmcode_parameters::v_check_unique_code_exist(type_alarmcode_parameters_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_alarmcode_parameters.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : operatecode_parameters                                    **
//****************************************************************************
//------------------------------------------------------------------------------
module_operatecode_parameters::module_operatecode_parameters(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_operatecode_parameters,type_operatecode_parameters_req,type_operatecode_parameters_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_operatecode_parameters::~module_operatecode_parameters() 
{
   
}
//------------------------------------------------------- 
bool module_operatecode_parameters::is_search_key_Exist(const boost::shared_ptr<type_operatecode_parameters> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_operatecode_parameters_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else
        if(F_dynamicsearch_type == edynamic_operatecode_parameters_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_operatecode_parameters::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_operatecode_parameters> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_operatecode_parameters>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_operatecode_parameters::is_search_key_Exist,this,std::placeholders::_1));   
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
                    (*it)->operate_level = (*_data).operate_level ;
                    (*it)->operate_desc_eng = (*_data).operate_desc_eng ;
                    (*it)->operate_desc_tc = (*_data).operate_desc_tc ;
                    (*it)->operate_desc_sc = (*_data).operate_desc_sc ;
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
bool module_operatecode_parameters::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_operatecode_parameters_req &req,const boost::shared_ptr<type_operatecode_parameters> &msg_data)
{
    msg_data->primary_id = req.req_operatecode_parameters.primary_id ; 
    msg_data->unique_code = req.req_operatecode_parameters.unique_code ; 
    msg_data->base_name = req.req_operatecode_parameters.base_name ; 
    msg_data->operate_level = req.req_operatecode_parameters.operate_level ; 
    msg_data->operate_desc_eng = req.req_operatecode_parameters.operate_desc_eng ; 
    msg_data->operate_desc_tc = req.req_operatecode_parameters.operate_desc_tc ; 
    msg_data->operate_desc_sc = req.req_operatecode_parameters.operate_desc_sc ;
    msg_data->update_time = req.req_operatecode_parameters.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_operatecode_parameters::table_data_checkinput(const boost::shared_ptr<type_operatecode_parameters> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_operatecode_parameters::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_operatecode_parameters_search_base_name) || (_type > (int)edynamic_operatecode_parameters_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_operatecode_parameters_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_operatecode_parameters> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_operatecode_parameters_search_base_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_operatecode_parameters_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_operatecode_parameters::v_set_finddata_MsgType_resp(type_operatecode_parameters_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_operatecode_parameters.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_operatecode_parameters> p, find_results_vector){
        resp.result_operatecode_parameters[index].primary_id = (*p).primary_id ;
        resp.result_operatecode_parameters[index].unique_code = (*p).unique_code ;
        resp.result_operatecode_parameters[index].base_name = (*p).base_name ;
        resp.result_operatecode_parameters[index].operate_level = (*p).operate_level ;
        resp.result_operatecode_parameters[index].operate_desc_eng = (*p).operate_desc_eng ;
        resp.result_operatecode_parameters[index].operate_desc_tc = (*p).operate_desc_tc ;
        resp.result_operatecode_parameters[index].operate_desc_sc = (*p).operate_desc_sc ;
        resp.result_operatecode_parameters[index].update_time = (*p).update_time ;
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
db_tb_error_type module_operatecode_parameters::v_table_data_check_req(type_operatecode_parameters_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_operatecode_parameters> msg_data = boost::make_shared<type_operatecode_parameters>();
    msg_data->primary_id = req.req_operatecode_parameters.primary_id ; 
    msg_data->unique_code = req.req_operatecode_parameters.unique_code ; 
    msg_data->base_name = req.req_operatecode_parameters.base_name ; 
    msg_data->operate_level = req.req_operatecode_parameters.operate_level ; 
    msg_data->operate_desc_eng = req.req_operatecode_parameters.operate_desc_eng ; 
    msg_data->operate_desc_tc = req.req_operatecode_parameters.operate_desc_tc ; 
    msg_data->operate_desc_sc = req.req_operatecode_parameters.operate_desc_sc ; 
    msg_data->update_time = req.req_operatecode_parameters.update_time ;

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_operatecode_parameters::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_operatecode_parameters_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_operatecode_parameters::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_operatecode_parameters>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_operatecode_parameters::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_operatecode_parameters::v_check_unique_code_exist(type_operatecode_parameters_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_operatecode_parameters.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : car_alarm_history                                         **
//****************************************************************************
//------------------------------------------------------------------------------
module_car_alarm_history::module_car_alarm_history(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_car_alarm_history,type_car_alarm_history_req,type_car_alarm_history_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_car_alarm_history::~module_car_alarm_history() 
{
   
}
//------------------------------------------------------- 
bool module_car_alarm_history::is_search_key_Exist(const boost::shared_ptr<type_car_alarm_history> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_car_alarm_history_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else
        if(F_dynamicsearch_type == edynamic_car_alarm_history_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_car_alarm_history::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_car_alarm_history> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_car_alarm_history>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_car_alarm_history::is_search_key_Exist,this,std::placeholders::_1));   
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
                    (*it)->alarm_remark = (*_data).alarm_remark ;
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
bool module_car_alarm_history::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_car_alarm_history_req &req,const boost::shared_ptr<type_car_alarm_history> &msg_data)
{
    msg_data->primary_id = req.req_car_alarm_history.primary_id ; 
    msg_data->unique_code = req.req_car_alarm_history.unique_code ; 
    msg_data->base_name = req.req_car_alarm_history.base_name ; 
    msg_data->occur_time = req.req_car_alarm_history.occur_time ; 
    msg_data->alarm_remark = req.req_car_alarm_history.alarm_remark ; 
    msg_data->update_time = req.req_car_alarm_history.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_car_alarm_history::table_data_checkinput(const boost::shared_ptr<type_car_alarm_history> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_car_alarm_history::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_car_alarm_history_search_base_name) || (_type > (int)edynamic_car_alarm_history_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_car_alarm_history_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_car_alarm_history> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_car_alarm_history_search_base_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_car_alarm_history_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_car_alarm_history::v_set_finddata_MsgType_resp(type_car_alarm_history_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_car_alarm_history.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_car_alarm_history> p, find_results_vector){
        resp.result_car_alarm_history[index].primary_id = (*p).primary_id ;
        resp.result_car_alarm_history[index].unique_code = (*p).unique_code ;
        resp.result_car_alarm_history[index].base_name = (*p).base_name ;
        resp.result_car_alarm_history[index].occur_time = (*p).occur_time ;
        resp.result_car_alarm_history[index].alarm_remark = (*p).alarm_remark ;
        resp.result_car_alarm_history[index].update_time = (*p).update_time ;
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
db_tb_error_type module_car_alarm_history::v_table_data_check_req(type_car_alarm_history_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_car_alarm_history> msg_data = boost::make_shared<type_car_alarm_history>();
    msg_data->primary_id = req.req_car_alarm_history.primary_id ; 
    msg_data->unique_code = req.req_car_alarm_history.base_name ; 
    msg_data->occur_time = req.req_car_alarm_history.occur_time ; 
    msg_data->alarm_remark = req.req_car_alarm_history.alarm_remark ; 
    msg_data->update_time = req.req_car_alarm_history.update_time ;

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_car_alarm_history::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_car_alarm_history_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_car_alarm_history::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_car_alarm_history>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_car_alarm_history::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_car_alarm_history::v_check_unique_code_exist(type_car_alarm_history_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_car_alarm_history.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : car_operate_history                                       **
//****************************************************************************
//------------------------------------------------------------------------------
module_car_operate_history::module_car_operate_history(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_car_operate_history,type_car_operate_history_req,type_car_operate_history_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_car_operate_history::~module_car_operate_history() 
{
   
}
//------------------------------------------------------- 
bool module_car_operate_history::is_search_key_Exist(const boost::shared_ptr<type_car_operate_history> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_car_operate_history_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else
        if(F_dynamicsearch_type == edynamic_car_operate_history_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_car_operate_history::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_car_operate_history> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_car_operate_history>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_car_operate_history::is_search_key_Exist,this,std::placeholders::_1));   
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
                    (*it)->alarm_remark = (*_data).alarm_remark ;
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
bool module_car_operate_history::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_car_operate_history_req &req,const boost::shared_ptr<type_car_operate_history> &msg_data)
{
    msg_data->primary_id = req.req_car_operate_history.primary_id ; 
    msg_data->unique_code = req.req_car_operate_history.unique_code ; 
    msg_data->base_name = req.req_car_operate_history.base_name ; 
    msg_data->occur_time = req.req_car_operate_history.occur_time ; 
    msg_data->alarm_remark = req.req_car_operate_history.alarm_remark ; 
    msg_data->update_time = req.req_car_operate_history.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_car_operate_history::table_data_checkinput(const boost::shared_ptr<type_car_operate_history> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_car_operate_history::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_car_operate_history_search_base_name) || (_type > (int)edynamic_car_operate_history_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_car_operate_history_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_car_operate_history> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_car_operate_history_search_base_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_car_operate_history_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_car_operate_history::v_set_finddata_MsgType_resp(type_car_operate_history_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_car_operate_history.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_car_operate_history> p, find_results_vector){
        resp.result_car_operate_history[index].primary_id = (*p).primary_id ;
        resp.result_car_operate_history[index].unique_code = (*p).unique_code ;
        resp.result_car_operate_history[index].base_name = (*p).base_name ;
        resp.result_car_operate_history[index].occur_time = (*p).occur_time ;
        resp.result_car_operate_history[index].alarm_remark = (*p).alarm_remark ;
        resp.result_car_operate_history[index].update_time = (*p).update_time ;
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
db_tb_error_type module_car_operate_history::v_table_data_check_req(type_car_operate_history_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_car_operate_history> msg_data = boost::make_shared<type_car_operate_history>();
    msg_data->primary_id = req.req_car_operate_history.primary_id ; 
    msg_data->unique_code = req.req_car_operate_history.base_name ; 
    msg_data->occur_time = req.req_car_operate_history.occur_time ; 
    msg_data->alarm_remark = req.req_car_operate_history.alarm_remark ; 
    msg_data->update_time = req.req_car_operate_history.update_time ;

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_car_operate_history::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_car_operate_history_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_car_operate_history::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_car_operate_history>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_car_operate_history::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_car_operate_history::v_check_unique_code_exist(type_car_operate_history_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_car_operate_history.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//----------------------------------------------------------------------------
//****************************************************************************
//** table name : action_function_parameters                                **
//****************************************************************************
//------------------------------------------------------------------------------
module_action_function_parameters::module_action_function_parameters(ros::NodeHandle &nh,std::string tablename) :  
                      table_mongodbstore_client<type_action_function_parameters,type_action_function_parameters_req,type_action_function_parameters_resp>(nh,tablename), 
                      nh_(nh),tbname_(tablename) 
{
    //-- run server_service ----
    db_table_run_srvservice();    
}
//-----------------------------------------------------------------------------
module_action_function_parameters::~module_action_function_parameters() 
{
   
}
//------------------------------------------------------- 
bool module_action_function_parameters::is_search_key_Exist(const boost::shared_ptr<type_action_function_parameters> &_iter)
{
    bool _result = false ;
    if((F_search_type == edb_tb_search_unique_code) || (F_search_type == edb_tb_search_all))	
        _result = (_iter->unique_code == search_keydata);
    else if(F_search_type == edb_tb_search_primary_id)	
        _result = (_iter->primary_id == search_keydata);
    else if(F_search_type == edb_tb_search_special){
        if(F_dynamicsearch_type == edynamic_action_function_parameters_search_base_name)
            _result = (_iter->base_name == search_keydata);
        else
        if(F_dynamicsearch_type == edynamic_action_function_parameters_search_uptime)
             _result = (_iter->update_time == search_keydata);
    }
    return _result; 	
}
//-----------------------------------------------------------------------------
bool module_action_function_parameters::table_data_Update(db_tb_edit_type _type,db_tb_error_type &error_type,const boost::shared_ptr<type_action_function_parameters> &_data)
{
    error_type = edb_tb_err_type_none ;
    bool bRet = (_type == edb_tb_edit_add) || (_type == edb_tb_edit_modify);
    if(bRet){ 
        search_keydata = (*_data).unique_code ;
        F_search_type = edb_tb_search_unique_code ;

        vector< boost::shared_ptr<type_action_function_parameters>>::iterator it;
        it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                        std::bind(&module_action_function_parameters::is_search_key_Exist,this,std::placeholders::_1));   
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
                    (*it)->function_level = (*_data).function_level ;
                    (*it)->function_ac_name = (*_data).function_ac_name ;
                    (*it)->function_desc_eng = (*_data).function_desc_eng ;
                    (*it)->function_desc_tc = (*_data).function_desc_tc ;
                    (*it)->function_desc_sc = (*_data).function_desc_sc ;
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
bool module_action_function_parameters::v_srv_msg_transfer_update(db_tb_edit_type _type,db_tb_error_type &error_type,
                                                     type_action_function_parameters_req &req,const boost::shared_ptr<type_action_function_parameters> &msg_data)
{
    msg_data->primary_id = req.req_action_function_parameters.primary_id ; 
    msg_data->unique_code = req.req_action_function_parameters.unique_code ; 
    msg_data->base_name = req.req_action_function_parameters.base_name ; 
    msg_data->function_level = req.req_action_function_parameters.function_level ; 
    msg_data->function_ac_name = req.req_action_function_parameters.function_ac_name ; 
    msg_data->function_desc_eng = req.req_action_function_parameters.function_desc_eng ; 
    msg_data->function_desc_tc = req.req_action_function_parameters.function_desc_tc ; 
    msg_data->function_desc_sc = req.req_action_function_parameters.function_desc_sc ;
    msg_data->update_time = req.req_action_function_parameters.update_time ;  

    bool bRet = table_data_Update(_type,error_type,msg_data) ;
    _update_primary_id = msg_data->primary_id ;
    _update_updatetime = msg_data->update_time ;

    return bRet ;
}
//------------------------------------------------------- 
db_tb_error_type module_action_function_parameters::table_data_checkinput(const boost::shared_ptr<type_action_function_parameters> &_data)
{
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).unique_code.empty()){
        eRet = edb_tb_err_type_empty ; 
    }  
    return eRet ; 
}
//------------------------------------------------------- 
bool module_action_function_parameters::v_db_data_query_opt_process(std::string opt_index,std::string param_low,std::string param_up,db_tb_error_type &_error_type)
{
    bool bRet = true ;
    int _type = strtoint(opt_index,-1);	//-- search type			
    if((_type < (int)edynamic_action_function_parameters_search_base_name) || (_type > (int)edynamic_action_function_parameters_search_uptime) || 
        param_low.empty() || param_up.empty()){
        _error_type = edb_tb_err_type_searchparam ;	// error code for search_type-error(query_base_index)
        return bRet;
    }    
    //------------------
    F_dynamicsearch_type = (dynamic_action_function_parameters_search_type)_type ;
    search_dynamic_map.clear();
    BOOST_FOREACH( boost::shared_ptr<type_action_function_parameters> p,  ptr_results_vector)
    {
        if(F_dynamicsearch_type == edynamic_action_function_parameters_search_base_name){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).primary_id));
        }    
        else if(F_dynamicsearch_type == edynamic_action_function_parameters_search_uptime){
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).primary_id));
        }        
    }
    return bRet ;
}
//------------------------------------------------------- 
bool module_action_function_parameters::v_set_finddata_MsgType_resp(type_action_function_parameters_resp &resp,db_tb_error_type error_type)
{
    int counter = find_results_vector.size() ;
    resp.result_action_function_parameters.resize(counter);
    //----------------------
    int index = 0 ;
    BOOST_FOREACH( boost::shared_ptr<type_action_function_parameters> p, find_results_vector){
        resp.result_action_function_parameters[index].primary_id = (*p).primary_id ;
        resp.result_action_function_parameters[index].unique_code = (*p).unique_code ;
        resp.result_action_function_parameters[index].base_name = (*p).base_name ;
        resp.result_action_function_parameters[index].function_level = (*p).function_level ;
        resp.result_action_function_parameters[index].function_ac_name = (*p).function_ac_name ;
        resp.result_action_function_parameters[index].function_desc_eng = (*p).function_desc_eng ;
        resp.result_action_function_parameters[index].function_desc_tc = (*p).function_desc_tc ;
        resp.result_action_function_parameters[index].function_desc_sc = (*p).function_desc_sc ;
        resp.result_action_function_parameters[index].update_time = (*p).update_time ;
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
db_tb_error_type module_action_function_parameters::v_table_data_check_req(type_action_function_parameters_req &req)
{
    //boost::shared_ptr<type_tbcell_agv_main> msg_data(new type_tbcell_agv_main()) ;
    boost::shared_ptr<type_action_function_parameters> msg_data = boost::make_shared<type_action_function_parameters>();
    msg_data->primary_id = req.req_action_function_parameters.primary_id ; 
    msg_data->unique_code = req.req_action_function_parameters.base_name ; 
    msg_data->function_level = req.req_action_function_parameters.function_level ; 
    msg_data->function_ac_name = req.req_action_function_parameters.function_ac_name ; 
    msg_data->function_desc_eng = req.req_action_function_parameters.function_desc_eng ; 
    msg_data->function_desc_tc = req.req_action_function_parameters.function_desc_tc ; 
    msg_data->function_desc_sc = req.req_action_function_parameters.function_desc_sc ; 
    msg_data->update_time = req.req_action_function_parameters.update_time ;

    db_tb_error_type eRet = table_data_checkinput(msg_data);
    return eRet ; 
}
//------------------------------------------------------- 
bool module_action_function_parameters::v_special_table_srv_service(db_tb_edit_type _edit_type, std::string _opt_index, type_action_function_parameters_req &req)
{
    bool bRet = true ; 
    //-- Perform option search condition ---
    //--------------------------------------
    return bRet ; 
}
//-------------------------------------------------------
bool module_action_function_parameters::v_ptr_results_vector_find_if(std::string _sch_keydata,std::string _sub_sch_keydata,db_tb_search_type _search_type,int &rst_distance)
{
    search_keydata = _sch_keydata ;
    F_search_type = _search_type ;

    vector< boost::shared_ptr<type_action_function_parameters>>::iterator it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&module_action_function_parameters::is_search_key_Exist,this,std::placeholders::_1));  
    bool bRet = (it != ptr_results_vector.end());
    if(bRet){
        rst_distance = std::distance(ptr_results_vector.begin(), it); ;    
    }
    return bRet ;
}
//-------------------------------------------------------
bool module_action_function_parameters::v_check_unique_code_exist(type_action_function_parameters_req &req)
{
    int distance ;
    bool bexist = v_ptr_results_vector_find_if(req.req_action_function_parameters.unique_code,"",edb_tb_search_unique_code,distance);
    return bexist ;
}
//-------------------------------------------------------