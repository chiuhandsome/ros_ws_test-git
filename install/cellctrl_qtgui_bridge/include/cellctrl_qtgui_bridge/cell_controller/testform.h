#ifndef TESTFORM_H
#define TESTFORM_H

#include <QWidget>
#include <QHBoxLayout>
#include "cell_controller/qt_app_model.h"

//qt_app_model app_mode ;//= new qt_app_model();

namespace Ui {
class testForm;
}

class testForm : public QWidget
{
    Q_OBJECT

public:
    explicit testForm(QWidget *parent = 0);
    ~testForm();
    void set_app_model(qt_app_model* _mode);

private slots:
    void on_pushButton_clicked();

private:
    Ui::testForm *ui;
    qt_app_model* app_mode ;
};

#endif // TESTFORM_H
