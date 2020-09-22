#ifndef FRMDB_RELATETABLE_H
#define FRMDB_RELATETABLE_H
//-----------------------------------------------------------------------------
#include <QWidget>
#include <QTableWidget>
#include <QKeyEvent>
#include <vector>
#include <QSettings>
#include "car_db_manager/qt_app_model.h"
#include "car_db_manager/controller/ros_control_related.h"
#include "car_db_manager/controller/ros_controlmodel.h"
#include "car_db_manager/project/project_definition.h"
//-----------------------------------------------------------------------------
enum erelatetb_type{erelatetb_worksheets};
enum erelatetb_sorttype{erelatetb_sort_code=0, erelatetb_sort_name , erelatetb_sort_update};
enum erelatetb_sort_item_type{erelatetb_sort_item_mission=0, erelatetb_sort_item_creat ,erelatetb_sort_item_exec_ser,
                              erelatetb_sort_item_pose ,erelatetb_sort_item_function, erelatetb_sort_item_update};
//-----------------------------------------------------------------------------
namespace Ui {
class frmdb_relateTable;
}
//-----------------------------------------------------------------------------
class frmdb_relateTable : public QWidget
{
    Q_OBJECT
    //-------------------------------------
    public:
        explicit frmdb_relateTable(qt_app_model* app_mode,QWidget *parent = 0);
        ~frmdb_relateTable();
        //*****************************************************************************
        //**  public area   --- fixed                                                **
        //*****************************************************************************
        void control_model_set(ros_control_related *controlmodel,ros_controlmodel* base_controlmodel);       
        //void form_tabletype_show(); 
        void form_table_type_show_m(); 
        void form_table_type_show_d(); 
        void formEdit_Show();
        //*****************************************************************************
        //**  public area  --- modify                                                **
        //*****************************************************************************        
        void parse_config_relatetb(erelatetb_type _type);        
        void table_dataShow();
    //-----------------------------------------------
    private slots:
        //*****************************************************************************
        //**  GUI Component : trigger .....  Fixed                                   **
        //*****************************************************************************
        void on_btn_close_clicked();           
        void on_btn_cancel_clicked();

        void on_btn_op_add_clicked();     
        void on_btn_op_modify_clicked();
        void on_btn_op_delete_clicked();
        void on_btn_op_inquire_clicked();
        void on_mast_tableWidget_clicked(const QModelIndex &index);
        void on_cbox_sort_cond_mast_currentIndexChanged(int index);

        void on_btn_op_add_d_clicked();
        void on_btn_op_modify_d_clicked();
        void on_btn_op_delete_d_clicked();
        void on_detail_tableWidget_clicked(const QModelIndex &index);        
        void on_cbox_sort_cond_detail_currentIndexChanged(int index);

        
        //*****************************************************************************
        //**  GUI Component : trigger .....  modify                                  **
        //*****************************************************************************
        void on_btn_confirm_clicked();
        void btn_search_confirm();
        void btn_search_cancel();

        void table_items_refresh(std::string filter_cond);        
        void on_cbox_dynamic_Key_0_id_activated(int index);
        void on_cbox_dynamic_Key_1_id_activated(int index);

    public slots:
        //void on_set_frmdb_basetable_enable(bool b_enable);
    //-----------------------------------------------
    signals:    
        //void frmdb_basetable_enable_Changed(bool b_enable);
    protected:
        //*****************************************************************************
        //**  GUI Component : trigger .....  Fixed                                   **
        //*****************************************************************************
        void keyPressEvent(QKeyEvent *);
        void keyReleaseEvent(QKeyEvent *);
    //-------------------------------------
    private:        
        Ui::frmdb_relateTable *ui;        
        qt_app_model* _app_mode ;
        ros_control_related* _controlmodel ;
        ros_controlmodel* _base_controlmodel ;
        //-- declare style_sheet ----
        QString label_style_enable , label_style_disable;
        QString labeltitle_style_enable, labeltitle_style_disable ;
        QString lineedit_style_enable , lineedit_style_disable ;
        QString groupbox_style_enable , groupbox_style_disable ;
        QString combobox_style_enable , combobox_style_disable ;
        //-- declare control-parameters ---
        erelatetb_type _relatetb_type ;
        int _fiels_num_m ;
        int _fiels_maxnum_m ;
        int _fiels_num_d ;
        int _fiels_maxnum_d ;
        QVector<QString> _fieldname_m_Vec_E;
        QVector<QString> _fieldname_m_Vec_TC;
        QVector<QString> _fieldname_m_Vec_SC;
        QVector<QString> _titlename_m_Vec_E;
        QVector<QString> _titlename_m_Vec_TC;
        QVector<QString> _titlename_m_Vec_SC;

