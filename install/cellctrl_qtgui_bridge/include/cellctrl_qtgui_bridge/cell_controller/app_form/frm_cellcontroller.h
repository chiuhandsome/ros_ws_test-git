#ifndef FRM_CELLCONTROLLER_H
#define FRM_CELLCONTROLLER_H

#include <QWidget>

namespace Ui {
class frm_cellcontroller;
}

class frm_cellcontroller : public QWidget
{
    Q_OBJECT

public:
    explicit frm_cellcontroller(QWidget *parent = 0);
    ~frm_cellcontroller();

private:
    Ui::frm_cellcontroller *ui;
};

#endif // FRM_CELLCONTROLLER_H
