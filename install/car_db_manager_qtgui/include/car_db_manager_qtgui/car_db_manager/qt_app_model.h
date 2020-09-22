#ifndef QT_APP_MODEL_H
#define QT_APP_MODEL_H
//-----------------------------------------------------------------------------
#include <QMainWindow>
#include <QObject>
#include <QWidget>
//-----------------------------------------------------------------------------
class qt_app_model  : public QObject
{
    Q_OBJECT
    //---------------------------------
    public:
        qt_app_model();
        ~qt_app_model();
    //---------------------------------
    public slots:
         //void set_frm_main_enable(bool b_enable);
    //---------------------------------
    signals:
         void frm_main_enable_Changed(bool b_enable);
         void frm_refresh_Changed();
    //---------------------------------
    private:
        bool b_frm_main_enable ;
};
//-----------------------------------------------------------------------------
#endif // QT_APP_MODEL_H
