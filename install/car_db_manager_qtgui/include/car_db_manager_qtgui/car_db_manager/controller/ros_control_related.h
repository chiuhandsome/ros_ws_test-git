#ifndef ROS_CONTROL_RELATED_H
#define ROS_CONTROL_RELATED_H
//-----------------------------------------------------------------------------
typedef enum {
	edynamic_work_sheet_main_search_base_name = 0 , edynamic_work_sheet_main_search_uptime
}  dynamic_work_sheet_main_search_type;
typedef enum {
	edynamic_work_sheet_items_search_base_name = 0 , edynamic_work_sheet_items_search_base_item_name, edynamic_work_sheet_items_search_uptime
}  dynamic_work_sheet_items_search_type;
//-----------------------------------------------------------------------------
#include <ros/ros.h>
#include <vector>
#include <car_db_manager_msgs/WorkSheetMain.h>
#include <car_db_manager_msgs/WorkSheetMainCmd.h>
#include <car_db_manager_msgs/WorkSheetItems.h>
#include <car_db_manager_msgs/WorkSheetItemsCmd.h>

#include <ros_utility_tools/table_mongodbstore_client.h>
#include <ros/ros.h>
#include <mongodb_store/message_store.h>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/foreach.hpp>
#include <boost/any.hpp>
#include <QMainWindow>
#include <QObject>
#include <QWidget>
#include <QMessageBox>
//---------------------------------
using type_work_sheet_main = car_db_manager_msgs::WorkSheetMain  ;
using type_work_sheet_main_cmd = car_db_manager_msgs::WorkSheetMainCmd  ;
using ptr_work_sheet_main = boost::shared_ptr<car_db_manager_msgs::WorkSheetMain>  ;

using type_work_sheet_items = car_db_manager_msgs::WorkSheetItems  ;
using type_work_sheet_items_cmd = car_db_manager_msgs::WorkSheetItemsCmd  ;
using ptr_work_sheet_items = boost::shared_ptr<car_db_manager_msgs::WorkSheetItems>  ;
//-----------------------------------------------------------------------------
class ros_control_related  : public QObject
{
    Q_OBJECT    
    //---------------------------------
    public:
        ros_control_related(ros::NodeHandle nh);
        ~ros_control_related();

        std::string get_error_desc(int lang_type,db_tb_error_type _type);
        //***********************************
        //**** table : work_sheet_main  ****   
        //***********************************    
        vector<ptr_work_sheet_main> get_work_sheet_main_results() ;
        void get_work_sheet_main_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_work_sheet_main_error_type() ;     
        //---------------------------------
        //**************************************
        //**** table : work_sheet_items     ****   
        //**************************************  
        vector<ptr_work_sheet_items> get_work_sheet_items_results() ;
        void get_work_sheet_items_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_work_sheet_items_error_type() ;
        //---------------------------------
        public slots:
            //***********************************
            //**** table : work_sheet_main   ****   
            //***********************************     
            void on_work_sheet_main_update_action(db_tb_edit_type _edit_type,const ptr_work_sheet_main &_data); 

            void on_work_sheet_main_delete_action(std::string unique_code);
            void on_work_sheet_main_query_action(db_tb_search_type query_base,dynamic_work_sheet_main_search_type query_opt,
                                            std::string search_param);
            void set_work_sheet_main_cltService(ros::ServiceClient &_cltService);

            //**************************************
            //**** table : work_sheet_items     ****   
            //**************************************  
            void on_work_sheet_items_update_action(db_tb_edit_type _edit_type,const ptr_work_sheet_items &_data); 
            void on_work_sheet_items_delete_action(std::string unique_code);
            void on_work_sheet_items_query_action(db_tb_search_type query_base,dynamic_work_sheet_items_search_type query_opt,
                                            std::string search_param);
            void set_work_sheet_items_cltService(ros::ServiceClient &_cltService);
        //---------------------------------
        signals:    
            //***********************************
            //**** table : work_sheet_main  ****   
            //***********************************      
            void work_sheet_main_update_Changed(db_tb_edit_type _edit_type,const ptr_work_sheet_main &_data);
            void work_sheet_main_delete_Changed(std::string unique_code);
            void work_sheet_main_query_Changed(db_tb_search_type query_base,dynamic_work_sheet_main_search_type query_opt,
                                            std::string search_param);
            //**************************************
            //**** table : work_sheet_items  ****   
            //**************************************
            void work_sheet_items_update_Changed(db_tb_edit_type _edit_type,const ptr_work_sheet_items &_data);
            void work_sheet_items_delete_Changed(std::string unique_code);
            void work_sheet_items_query_Changed(db_tb_search_type query_base,dynamic_work_sheet_items_search_type query_opt,
                                            std::string search_param);
    private:
        void Load_CntParameter() ;
        ros::NodeHandle nh_;

        //-------------------------------------------------
        std::string _update_primary_id ,_update_updatetime  ;
        vector<std::string> err_type_desc_TC ;
		vector<std::string> err_type_desc_SC ;
		vector<std::string> err_type_desc_E ;
        void err_type_desc_initSet();
        //***********************************
        //**** table : work_sheet_main  ****   
        //***********************************  
        vector<ptr_work_sheet_main> work_sheet_main_results;
		std::string tbname_work_sheet_main ;
        type_work_sheet_main_cmd work_sheet_main_cmd_data ;
		ros::ServiceClient work_sheet_main_cltService ;
		std::string work_sheet_main_cltService_name ;
        db_tb_error_type work_sheet_main_error_type ;
        //**************************************
        //**** table : work_sheet_items     ****   
        //**************************************  
        vector<ptr_work_sheet_items> work_sheet_items_results;
		std::string tbname_work_sheet_items ;
        type_work_sheet_items_cmd work_sheet_items_cmd_data ;
		ros::ServiceClient work_sheet_items_cltService ;
		std::string work_sheet_items_cltService_name ;
        db_tb_error_type work_sheet_items_error_type ;
        
};
//-----------------------------------------------------------------------------
#endif // ROS_CONTROLMODEL_H
