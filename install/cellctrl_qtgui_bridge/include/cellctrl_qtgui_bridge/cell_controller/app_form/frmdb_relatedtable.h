#ifndef FRMDB_RELATEDTABLE_H
#define FRMDB_RELATEDTABLE_H

#include <QWidget>
//#include <QLabel>
//#include <QCoreApplication>
#include "cell_controller/qt_app_model.h"
#include "cell_controller/project/project_definition.h"
//-----------------------------------------------------------------------------
enum eaction_related_type{eaction_related_station=0};
enum eedit_related_type{eedit_related_none=0,eedit_related_mast,eedit_related_detail};
//-----------------------------------------------------------------------------
namespace Ui {
class frmdb_relatedtable;
}

class frmdb_relatedtable : public QWidget
{
    Q_OBJECT

public:
    explicit frmdb_relatedtable(qt_app_model* app_mode,QWidget *parent = 0);
    ~frmdb_relatedtable();

    void frmedit_Show(bool bEdit,eaction_related_type _related_type);
    void frmedit_itemShow(bool bEdit);

private slots:
    void on_btn_close_clicked();

    void on_btn_op_add_clicked();

    void on_btn_op_modify_clicked();

    void on_btn_cancel_clicked();

    void on_btn_op_delete_clicked();

    void on_btn_op_inquire_clicked();

    void on_btn_op_add_detail_clicked();

    void on_btn_op_modify_detail_clicked();

    void on_btn_op_delete_detail_clicked();

    void on_btn_op_inquire_detail_clicked();

private:
    Ui::frmdb_relatedtable *ui;
    qt_app_model* _app_mode ;

    eaction_related_type action_related_type ;
    eedit_related_type edit_related_type ;
    db_table_OP_type table_OP_type ;
    //-- declare style_sheet ----
    QString label_style_enable,label_style_disable;
    QString lineedit_style_enable ;
    QString lineedit_style_disable ;
    QString groupbox_style_enable ;
    QString groupbox_style_disable ;
    void set_style_sheet();
    //--- language show -----
    void form_language_show();
    void tabWidget_language_show();
    void tableWidget_mast_Titleshow();
    void tabWidget_item_language_show();
    void tableWidget_detail_Titleshow();
    void operate_bottom_lauguage_show();
    //--- edit mode show ----
    void editmode_initshow();
    void editmode_mast_show(bool bEdit);
    void editmode_detail_show(bool bEdit);
    void editmode_operate_show(bool bEdit);
    void editmode_set(bool bEdit,eedit_related_type _related_type);

    void tabWidget_station_show();
    void Inquire_op_show();

    //QList<QLabel *> frame_mast_list;
    //QList<QLabel *> frame_detail_list;
};

#endif // FRMDB_RELATEDTABLE_H
