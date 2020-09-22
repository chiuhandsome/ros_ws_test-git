#ifndef BASE_MONGODBSTORE_CLIENT_H
#define BASE_MONGODBSTORE_CLIENT_H
//----------------------------------------------------------------------------
#include <ros/ros.h>
#include <mongodb_store/message_store.h>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/foreach.hpp>
#include <boost/any.hpp>
//---------------------------------------------------------------------------
typedef enum {
	e_error_type_none = 0 , e_error_type_empty, e_error_type_int, e_error_type_param,e_error_type_indexkey,
	e_error_type_database
} tb_error_type;
//---------------------------------------------------------------------------
using namespace mongodb_store ;
using namespace std ;
//----------------------------------------------------------------------------
class base_mongodbstore_client
{
	private:
		ros::NodeHandle nh_ ;		
		std::string base_mongodb_tablename ;
	protected:
		//virtual void mapdata_modify(boost::any _iter,const boost::shared_ptr<MsgType>& _data) = 0 ; 
		//virtual void mapdata_modify(boost::any &_map,boost::any &_data) = 0 ; 
	public:
		base_mongodbstore_client(ros::NodeHandle &nh,std::string _tablename);	 
		~base_mongodbstore_client();
		//----------------------------
		MessageStoreProxy* base_mongodb ; 
		//----------------------------
		template<typename MsgType> 
		void database_refresh(vector< boost::shared_ptr<MsgType>> &ptr_vector_results)
		{
			ptr_vector_results.clear();
		    base_mongodb->query<MsgType>(ptr_vector_results) ;
		    /*BOOST_FOREACH( boost::shared_ptr<MsgType> p, ptr_vector_results)
		    {
			_mainmap.insert(std::pair<std::string, boost::shared_ptr<MsgType>>((*p).system_id,p));
		    }*/
		}
		//----------------------------		
		template<typename MsgType> 
		bool database_Insert(const boost::shared_ptr<MsgType> &_data)
		{ 
			//-- add to mongo db ---			
			(*_data).update_time = get_Now_LocalTime();  //-- from tools
			std::string _id = base_mongodb->insertNamed(base_mongodb_tablename, (*_data));
			(*_data).system_id = _id ;
			bool bAdd = base_mongodb->updateID(_id, (*_data));
			//--------------
			return bAdd ;
		}
		//----------------------------
		template<typename MsgType> 
		bool database_modify(const boost::shared_ptr<MsgType> & _data)
		{
			//-- modified mongodb ----
			(*_data).update_time = get_Now_LocalTime();
			std::string id = (*_data).system_id ;
			bool bModify = base_mongodb->updateID(id, (*_data)); 
			return bModify ;
		}
		//-----------------
		bool database_delete(std::string system_id)	;	
		std::string get_updatetime_data(std::string  updatetime_data,bool bupper = false);
};
//-----------------------------------------------------------------------------
#endif   
