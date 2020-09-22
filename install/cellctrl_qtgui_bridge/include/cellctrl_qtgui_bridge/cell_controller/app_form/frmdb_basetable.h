#ifndef FRMDB_BASETABLE_H
#define FRMDB_BASETABLE_H
//-----------------------------------------------------------------------------
#include <QWidget>
#include <QKeyEvent>
#include <vector>
#include <QSettings>
#include "cell_controller/qt_app_model.h"
#include "cell_controller/ros_controlmodel.h"

#include "cell_controller/project/project_definition.h"

//-----------------------------------------------------------------------------
enum ebasetable_type{ebasetb_mcfunc, ebasetb_transfer, ebasetb_alarm,ebasetb_maintain,ebasetb_operate};
enum ebasetable_sorttype{ebasetable_sort_none, ebasetable_sort_code, ebasetable_sort_update};
//-----------------------------------------------------------------------------
namespace Ui {
class frmDB_baseTable;
}
//-----------------------------------------------------------------------------
class frmDB_baseTable : public QWidget
{
    Q_OBJECT
    //-----------------------------------------------
    public:
        explicit frmDB_baseTable(qt_app_model* app_mode,QWidget *parent = 0);
        ~frmDB_baseTable();        
        //*****************************************************************************
        //**  base conrtoller area   --- fixed                                       **
        //*****************************************************************************
        void control_model_set(ros_controlmodel *controlmodel);       
        void form_tabletype_show(); 
        void formEdit_Show(bool bEdit);
        //*****************************************************************************
        //**  base conrtoller area   --- modify                                      **
        //*****************************************************************************        
        void parse_config_basetable(ebasetable_type _type);        
        void table_dataShow();
        
    //-----------------------------------------------
    private slots:
        //*****************************************************************************
        //**  GUI Component : trigger .....  Fixed                                   **
        //*****************************************************************************
        void on_btn_close_clicked();
        void on_btn_op_add_clicked();        
        void on_btn_cancel_clicked();
        void on_btn_op_delete_clicked();
        void on_tableWidget_clicked(const QModelIndex &index);
        void on_btn_op_modify_clicked();       
        void on_btn_op_inquire_clicked();
        void on_cbox_sort_code_clicked();
        void on_cbox_sort_time_clicked();
        //void on_tableWidget_pressed(const QModelIndex &index);
        //*****************************************************************************
        //**  GUI Component : trigger .....  modify                                  **
        //*****************************************************************************
        void on_btn_confirm_clicked();
        void on_btn_search_cancel_clicked();
        void on_btn_search_confirm_clicked();
    //-----------------------------------------------
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
    //-----------------------------------------------
    private:
        Ui::frmDB_baseTable *ui;

        qt_app_model* _app_mode ;
        ros_controlmodel* _controlmodel ;
        //-- declare style_sheet ----
        QString label_style_enable , label_style_disable;
        QString labeltitle_style_enable, labeltitle_style_disable ;
        QString lineedit_style_enable , lineedit_style_disable ;
        QString groupbox_style_enable , groupbox_style_disable ;
        //-- declare control-parameters ---
        ebasetable_type _basetable_type ;
        int _fiels_num ;
        int _fiels_maxnum ;
        QVector<QString> _fieldname_Vec_E;
        QVector<QString> _fieldname_Vec_TC;
        QVector<QString> _fieldname_Vec_SC;

        QVector<QString> _titlename_Vec_E;
        QVector<QString> _titlename_Vec_TC;
        QVector<QString> _titlename_Vec_SC;

        QString config_filename;
        db_table_OP_type _table_OP_type ;
        int last_table_rowno ;  
        bool b_rowno_error_false ;
        ebasetable_sorttype _table_sorttype ;    
        QString action_unique_code ;
        QString last_unique_code ;
        //*****************************************************************************
        //**  base conrtoller area   --- fixed                                       **
        //*****************************************************************************
        void set_style_sheet();
        void vectors_clear();
        void parse_basetb_base();
        void edit_frame_dataShow();
        void edit_table_dataShow();       
        int get_keyvalue_tablerow(int col_no,QString key_value); 
        bool dbtable_move_next();
        bool dbtable_move_previous();

        //*****************************************************************************
        //**  base conrtoller area   --- modify                                      **
        //*****************************************************************************
        void formEdit_QtherShow(bool bEdit);
        void table_sorttype_show();
        //*****************************************************************************
        //**  table function : mcFunction_code                                       **
        //*****************************************************************************
        void parse_basetb_mcfunc();
        void table_dataShow_mcfunc();  
        void update_procedure_mcfunc(db_tb_error_type &_error_type);
        void delete_procedure_mcfunc(db_tb_error_type &_error_type);
        void search_confirm_mcfunc(db_tb_error_type &_error_type);
        void search_cancel_mcfunc(db_tb_error_type &_error_type);
};
//-----------------------------------------------------------------------------
#endif // FRMDB_BASETABLE_H
