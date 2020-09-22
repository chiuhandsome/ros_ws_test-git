#ifndef MAINWINDOW_H
#define MAINWINDOW_H
//-------------------------------------------------------------------------
#define usingROS_ENV    true
#include <QMainWindow>
#include "cell_controller/testform.h"
#include "cell_controller/utility/frmShowDialog.h"
#include "app_form/frmdb_basetable.h"
#include <QLabel>

#include "cell_controller/qt_app_model.h"
#if (usingROS_ENV)
    #include "cell_controller/ros_controlmodel.h"
    #include <ros_utility_tools/table_mongodbstore_client.h>
#endif
#include "app_form/frmdb_relatedtable.h"
//-------------------------------------------------------------------------
namespace Ui {
class MainWindow;
}
//-------------------------------------------------------------------------
class MainWindow : public QMainWindow
{
    Q_OBJECT
    //-------------------------------------------------------------------------
    public:
        explicit MainWindow(QWidget *parent = 0);
        ~MainWindow();
        void formshow();
        void system_close();
        void form_refresh();
        #if (usingROS_ENV)
            void set_ros_controlmodel(ros_controlmodel* controlmodel);
        #endif
    //-------------------------------------------------------------------------
    private slots:
        void on_actionDevice_Basecode_triggered();
        void on_actionSystem_Close_triggered();
        void on_actionManu_func_Basecode_triggered();
        void on_actionEnglish_triggered();
        void on_actionTraditional_Chinese_triggered();
        void on_actionSimplified_Chinese_triggered();

        void on_actionStation_Data_triggered();
    //-------------------------------------------------------------------------
    public slots:
         void set_frm_main_enable(bool b_enable);
         void set_frm_refresh();         
    //-------------------------------------------------------------------------
    signals:
         //void frm_enable_Changed(bool b_enable);
    //-------------------------------------------------------------------------
    private:
        Ui::MainWindow *ui;
        testForm* t_form ;
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
        #if (usingROS_ENV)
            ros_controlmodel* _ros_controlmodel ;            
        #endif
        void main_window_Show();
};
//-------------------------------------------------------------------------
#endif // MAINWINDOW_H
