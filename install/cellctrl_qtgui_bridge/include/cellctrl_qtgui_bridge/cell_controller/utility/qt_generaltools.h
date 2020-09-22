#ifndef QT_GENERALTOOLS_H
#define QT_GENERALTOOLS_H

#include <QObject>
#include <QtCore/qmath.h>
#include <QDateTime>
#include "cell_controller/utility/frmShowDialog.h"
#include <iostream>     // std::cout, std::ios
#include <sstream>      // std::ostringstream
//----------------------------------------------------------------------------
//--- template function - any type --> QString -------------------------
template <typename T> QString Q_convert_str(const T& t)
{
    std::ostringstream os;
    os<<t;
    return QString::fromStdString(os.str());
}
//----------------------------------------------------------------------------
class qt_generaltools: public QObject
{
    Q_OBJECT
    //-----------------------------------
    private:
        static qt_generaltools* _instance;
        frmShowDialog dialog_form ;

    //-----------------------------------
    protected:
        qt_generaltools();
        ~qt_generaltools();
    //-----------------------------------
    public:
        static qt_generaltools* getInstance();
        static void delInstance();

        double mod45(double modvalue, int bitnum);
        bool dialog_formShow(QString str, efrmStyle frmstyle,elanguage_type language_type = elanguage_type_None);
        void dialog_contextTitle_set(QString context_title,QString context_s="",QString context_subtitle="");
        void dialog_formTitle_set(QString projectName);

        QString get_updatetime_data(QString  updatetime_data);
        QString get_unique_code();

        elanguage_type getlanguage_type() ;
        void setlanguage_type(elanguage_type language_type);

};
//----------------------------------------------------------------------------
#endif // QT_GENERALTOOLS_H
