#include <table_mongodbstore_client.h>
//*****************************************************************************
//-----------------------------------------------------------------------------
//-- base_mongodbstore_client constructor  -----
/*template<typename MsgType,typename MsgType_req,typename MsgType_resp>
table_mongodbstore_client<MsgType,MsgType_req,MsgType_resp>::table_mongodbstore_client(ros::NodeHandle &nh,std::string tablename,bool def_code_flag)
{
    nh_ = nh ;
    _tablename = tablename ;
    using_def_code_flag = def_code_flag;
    F_search_type = edb_tb_search_base_code ;	
    base_mongodb = new MessageStoreProxy(nh_,_tablename);
}
//-----------------------------------------------------------------------------
//-- base_mongodbstore_client de-constructor ---------------
template<typename MsgType>
table_mongodbstore_client<MsgType>::~table_mongodbstore_client() 
{
    delete base_mongodb ;   
}
//-----------------------------------------------------------------------------
template<typename MsgType>
void table_mongodbstore_client<MsgType>::searchkey_map_erase(std::string base_code, std::string system_id)
{
    std::multimap<std::string, std::string>::iterator it,itlow,itup;
    itlow = searchkey_map.lower_bound (base_code);   
    itup = searchkey_map.upper_bound (base_code);    
    for (it=itlow; it!=itup; ++it){
        if(it->second == system_id)
            searchkey_map.erase (it);      
    }
}
//-----------------------------------------------------------------------------
template<typename MsgType>
void table_mongodbstore_client<MsgType>::db_table_refresh()
{
	ptr_results_vector.clear();
	base_mongodb->query<MsgType>(ptr_results_vector) ;
    if(using_def_code_flag){
        searchkey_map.clear();
        BOOST_FOREACH( boost::shared_ptr<MsgType> p, ptr_results_vector){
        	searchkey_map.insert(std::pair<std::string, std::string>((*p).base_code,(*p).system_id));
        }
    }
    else
        table_data_refresh();    //implement by its son-class
    
}
//-----------------------------------------------------------------------------
template<typename MsgType>
vector< boost::shared_ptr<MsgType>> table_mongodbstore_client<MsgType>::getdata_table_vector()
{
	return ptr_results_vector; 
}
//-----------------------------------------------------------------------------
template<typename MsgType>
bool table_mongodbstore_client<MsgType>::is_search_key_Exist(const boost::shared_ptr<MsgType> &_iter)
{
	bool _result = false ;
	if(F_search_type == edb_tb_search_base_code)	
		_result = (_iter->base_code == search_keydata);
	else if(F_search_type == edb_tb_search_base_name)	
		_result = (_iter->base_name == search_keydata);
	else if(F_search_type == edb_tb_search_system_id)	
		_result = (_iter->system_id == search_keydata);
	return _result; 
}
//------------------------------------------------------------------------------		
template<typename MsgType> 
bool table_mongodbstore_client<MsgType>::mongo_table_Insert(const boost::shared_ptr<MsgType> &_data)
{ 
    //-- add to mongo db ---			
    (*_data).update_time = get_Now_LocalTime();  //-- from tools
    std::string _id = base_mongodb->insertNamed(_tablename, (*_data));
    (*_data).system_id = _id ;
    bool bAdd = base_mongodb->updateID(_id, (*_data));
    //--------------
    return bAdd ;
}
//----------------------------------------------------------------------------
template<typename MsgType> 
bool table_mongodbstore_client<MsgType>::mongo_table_modify(const boost::shared_ptr<MsgType> & _data)
{
    //-- modified mongodb ----
    (*_data).update_time = get_Now_LocalTime();
    std::string id = (*_data).system_id ;
    bool bModify = base_mongodb->updateID(id, (*_data)); 
    return bModify ;
}
//-----------------------------------------------------------------------------
template<typename MsgType>
bool table_mongodbstore_client<MsgType>::db_table_Insert(const boost::shared_ptr<MsgType> &_data,db_tb_error_type &err_type)
{
	err_type = edb_tb_err_type_none ;
    search_keydata = (*_data).base_code ;
	F_search_type = edb_tb_search_base_code ;

	boost::shared_ptr<MsgType> it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&table_mongodbstore_client<MsgType>::is_search_key_Exist,this,std::placeholders::_1));	

    bool bAdd = (it == ptr_results_vector.end());
    if(bAdd){
        //-- mongoDB insert ----
        bAdd = mongo_table_Insert(_data);
        //-- insert data to ptr_results_vector and  searchkey_map  ----
        if(bAdd){
            if(using_def_code_flag){
                ptr_results_vector.emplace_back(_data);
                searchkey_map.insert(std::pair<std::string,std::string>((*_data).base_code,(*_data).system_id));
            }
            else
                table_data_Insert();    //implement by its son-class
        }
        else
            err_type = edb_tb_err_type_database ;
    }
    else
        err_type = edb_tb_err_type_indexkey ;
    
    return bAdd ;
    
}
//-----------------------------------------------------------------------------
template<typename MsgType>
bool table_mongodbstore_client<MsgType>::db_table_modify(const boost::shared_ptr<MsgType> &_data,db_tb_error_type &err_type)
{
    err_type = edb_tb_err_type_none ;
    search_keydata = (*_data).base_code ;
    F_search_type = edb_tb_search_base_code ;

	boost::shared_ptr<MsgType> it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&table_mongodbstore_client<MsgType>::is_search_key_Exist,this,std::placeholders::_1));	

    bool bModify = (it != ptr_results_vector.end());
    if(bModify){
        (*_data).system_id = (*it)->system_id ; 
        //-- mongoDB modify ----
        bModify = mongo_table_modify(_data) ;
        //-- ptr_results_vector modify ----
        if(bModify)
			table_data_modify(search_keydata);    //implement by its son-class
        else
            err_type = edb_tb_err_type_database ; 
    }
    else
        err_type = edb_tb_err_type_indexkey ;

    return bModify ;	
}
//-----------------------------------------------------------------------------
template<typename MsgType>
bool table_mongodbstore_client<MsgType>::db_table_delete(std::string base_code)
{  
    search_keydata = base_code ;
	F_search_type = edb_tb_search_base_code ;

	boost::shared_ptr<MsgType> it;
    it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&table_mongodbstore_client<MsgType>::is_search_key_Exist,this,std::placeholders::_1));	 
    bool bDelete = (it != ptr_results_vector.end());
    if(bDelete){
        //-- mongoDB delete ----
        std::string id = (*it)->system_id ;
        bDelete = base_mongodb->deleteID(id); ;//tb_mongo_store->deleteID(id);
        //-- ptr_results_vector delete ----
        if(bDelete){
            int distance = std::distance(ptr_results_vector.begin(), it);
			boost::shared_ptr<MsgType> it_d ;
            it_d = ptr_results_vector.begin() + distance; 
		    ptr_results_vector.erase(it_d);
            //-- find searchkey_map, and erase it  --
            searchkey_map_erase(base_code, id);
        }
    }  

    return bDelete ;
}
//-----------------------------------------------------------------------------
template<typename MsgType>
bool table_mongodbstore_client<MsgType>::db_table_query_base_code(std::string _code_low,std::string _code_up)
{
    if(_code_up.empty())
        _code_up = _code_low ;
    bool bQuery = !_code_up.empty() && !_code_low.empty() ;  
    if(bQuery){
        find_results_vector.clear();         
        std::multimap<std::string, std::string>::iterator it,itlow,itup;
        itlow = searchkey_map.lower_bound(_code_low);   
        itup = searchkey_map.upper_bound(_code_up);    
        for (it=itlow; it!=itup; ++it){
            //vector< boost::shared_ptr<MsgType>>::iterator iter ;
            std::string sch_id = it->second ;
            search_keydata = sch_id ;
			F_search_type = edb_tb_search_system_id ;
			boost::shared_ptr<MsgType> iter;
    		it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&table_mongodbstore_client<MsgType>::is_search_key_Exist,this,std::placeholders::_1));	 	 
            bool bFind = (iter != ptr_results_vector.end());
            if(bFind){
                //ROS_INFO((*iter)->system_id.c_str());
                find_results_vector.emplace_back(*iter);
            }
        }
    }
    return bQuery ;
}
//-----------------------------------------------------------------------------
template<typename MsgType>
vector< boost::shared_ptr<MsgType>> table_mongodbstore_client<MsgType>::get_find_results_vector()
{
    return find_results_vector ;
}
//-----------------------------------------------------------------------------
template<typename MsgType>
db_tb_error_type table_mongodbstore_client<MsgType>::check_db_table_in_data(boost::shared_ptr<MsgType> _data)
{    
    db_tb_error_type eRet = edb_tb_err_type_none ;   
    //-- alarm_code -- not empty --
    if((*_data).base_code.empty()){
        eRet = edb_tb_err_type_empty ; return eRet ; 
    }  
    //-- alarm_code -- not integral --
    //if(strtoint((*_data).alarm_level,-100) == -100){
    //    eRet = e_error_type_int ; return eRet ; 
    //}  
    //-- alarm_code -- not float --
    return eRet ; 
}
//-----------------------------------------------------------------------------
template<typename MsgType>
bool table_mongodbstore_client<MsgType>::db_table_query_dynamic(std::string param_low,std::string param_up)
{
    if(param_up.empty())
        param_up = param_low ;
    bool bQuery = !param_low.empty() && !param_up.empty() ;  
    if(bQuery){
        find_results_vector.clear();         
        std::multimap<std::string, std::string>::iterator it,itlow,itup;
        itlow = search_dynamic_map.lower_bound(param_low);   
        itup = search_dynamic_map.upper_bound(param_up);    
        for (it=itlow; it!=itup; ++it){
			std::string sch_id = it->second ;
            search_keydata = sch_id ;
			F_search_type = edb_tb_search_system_id ;

			boost::shared_ptr<MsgType> iter;
    		it = std::find_if (ptr_results_vector.begin(), ptr_results_vector.end(), 
                       std::bind(&table_mongodbstore_client<MsgType>::is_search_key_Exist,this,std::placeholders::_1));	 
            bool bFind = (iter != ptr_results_vector.end());
            if(bFind){
                find_results_vector.emplace_back(*iter);
            }
        }
    }
    return bQuery ;
}
//-----------------------------------------------------------------------------
template<typename MsgType>
void table_mongodbstore_client<MsgType>::search_dynamic_map_refresh()
{
    search_dynamic_map.clear();
    //-- search_dynamic_map refresh ----
    if(F_search_type == edb_tb_search_base_code)
        return ;
    //------------     
    BOOST_FOREACH( boost::shared_ptr<MsgType> p,  ptr_results_vector)
    {
        if(F_search_type == edb_tb_search_base_name)
            search_dynamic_map.insert(std::pair<std::string,std::string>((*p).base_name,(*p).system_id));
        //else if(F_alarmCode_search_type == e_search_alarmtime)
        //    search_dynamic_map.insert(std::pair<std::string,std::string>((*p).update_time,(*p).system_id));
    }
}
//-----------------------------------------------------------------------------
template<typename MsgType>
void table_mongodbstore_client<MsgType>::search_condition_set(db_tb_search_type _search_type,std::string search_key)
{
	F_search_type = _search_type ;
	search_keydata = search_key ; 

	search_dynamic_map_refresh();
    
}*/
//-----------------------------------------------------------------------------
