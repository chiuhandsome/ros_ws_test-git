#ifndef ROS_CONTROLMODEL_H
#define ROS_CONTROLMODEL_H
//-----------------------------------------------------------------------------
typedef enum {
	edynamic_mcfunction_search_base_name = 0 , edynamic_mcfunction_search_uptime
}  dynamic_mcfunction_search_type;
//-----------------------------------------------------------------------------
#include <ros/ros.h>
#include <vector>
#include <cellctrl_control_msgs/cell_base_mcfunction.h>
#include <cellctrl_control_msgs/cell_base_mcfunction_cmd.h>
#include <ros_utility_tools/table_mongodbstore_client.h>
//#include <cellctrl_database_bridge/cellctrl_module_tables.h>
#include <ros/ros.h>
#include <mongodb_store/message_store.h>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/foreach.hpp>
#include <boost/any.hpp>
#include <QMainWindow>
#include <QObject>
#include <QWidget>
#include <QMessageBox>
//#include <thread>
//#include <condition_variable>
//-----------------------------------------------------------------------------
class ros_controlmodel  : public QObject
{
    Q_OBJECT
    //---------------------------------
    public:
        ros_controlmodel(ros::NodeHandle nh);
        ~ros_controlmodel();
        vector<boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction>> get_mcfunction_results() ;
        void get_mcfunction_req_updated(std::string &primary_id,std::string &updatetime) ;
        db_tb_error_type get_mcfunction_error_type() ;
        //void set_tbcell_mcfunction_flag(bool bFlag) ;
        //bool get_tbcell_mcfunction_flag() ;
        //std::condition_variable       	cltservice_send_cv;
		//std::mutex                    	cltservice_send_mtx;
        //elanguage_type_None=0, elanguage_type_E, elanguage_type_TC,elanguage_type_SC
        std::string get_error_desc(int lang_type,db_tb_error_type _type);
    //---------------------------------
    public slots:
        //--- declare tbcell_mcfunction_table -----
        void on_mcfunction_update_action(db_tb_edit_type _edit_type,
                                         const boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction> &_data); 
        void on_mcfunction_delete_action(std::string unique_code);
        void on_mcfunction_query_action(db_tb_search_type query_base,dynamic_mcfunction_search_type query_opt,
		                                 std::string search_param);
        void set_mcfunction_cltService(ros::ServiceClient &_cltService);
    //---------------------------------
    signals:    
        void mcfunction_update_Changed(db_tb_edit_type _edit_type,
                                         const boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction> &_data);
        void mcfunction_delete_Changed(std::string unique_code);
        void mcfunction_query_Changed(db_tb_search_type query_base,dynamic_mcfunction_search_type query_opt,
		                                 std::string search_param);
    //---------------------------------
    private:
        void Load_CntParameter() ;
        ros::NodeHandle nh_;
        //--- declare tbcell_mcfunction_table -----
        vector<boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction>> mcfunction_results;
		std::string tbname_mcfunction ;
        cellctrl_control_msgs::cell_base_mcfunction_cmd mcfunction_cmd_data ;
		ros::ServiceClient mcfunction_cltService ;
		std::string mcfunction_cltService_name ;
        db_tb_error_type mcfunction_error_type ;
        //bool tbcell_mcfunction_flag ;
        std::string _update_primary_id ,_update_updatetime  ;

        vector<std::string> err_type_desc_TC ;
		vector<std::string> err_type_desc_SC ;
		vector<std::string> err_type_desc_E ;
        void err_type_desc_initSet();
};
//-----------------------------------------------------------------------------
#endif // ROS_CONTROLMODEL_H
