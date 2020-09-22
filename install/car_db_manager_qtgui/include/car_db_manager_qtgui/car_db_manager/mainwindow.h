#ifndef MAINWINDOW_H
#define MAINWINDOW_H
//-------------------------------------------------------------------------
#include <QMainWindow>
#include "utility/frmShowDialog.h"
#include "app_form/frmdb_basetable.h"
//#include "app_form/frmdb_relatedtable.h"
#include "car_db_manager/app_form/frmdb_relatetable.h"
#include <QLabel>
#include <QVBoxLayout>

#include "car_db_manager/controller/ros_controlmodel.h"
#include "car_db_manager/controller/ros_control_related.h"
#include <ros_utility_tools/table_mongodbstore_client.h>
//-------------------------------------------------------------------------
namespace Ui {
class MainWindow;
}
//-------------------------------------------------------------------------
class MainWindow : public QMainWindow
{
    Q_OBJECT
    //-----------------------------------------
    private:
        Ui::MainWindow *ui;
        qt_app_model* app_mode;
        bool b_frm_main_enable ;
        QVBoxLayout *mainLayout;
        //frmDB_baseTable* DB_baseTable_form ;
        //------------------------------
        QString config_filename ;
        elanguage_type _language_init;
        QLabel* _statusbar_lang_title ;
        QLabel* _statusbar_lang_value ;
        QString _ststus_bar_label_1_ss,_ststus_bar_label_2_ss ;
        //------------------------------
        void config_filedata_set();
        void set_style_sheet();
        void status_bar_show();
        void parse_cofig_language();

        ros_controlmodel* _ros_controlmodel ; 
        void main_window_Show();
        ros_control_related* _ros_control_related ;
    //-------------------------------------------------------------------------
    public:
        explicit MainWindow(QWidget *parent = 0);
        ~MainWindow();
        void formshow(elanguage_type language);
        void system_close();
        void form_refresh();

        void set_ros_controlmodel(ros_controlmodel* controlmodel,ros_control_related* control_related);
    //-------------------------------------------------------------------------
    private slots:

        void on_actionSystem_Close_triggered();

        void on_actionEnglish_triggered();

        void on_actionTraditional_Chinese_triggered();

        void on_actionSimplified_Chinese_triggered();
    //-------------------------------------------------------------------------
        void on_actionAlam_Basecode_triggered();

        void on_actionParameter_Target_pose_triggered();

        void on_actionParameter_check_triggered();

        void on_actionParameter_PID_triggered();

        void on_actionOperate_Basecode_triggered();

        void on_actionAlarm_History_triggered() ;

        void on_actionOperation_History_triggered() ;
        
        void on_actionFunction_Basecode_triggered() ;

        void on_actionWorksheet_Manager_triggered() ;
    public slots:
            void set_frm_main_enable(bool b_enable);
            void set_frm_refresh();
    //-------------------------------------------------------------------------
    //signals:
         //void frm_enable_Changed(bool b_enable);
    //-------------------------------------------------------------------------

};

#endif // MAINWINDOW_H
