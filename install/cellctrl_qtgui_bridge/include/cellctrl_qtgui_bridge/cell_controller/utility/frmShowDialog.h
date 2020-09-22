#ifndef frmShowDialog_H
#define frmShowDialog_H
//-----------------------------------------------------------------------------
#include <QDialog>
//-----------------------------------------------------------------------------
enum elanguage_type{elanguage_type_None=0, elanguage_type_E, elanguage_type_TC,elanguage_type_SC};
enum efrmStyle{eConfirmStyle, eMessageStyle};
//-----------------------------------------------------------------------------
namespace Ui
{
class frmShowDialog;
}
//-----------------------------------------------------------------------------
class frmShowDialog : public QDialog
{
    Q_OBJECT
    //--------------------------------------------
    public:
        explicit frmShowDialog(QWidget *parent = 0);
        ~frmShowDialog();

        bool formShow(QString str, efrmStyle frmstyle,elanguage_type language_type = elanguage_type_None);
        void contextTitle_set(QString context_title,QString context_s="",QString context_subtitle="");
        void widgetTitle_set(QString projectName);

        elanguage_type getlanguage_type() ;
        void setlanguage_type(elanguage_type language_type);
    //--------------------------------------------
    private slots:
        //-- replace buttonBox with pushbutton , so they are not necessary .
        //void on_buttonBox_accepted();
        //void on_buttonBox_accepted();
    //--------------------------------------------
    private:
            Ui::frmShowDialog *ui;
            //efrmStyle _frmStyle ;
            elanguage_type _language_type ;
            bool b_Return ;
            QString _context_s ;
            QString _context_title ;
            QString _context_subtitle ;
            QString _projectName ;
};
//-----------------------------------------------------------------------------
#endif // frmShowDialog