        QVector<QString> _fieldname_d_Vec_E;
        QVector<QString> _fieldname_d_Vec_TC;
        QVector<QString> _fieldname_d_Vec_SC;
        QVector<QString> _titlename_d_Vec_E;
        QVector<QString> _titlename_d_Vec_TC;
        QVector<QString> _titlename_d_Vec_SC;
        QString config_filename;
        db_table_OP_type _table_m_OP_type ;
        db_table_OP_type _table_d_OP_type ;
        
        bool b_rowno_error_false ;
        erelatetb_sorttype _table_m_sorttype ;
        erelatetb_sort_item_type _table_d_sorttype ;    
        QString action_unique_code ;
        QString last_unique_code_m, last_unique_code_d;
        int last_table_rowno_m , last_table_rowno_d;  
        //*****************************************************************************
        //**  private   --- fixed                                                    **
        //*****************************************************************************
        void tableWidget_keyRelease(QTableWidget* tableWidget,QKeyEvent *event);
        void set_style_sheet();
        void vectors_m_clear();
        void vectors_d_clear();
        void parse_relatetb_base();
        void edit_frame_dataShow_m();        
        void edit_table_dataShow_m();    
        void edit_table_dataShow_d();  
        int get_keyvalue_tablerow_m(int col_no,QString key_value);  
        int get_keyvalue_tablerow_d(int col_no,QString key_value);          
        bool dbtable_move_next_m();
        bool dbtable_move_next_d();
        bool dbtable_move_previous_m();
        bool dbtable_move_previous_d();
        std::string get_pose2d_base_name_by_uniquecode(std::string uniquecode);
        std::string get_actionfunction_base_name_by_uniquecode(std::string uniquecode);
        void QtherShow_get_pose2d_data();
        void QtherShow_get_action_function_data();
        //*****************************************************************************
        //**  private   --- modify                                                   **
        //*****************************************************************************
        void edit_frame_dataShow_d();  
        void QtherShow_initSet();        
        void formEdit_QtherShow();
        void table_sorttype_show_m();
        void table_sorttype_show_d();
        //***************************************************************************** 
        //**  table function : erelatetb_worksheets                                  **
        //*****************************************************************************
        //--- table name : work_sheet_main ---- 
        void parse_relatedb_work_sheet_main();
        void table_dataShow_work_sheet_main();  
        void update_procedure_work_sheet_main(db_tb_error_type &_error_type);
        void delete_procedure_work_sheet_main(db_tb_error_type &_error_type);
        void search_confirm_work_sheet_main(db_tb_error_type &_error_type);
        void search_cancel_work_sheet_main(db_tb_error_type &_error_type);

        void refresh_procedure_work_sheet_main_items_num(int item_num);
        //--- table name : work_sheet_item ---- 
        void parse_relatedb_work_sheet_items();
        void table_dataShow_work_sheet_items();  
        void update_procedure_work_sheet_items(db_tb_error_type &_error_type);
        void delete_procedure_work_sheet_items(db_tb_error_type &_error_type);
        void search_confirm_work_sheet_items(db_tb_error_type &_error_type);
        void search_cancel_work_sheet_items(db_tb_error_type &_error_type);

        void work_sheet_items_refresh(std::string filter_cond);
    //-------------------------------------
};
//-----------------------------------------------------------------------------
#endif // FRMDB_RELATETABLE_H
