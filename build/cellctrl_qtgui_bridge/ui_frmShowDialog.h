/********************************************************************************
** Form generated from reading UI file 'frmShowDialog.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FRMSHOWDIALOG_H
#define UI_FRMSHOWDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_frmShowDialog
{
public:
    QLabel *lb_iconshow;
    QLabel *logo_label;
    QWidget *widget;
    QVBoxLayout *verticalLayout_2;
    QLabel *lb_titlename;
    QTextEdit *textEdit_context;
    QWidget *widget1;
    QGridLayout *gridLayout;
    QPushButton *btn_cancel;
    QPushButton *btn_confirm;

    void setupUi(QDialog *frmShowDialog)
    {
        if (frmShowDialog->objectName().isEmpty())
            frmShowDialog->setObjectName(QStringLiteral("frmShowDialog"));
        frmShowDialog->resize(500, 334);
        lb_iconshow = new QLabel(frmShowDialog);
        lb_iconshow->setObjectName(QStringLiteral("lb_iconshow"));
        lb_iconshow->setGeometry(QRect(10, 100, 131, 151));
        logo_label = new QLabel(frmShowDialog);
        logo_label->setObjectName(QStringLiteral("logo_label"));
        logo_label->setGeometry(QRect(10, 20, 111, 61));
        widget = new QWidget(frmShowDialog);
        widget->setObjectName(QStringLiteral("widget"));
        widget->setGeometry(QRect(155, 9, 321, 271));
        verticalLayout_2 = new QVBoxLayout(widget);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout_2->setContentsMargins(0, 0, 0, 0);
        lb_titlename = new QLabel(widget);
        lb_titlename->setObjectName(QStringLiteral("lb_titlename"));
        QFont font;
        font.setFamily(QStringLiteral("24pt Ubuntu"));
        font.setBold(true);
        font.setItalic(false);
        font.setWeight(75);
        lb_titlename->setFont(font);
        lb_titlename->setStyleSheet(QLatin1String("color: blue;\n"
"font: bold,24pt \"Ubuntu\";"));
        lb_titlename->setTextFormat(Qt::PlainText);

        verticalLayout_2->addWidget(lb_titlename);

        textEdit_context = new QTextEdit(widget);
        textEdit_context->setObjectName(QStringLiteral("textEdit_context"));
        textEdit_context->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"color: Blue;\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 yellow, stop:1 rgba(255, 255, 255, 255));"));
        textEdit_context->setFrameShape(QFrame::Panel);
        textEdit_context->setFrameShadow(QFrame::Sunken);
        textEdit_context->setLineWidth(3);

        verticalLayout_2->addWidget(textEdit_context);

        widget1 = new QWidget(frmShowDialog);
        widget1->setObjectName(QStringLiteral("widget1"));
        widget1->setGeometry(QRect(270, 290, 203, 34));
        gridLayout = new QGridLayout(widget1);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        btn_cancel = new QPushButton(widget1);
        btn_cancel->setObjectName(QStringLiteral("btn_cancel"));
        btn_cancel->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 yellow, stop:1 rgba(255, 255, 255, 255));\n"
"color: fuchsia;"));
        QIcon icon;
        icon.addFile(QStringLiteral(":/png/resource/tools_png/Back_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_cancel->setIcon(icon);
        btn_cancel->setIconSize(QSize(24, 24));

        gridLayout->addWidget(btn_cancel, 0, 0, 1, 1);

        btn_confirm = new QPushButton(widget1);
        btn_confirm->setObjectName(QStringLiteral("btn_confirm"));
        btn_confirm->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 lightgreen, stop:1 rgba(255, 255, 255, 255));\n"
"color: blue;"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/png/resource/tools_png/Check_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_confirm->setIcon(icon1);
        btn_confirm->setIconSize(QSize(24, 24));

        gridLayout->addWidget(btn_confirm, 0, 1, 1, 1);


        retranslateUi(frmShowDialog);

        QMetaObject::connectSlotsByName(frmShowDialog);
    } // setupUi

    void retranslateUi(QDialog *frmShowDialog)
    {
        frmShowDialog->setWindowTitle(QApplication::translate("frmShowDialog", "Inquire Dialog - Cell Controller", Q_NULLPTR));
        lb_iconshow->setText(QApplication::translate("frmShowDialog", "TextLabel", Q_NULLPTR));
        logo_label->setText(QApplication::translate("frmShowDialog", "TextLabel", Q_NULLPTR));
        lb_titlename->setText(QApplication::translate("frmShowDialog", "TextLabel", Q_NULLPTR));
        btn_cancel->setText(QApplication::translate("frmShowDialog", "Cancel", Q_NULLPTR));
        btn_confirm->setText(QApplication::translate("frmShowDialog", "Confirm", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class frmShowDialog: public Ui_frmShowDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FRMSHOWDIALOG_H
