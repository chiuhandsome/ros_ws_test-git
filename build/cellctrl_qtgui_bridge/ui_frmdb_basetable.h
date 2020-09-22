/********************************************************************************
** Form generated from reading UI file 'frmdb_basetable.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FRMDB_BASETABLE_H
#define UI_FRMDB_BASETABLE_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_frmDB_baseTable
{
public:
    QGroupBox *gbox_basetable;
    QTableWidget *tableWidget;
    QFrame *sort_frame;
    QWidget *widget;
    QHBoxLayout *horizontalLayout;
    QLabel *lb_sorttitle;
    QCheckBox *cbox_sort_code;
    QCheckBox *cbox_sort_time;
    QWidget *widget1;
    QLabel *lb_titlename;
    QFrame *op_frame;
    QPushButton *btn_op_inquire;
    QPushButton *btn_op_add;
    QPushButton *btn_op_modify;
    QPushButton *btn_op_delete;
    QFrame *edit_frame;
    QWidget *layoutWidget;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_0;
    QLabel *lb_field_0;
    QLineEdit *lineEdit_0;
    QHBoxLayout *horizontalLayout_1;
    QLabel *lb_field_1;
    QLineEdit *lineEdit_1;
    QHBoxLayout *horizontalLayout_2;
    QLabel *lb_field_2;
    QLineEdit *lineEdit_2;
    QHBoxLayout *horizontalLayout_3;
    QLabel *lb_field_3;
    QLineEdit *lineEdit_3;
    QHBoxLayout *horizontalLayout_4;
    QLabel *lb_field_4;
    QLineEdit *lineEdit_4;
    QHBoxLayout *horizontalLayout_5;
    QLabel *lb_field_5;
    QLineEdit *lineEdit_5;
    QHBoxLayout *horizontalLayout_6;
    QLabel *lb_field_6;
    QLineEdit *lineEdit_6;
    QHBoxLayout *horizontalLayout_7;
    QLabel *lb_field_7;
    QLineEdit *lineEdit_7;
    QHBoxLayout *horizontalLayout_8;
    QLabel *lb_field_8;
    QLineEdit *lineEdit_8;
    QFrame *close_frame;
    QPushButton *btn_close;
    QLabel *lb_table_edittype;
    QFrame *choice_frame;
    QPushButton *btn_cancel;
    QPushButton *btn_confirm;
    QFrame *search_frame;
    QGroupBox *gbox_search_region;
    QLabel *lb_search_from;
    QLineEdit *edit_search_from;
    QLineEdit *edit_search_to;
    QLabel *lb_search_to;
    QGroupBox *gbox_search_condition;
    QComboBox *cbox_search_condition;
    QPushButton *btn_search_cancel;
    QPushButton *btn_search_confirm;

    void setupUi(QWidget *frmDB_baseTable)
    {
        if (frmDB_baseTable->objectName().isEmpty())
            frmDB_baseTable->setObjectName(QStringLiteral("frmDB_baseTable"));
        frmDB_baseTable->resize(863, 590);
        gbox_basetable = new QGroupBox(frmDB_baseTable);
        gbox_basetable->setObjectName(QStringLiteral("gbox_basetable"));
        gbox_basetable->setGeometry(QRect(30, 20, 371, 551));
        tableWidget = new QTableWidget(gbox_basetable);
        tableWidget->setObjectName(QStringLiteral("tableWidget"));
        tableWidget->setGeometry(QRect(10, 30, 351, 461));
        sort_frame = new QFrame(gbox_basetable);
        sort_frame->setObjectName(QStringLiteral("sort_frame"));
        sort_frame->setGeometry(QRect(11, 499, 351, 41));
        sort_frame->setFrameShape(QFrame::StyledPanel);
        sort_frame->setFrameShadow(QFrame::Raised);
        widget = new QWidget(sort_frame);
        widget->setObjectName(QStringLiteral("widget"));
        widget->setGeometry(QRect(10, 10, 331, 27));
        horizontalLayout = new QHBoxLayout(widget);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        lb_sorttitle = new QLabel(widget);
        lb_sorttitle->setObjectName(QStringLiteral("lb_sorttitle"));
        QFont font;
        font.setPointSize(12);
        font.setBold(true);
        font.setWeight(75);
        lb_sorttitle->setFont(font);
        lb_sorttitle->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout->addWidget(lb_sorttitle);

        cbox_sort_code = new QCheckBox(widget);
        cbox_sort_code->setObjectName(QStringLiteral("cbox_sort_code"));
        cbox_sort_code->setFont(font);
        cbox_sort_code->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout->addWidget(cbox_sort_code);

        cbox_sort_time = new QCheckBox(widget);
        cbox_sort_time->setObjectName(QStringLiteral("cbox_sort_time"));
        cbox_sort_time->setFont(font);
        cbox_sort_time->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout->addWidget(cbox_sort_time);

        widget1 = new QWidget(frmDB_baseTable);
        widget1->setObjectName(QStringLiteral("widget1"));
        widget1->setGeometry(QRect(410, 20, 441, 551));
        lb_titlename = new QLabel(widget1);
        lb_titlename->setObjectName(QStringLiteral("lb_titlename"));
        lb_titlename->setGeometry(QRect(20, 2, 291, 17));
        QFont font1;
        font1.setPointSize(14);
        font1.setBold(true);
        font1.setWeight(75);
        lb_titlename->setFont(font1);
        lb_titlename->setStyleSheet(QStringLiteral("color: rgb(52, 101, 164);"));
        op_frame = new QFrame(widget1);
        op_frame->setObjectName(QStringLiteral("op_frame"));
        op_frame->setGeometry(QRect(20, 380, 225, 80));
        op_frame->setFrameShape(QFrame::StyledPanel);
        op_frame->setFrameShadow(QFrame::Raised);
        btn_op_inquire = new QPushButton(op_frame);
        btn_op_inquire->setObjectName(QStringLiteral("btn_op_inquire"));
        btn_op_inquire->setGeometry(QRect(115, 40, 103, 35));
        btn_op_inquire->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 lightblue, stop:1 rgba(255, 255, 255, 255));\n"
"color: blue;"));
        QIcon icon;
        icon.addFile(QStringLiteral(":/png/resource/tools_png/search_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_op_inquire->setIcon(icon);
        btn_op_inquire->setIconSize(QSize(24, 24));
        btn_op_add = new QPushButton(op_frame);
        btn_op_add->setObjectName(QStringLiteral("btn_op_add"));
        btn_op_add->setGeometry(QRect(5, 5, 103, 35));
        btn_op_add->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 lightblue, stop:1 rgba(255, 255, 255, 255));\n"
"color: blue;"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/png/resource/tools_png/add_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_op_add->setIcon(icon1);
        btn_op_add->setIconSize(QSize(24, 24));
        btn_op_modify = new QPushButton(op_frame);
        btn_op_modify->setObjectName(QStringLiteral("btn_op_modify"));
        btn_op_modify->setGeometry(QRect(115, 5, 103, 35));
        btn_op_modify->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 lightblue, stop:1 rgba(255, 255, 255, 255));\n"
"color: blue;"));
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/png/resource/tools_png/pen_005.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_op_modify->setIcon(icon2);
        btn_op_modify->setIconSize(QSize(24, 24));
        btn_op_delete = new QPushButton(op_frame);
        btn_op_delete->setObjectName(QStringLiteral("btn_op_delete"));
        btn_op_delete->setGeometry(QRect(5, 40, 103, 35));
        btn_op_delete->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 lightblue, stop:1 rgba(255, 255, 255, 255));\n"
"color: fuchsia;"));
        QIcon icon3;
        icon3.addFile(QStringLiteral(":/png/resource/tools_png/delete_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_op_delete->setIcon(icon3);
        btn_op_delete->setIconSize(QSize(24, 24));
        edit_frame = new QFrame(widget1);
        edit_frame->setObjectName(QStringLiteral("edit_frame"));
        edit_frame->setGeometry(QRect(10, 30, 421, 341));
        edit_frame->setFrameShape(QFrame::StyledPanel);
        edit_frame->setFrameShadow(QFrame::Raised);
        layoutWidget = new QWidget(edit_frame);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(13, 15, 401, 311));
        verticalLayout = new QVBoxLayout(layoutWidget);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        horizontalLayout_0 = new QHBoxLayout();
        horizontalLayout_0->setObjectName(QStringLiteral("horizontalLayout_0"));
        lb_field_0 = new QLabel(layoutWidget);
        lb_field_0->setObjectName(QStringLiteral("lb_field_0"));
        lb_field_0->setFont(font);
        lb_field_0->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_0->addWidget(lb_field_0);

        lineEdit_0 = new QLineEdit(layoutWidget);
        lineEdit_0->setObjectName(QStringLiteral("lineEdit_0"));
        lineEdit_0->setFont(font);

        horizontalLayout_0->addWidget(lineEdit_0);


        verticalLayout->addLayout(horizontalLayout_0);

        horizontalLayout_1 = new QHBoxLayout();
        horizontalLayout_1->setObjectName(QStringLiteral("horizontalLayout_1"));
        lb_field_1 = new QLabel(layoutWidget);
        lb_field_1->setObjectName(QStringLiteral("lb_field_1"));
        lb_field_1->setFont(font);
        lb_field_1->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_1->addWidget(lb_field_1);

        lineEdit_1 = new QLineEdit(layoutWidget);
        lineEdit_1->setObjectName(QStringLiteral("lineEdit_1"));
        lineEdit_1->setFont(font);

        horizontalLayout_1->addWidget(lineEdit_1);


        verticalLayout->addLayout(horizontalLayout_1);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        lb_field_2 = new QLabel(layoutWidget);
        lb_field_2->setObjectName(QStringLiteral("lb_field_2"));
        lb_field_2->setFont(font);
        lb_field_2->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_2->addWidget(lb_field_2);

        lineEdit_2 = new QLineEdit(layoutWidget);
        lineEdit_2->setObjectName(QStringLiteral("lineEdit_2"));
        lineEdit_2->setFont(font);

        horizontalLayout_2->addWidget(lineEdit_2);


        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        lb_field_3 = new QLabel(layoutWidget);
        lb_field_3->setObjectName(QStringLiteral("lb_field_3"));
        lb_field_3->setFont(font);
        lb_field_3->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_3->addWidget(lb_field_3);

        lineEdit_3 = new QLineEdit(layoutWidget);
        lineEdit_3->setObjectName(QStringLiteral("lineEdit_3"));
        lineEdit_3->setFont(font);

        horizontalLayout_3->addWidget(lineEdit_3);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        lb_field_4 = new QLabel(layoutWidget);
        lb_field_4->setObjectName(QStringLiteral("lb_field_4"));
        lb_field_4->setFont(font);
        lb_field_4->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_4->addWidget(lb_field_4);

        lineEdit_4 = new QLineEdit(layoutWidget);
        lineEdit_4->setObjectName(QStringLiteral("lineEdit_4"));
        lineEdit_4->setFont(font);

        horizontalLayout_4->addWidget(lineEdit_4);


        verticalLayout->addLayout(horizontalLayout_4);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        lb_field_5 = new QLabel(layoutWidget);
        lb_field_5->setObjectName(QStringLiteral("lb_field_5"));
        lb_field_5->setFont(font);
        lb_field_5->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_5->addWidget(lb_field_5);

        lineEdit_5 = new QLineEdit(layoutWidget);
        lineEdit_5->setObjectName(QStringLiteral("lineEdit_5"));
        lineEdit_5->setFont(font);

        horizontalLayout_5->addWidget(lineEdit_5);


        verticalLayout->addLayout(horizontalLayout_5);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QStringLiteral("horizontalLayout_6"));
        lb_field_6 = new QLabel(layoutWidget);
        lb_field_6->setObjectName(QStringLiteral("lb_field_6"));
        lb_field_6->setFont(font);
        lb_field_6->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_6->addWidget(lb_field_6);

        lineEdit_6 = new QLineEdit(layoutWidget);
        lineEdit_6->setObjectName(QStringLiteral("lineEdit_6"));
        lineEdit_6->setFont(font);

        horizontalLayout_6->addWidget(lineEdit_6);


        verticalLayout->addLayout(horizontalLayout_6);

        horizontalLayout_7 = new QHBoxLayout();
        horizontalLayout_7->setObjectName(QStringLiteral("horizontalLayout_7"));
        lb_field_7 = new QLabel(layoutWidget);
        lb_field_7->setObjectName(QStringLiteral("lb_field_7"));
        lb_field_7->setFont(font);
        lb_field_7->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_7->addWidget(lb_field_7);

        lineEdit_7 = new QLineEdit(layoutWidget);
        lineEdit_7->setObjectName(QStringLiteral("lineEdit_7"));
        lineEdit_7->setFont(font);

        horizontalLayout_7->addWidget(lineEdit_7);


        verticalLayout->addLayout(horizontalLayout_7);

        horizontalLayout_8 = new QHBoxLayout();
        horizontalLayout_8->setObjectName(QStringLiteral("horizontalLayout_8"));
        lb_field_8 = new QLabel(layoutWidget);
        lb_field_8->setObjectName(QStringLiteral("lb_field_8"));
        lb_field_8->setFont(font);
        lb_field_8->setStyleSheet(QStringLiteral("color: blue;"));

        horizontalLayout_8->addWidget(lb_field_8);

        lineEdit_8 = new QLineEdit(layoutWidget);
        lineEdit_8->setObjectName(QStringLiteral("lineEdit_8"));
        lineEdit_8->setFont(font);

        horizontalLayout_8->addWidget(lineEdit_8);


        verticalLayout->addLayout(horizontalLayout_8);

        close_frame = new QFrame(widget1);
        close_frame->setObjectName(QStringLiteral("close_frame"));
        close_frame->setGeometry(QRect(320, 380, 112, 80));
        close_frame->setFrameShape(QFrame::StyledPanel);
        close_frame->setFrameShadow(QFrame::Raised);
        btn_close = new QPushButton(close_frame);
        btn_close->setObjectName(QStringLiteral("btn_close"));
        btn_close->setGeometry(QRect(5, 4, 103, 71));
        btn_close->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 yellow, stop:1 rgba(255, 255, 255, 255));\n"
"color: fuchsia;"));
        QIcon icon4;
        icon4.addFile(QStringLiteral(":/png/resource/tools_png/exit_002.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_close->setIcon(icon4);
        btn_close->setIconSize(QSize(36, 36));
        lb_table_edittype = new QLabel(widget1);
        lb_table_edittype->setObjectName(QStringLiteral("lb_table_edittype"));
        lb_table_edittype->setGeometry(QRect(360, 10, 67, 17));
        QFont font2;
        font2.setBold(true);
        font2.setWeight(75);
        lb_table_edittype->setFont(font2);
        lb_table_edittype->setStyleSheet(QStringLiteral("color: fuchsia;"));
        choice_frame = new QFrame(widget1);
        choice_frame->setObjectName(QStringLiteral("choice_frame"));
        choice_frame->setGeometry(QRect(320, 380, 112, 80));
        choice_frame->setFrameShape(QFrame::StyledPanel);
        choice_frame->setFrameShadow(QFrame::Raised);
        btn_cancel = new QPushButton(choice_frame);
        btn_cancel->setObjectName(QStringLiteral("btn_cancel"));
        btn_cancel->setGeometry(QRect(5, 40, 103, 35));
        btn_cancel->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 yellow, stop:1 rgba(255, 255, 255, 255));\n"
"color: fuchsia;"));
        QIcon icon5;
        icon5.addFile(QStringLiteral(":/png/resource/tools_png/Back_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_cancel->setIcon(icon5);
        btn_cancel->setIconSize(QSize(24, 24));
        btn_confirm = new QPushButton(choice_frame);
        btn_confirm->setObjectName(QStringLiteral("btn_confirm"));
        btn_confirm->setGeometry(QRect(5, 5, 103, 35));
        btn_confirm->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 lightgreen, stop:1 rgba(255, 255, 255, 255));\n"
"color: blue;"));
        QIcon icon6;
        icon6.addFile(QStringLiteral(":/png/resource/tools_png/Check_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn_confirm->setIcon(icon6);
        btn_confirm->setIconSize(QSize(24, 24));
        search_frame = new QFrame(widget1);
        search_frame->setObjectName(QStringLiteral("search_frame"));
        search_frame->setGeometry(QRect(10, 379, 421, 161));
        search_frame->setStyleSheet(QStringLiteral("background-color: lightyellow;"));
        search_frame->setFrameShape(QFrame::Panel);
        search_frame->setFrameShadow(QFrame::Raised);
        gbox_search_region = new QGroupBox(search_frame);
        gbox_search_region->setObjectName(QStringLiteral("gbox_search_region"));
        gbox_search_region->setGeometry(QRect(20, 60, 281, 91));
        gbox_search_region->setFont(font);
        gbox_search_region->setStyleSheet(QStringLiteral("color: blue;"));
        lb_search_from = new QLabel(gbox_search_region);
        lb_search_from->setObjectName(QStringLiteral("lb_search_from"));
        lb_search_from->setGeometry(QRect(5, 30, 40, 27));
        lb_search_from->setFont(font);
        lb_search_from->setStyleSheet(QStringLiteral("color: blue;"));
        lb_search_from->setAlignment(Qt::AlignCenter);
        edit_search_from = new QLineEdit(gbox_search_region);
        edit_search_from->setObjectName(QStringLiteral("edit_search_from"));
        edit_search_from->setGeometry(QRect(50, 30, 221, 27));
        edit_search_from->setFont(font);
        edit_search_to = new QLineEdit(gbox_search_region);
        edit_search_to->setObjectName(QStringLiteral("edit_search_to"));
        edit_search_to->setGeometry(QRect(50, 60, 221, 27));
        edit_search_to->setFont(font);
        lb_search_to = new QLabel(gbox_search_region);
        lb_search_to->setObjectName(QStringLiteral("lb_search_to"));
        lb_search_to->setGeometry(QRect(5, 60, 40, 27));
        lb_search_to->setFont(font);
        lb_search_to->setStyleSheet(QStringLiteral("color: blue;"));
        lb_search_to->setAlignment(Qt::AlignCenter);
        gbox_search_condition = new QGroupBox(search_frame);
        gbox_search_condition->setObjectName(QStringLiteral("gbox_search_condition"));
        gbox_search_condition->setGeometry(QRect(20, 0, 281, 61));
        gbox_search_condition->setFont(font);
        gbox_search_condition->setStyleSheet(QStringLiteral("color: blue;"));
        cbox_search_condition = new QComboBox(gbox_search_condition);
        cbox_search_condition->setObjectName(QStringLiteral("cbox_search_condition"));
        cbox_search_condition->setGeometry(QRect(10, 30, 261, 25));
        QFont font3;
        font3.setPointSize(12);
        cbox_search_condition->setFont(font3);
        btn_search_cancel = new QPushButton(search_frame);
        btn_search_cancel->setObjectName(QStringLiteral("btn_search_cancel"));
        btn_search_cancel->setGeometry(QRect(310, 110, 103, 35));
        btn_search_cancel->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 yellow, stop:1 rgba(255, 255, 255, 255));\n"
"color: fuchsia;"));
        btn_search_cancel->setIcon(icon5);
        btn_search_cancel->setIconSize(QSize(24, 24));
        btn_search_confirm = new QPushButton(search_frame);
        btn_search_confirm->setObjectName(QStringLiteral("btn_search_confirm"));
        btn_search_confirm->setGeometry(QRect(310, 70, 103, 35));
        btn_search_confirm->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 lightgreen, stop:1 rgba(255, 255, 255, 255));\n"
"color: blue;"));
        btn_search_confirm->setIcon(icon6);
        btn_search_confirm->setIconSize(QSize(24, 24));
        search_frame->raise();
        op_frame->raise();
        close_frame->raise();
        lb_titlename->raise();
        edit_frame->raise();
        lb_table_edittype->raise();
        choice_frame->raise();
        widget->raise();
        gbox_basetable->raise();

        retranslateUi(frmDB_baseTable);

        QMetaObject::connectSlotsByName(frmDB_baseTable);
    } // setupUi

    void retranslateUi(QWidget *frmDB_baseTable)
    {
        frmDB_baseTable->setWindowTitle(QApplication::translate("frmDB_baseTable", "Form", Q_NULLPTR));
        gbox_basetable->setTitle(QApplication::translate("frmDB_baseTable", "gbox_basetable", Q_NULLPTR));
        lb_sorttitle->setText(QApplication::translate("frmDB_baseTable", "TextLabel", Q_NULLPTR));
        cbox_sort_code->setText(QApplication::translate("frmDB_baseTable", "CheckBox", Q_NULLPTR));
        cbox_sort_time->setText(QApplication::translate("frmDB_baseTable", "CheckBox", Q_NULLPTR));
        lb_titlename->setText(QApplication::translate("frmDB_baseTable", "lb_titlename", Q_NULLPTR));
        btn_op_inquire->setText(QApplication::translate("frmDB_baseTable", "Inquire", Q_NULLPTR));
        btn_op_add->setText(QApplication::translate("frmDB_baseTable", "Add", Q_NULLPTR));
        btn_op_modify->setText(QApplication::translate("frmDB_baseTable", "Modify", Q_NULLPTR));
        btn_op_delete->setText(QApplication::translate("frmDB_baseTable", "Delete", Q_NULLPTR));
        lb_field_0->setText(QApplication::translate("frmDB_baseTable", "primary_id", Q_NULLPTR));
        lb_field_1->setText(QApplication::translate("frmDB_baseTable", "unique_code", Q_NULLPTR));
        lb_field_2->setText(QApplication::translate("frmDB_baseTable", "base_name:", Q_NULLPTR));
        lb_field_3->setText(QApplication::translate("frmDB_baseTable", "base_desc_TC", Q_NULLPTR));
        lb_field_4->setText(QApplication::translate("frmDB_baseTable", "base_desc_SC", Q_NULLPTR));
        lb_field_5->setText(QApplication::translate("frmDB_baseTable", "base_desc_E", Q_NULLPTR));
        lb_field_6->setText(QApplication::translate("frmDB_baseTable", "update_time", Q_NULLPTR));
        lb_field_7->setText(QApplication::translate("frmDB_baseTable", "TextLabel", Q_NULLPTR));
        lb_field_8->setText(QApplication::translate("frmDB_baseTable", "primary_id", Q_NULLPTR));
        btn_close->setText(QApplication::translate("frmDB_baseTable", "Close", Q_NULLPTR));
        lb_table_edittype->setText(QApplication::translate("frmDB_baseTable", "TextLabel", Q_NULLPTR));
        btn_cancel->setText(QApplication::translate("frmDB_baseTable", "Cancel", Q_NULLPTR));
        btn_confirm->setText(QApplication::translate("frmDB_baseTable", "Confirm", Q_NULLPTR));
#ifndef QT_NO_STATUSTIP
        search_frame->setStatusTip(QString());
#endif // QT_NO_STATUSTIP
        gbox_search_region->setTitle(QApplication::translate("frmDB_baseTable", "GroupBox", Q_NULLPTR));
        lb_search_from->setText(QApplication::translate("frmDB_baseTable", "from", Q_NULLPTR));
        edit_search_to->setText(QString());
        lb_search_to->setText(QApplication::translate("frmDB_baseTable", "to", Q_NULLPTR));
        gbox_search_condition->setTitle(QApplication::translate("frmDB_baseTable", "GroupBox", Q_NULLPTR));
        btn_search_cancel->setText(QApplication::translate("frmDB_baseTable", "Cancel", Q_NULLPTR));
        btn_search_confirm->setText(QApplication::translate("frmDB_baseTable", "Confirm", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class frmDB_baseTable: public Ui_frmDB_baseTable {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FRMDB_BASETABLE_H
