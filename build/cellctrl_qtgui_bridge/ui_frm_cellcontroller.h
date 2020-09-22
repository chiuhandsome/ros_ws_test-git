/********************************************************************************
** Form generated from reading UI file 'frm_cellcontroller.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FRM_CELLCONTROLLER_H
#define UI_FRM_CELLCONTROLLER_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_frm_cellcontroller
{
public:
    QFrame *frame;
    QGroupBox *groupBox;
    QVBoxLayout *verticalLayout;
    QGraphicsView *graphicsView;
    QFrame *frame_2;
    QPushButton *pushButton_3;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QComboBox *comboBox;
    QFrame *frame_4;
    QHBoxLayout *horizontalLayout_2;
    QTabWidget *tabWidget;
    QWidget *tab;
    QWidget *tab_2;
    QFrame *frame_3;
    QPushButton *pushButton_4;

    void setupUi(QWidget *frm_cellcontroller)
    {
        if (frm_cellcontroller->objectName().isEmpty())
            frm_cellcontroller->setObjectName(QStringLiteral("frm_cellcontroller"));
        frm_cellcontroller->resize(1032, 678);
        frame = new QFrame(frm_cellcontroller);
        frame->setObjectName(QStringLiteral("frame"));
        frame->setGeometry(QRect(10, 0, 491, 641));
        frame->setFrameShape(QFrame::StyledPanel);
        frame->setFrameShadow(QFrame::Raised);
        groupBox = new QGroupBox(frame);
        groupBox->setObjectName(QStringLiteral("groupBox"));
        groupBox->setGeometry(QRect(10, 10, 471, 641));
        groupBox->setStyleSheet(QLatin1String("font: 75 14pt \"URW Bookman L\";\n"
"color: rgb(239, 41, 41);"));
        verticalLayout = new QVBoxLayout(groupBox);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        graphicsView = new QGraphicsView(groupBox);
        graphicsView->setObjectName(QStringLiteral("graphicsView"));
        graphicsView->setMaximumSize(QSize(16777215, 16777181));

        verticalLayout->addWidget(graphicsView);

        frame_2 = new QFrame(frm_cellcontroller);
        frame_2->setObjectName(QStringLiteral("frame_2"));
        frame_2->setGeometry(QRect(500, 0, 435, 41));
        frame_2->setFrameShape(QFrame::StyledPanel);
        frame_2->setFrameShadow(QFrame::Raised);
        pushButton_3 = new QPushButton(frame_2);
        pushButton_3->setObjectName(QStringLiteral("pushButton_3"));
        pushButton_3->setGeometry(QRect(335, 5, 98, 32));
        pushButton_3->setStyleSheet(QLatin1String("font: bold 12pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 yellow, stop:1 rgba(255, 255, 255, 255));\n"
"color: green;"));
        QIcon icon;
        icon.addFile(QStringLiteral(":/png/resource/tools_png/Check_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_3->setIcon(icon);
        pushButton_3->setIconSize(QSize(24, 24));
        pushButton_3->setAutoRepeatDelay(350);
        layoutWidget = new QWidget(frame_2);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(3, 7, 330, 27));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(layoutWidget);
        label->setObjectName(QStringLiteral("label"));
        QFont font;
        font.setFamily(QStringLiteral("Ubuntu"));
        font.setPointSize(14);
        font.setBold(false);
        font.setItalic(false);
        font.setWeight(50);
        label->setFont(font);
        label->setStyleSheet(QLatin1String("font: 14pt \"Ubuntu\";\n"
"color: rgb(32, 74, 135);"));

        horizontalLayout->addWidget(label);

        comboBox = new QComboBox(layoutWidget);
        comboBox->setObjectName(QStringLiteral("comboBox"));

        horizontalLayout->addWidget(comboBox);

        frame_4 = new QFrame(frm_cellcontroller);
        frame_4->setObjectName(QStringLiteral("frame_4"));
        frame_4->setGeometry(QRect(500, 40, 521, 631));
        frame_4->setFrameShape(QFrame::StyledPanel);
        frame_4->setFrameShadow(QFrame::Raised);
        horizontalLayout_2 = new QHBoxLayout(frame_4);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        tabWidget = new QTabWidget(frame_4);
        tabWidget->setObjectName(QStringLiteral("tabWidget"));
        QSizePolicy sizePolicy(QSizePolicy::MinimumExpanding, QSizePolicy::MinimumExpanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(tabWidget->sizePolicy().hasHeightForWidth());
        tabWidget->setSizePolicy(sizePolicy);
        tabWidget->setMinimumSize(QSize(505, 610));
        tabWidget->setMaximumSize(QSize(505, 610));
        tab = new QWidget();
        tab->setObjectName(QStringLiteral("tab"));
        tabWidget->addTab(tab, QString());
        tab_2 = new QWidget();
        tab_2->setObjectName(QStringLiteral("tab_2"));
        tabWidget->addTab(tab_2, QString());

        horizontalLayout_2->addWidget(tabWidget);

        frame_3 = new QFrame(frm_cellcontroller);
        frame_3->setObjectName(QStringLiteral("frame_3"));
        frame_3->setGeometry(QRect(940, 0, 85, 41));
        frame_3->setFrameShape(QFrame::StyledPanel);
        frame_3->setFrameShadow(QFrame::Raised);
        pushButton_4 = new QPushButton(frame_3);
        pushButton_4->setObjectName(QStringLiteral("pushButton_4"));
        pushButton_4->setGeometry(QRect(2, 5, 80, 32));
        pushButton_4->setStyleSheet(QLatin1String("font: bold,14pt \"Ubuntu\";\n"
"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:1, y2:0, stop:0 yellow, stop:1 rgba(255, 255, 255, 255));\n"
"color: fuchsia;"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/png/resource/tools_png/exit_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButton_4->setIcon(icon1);
        pushButton_4->setIconSize(QSize(24, 24));

        retranslateUi(frm_cellcontroller);

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(frm_cellcontroller);
    } // setupUi

    void retranslateUi(QWidget *frm_cellcontroller)
    {
        frm_cellcontroller->setWindowTitle(QApplication::translate("frm_cellcontroller", "Form", Q_NULLPTR));
        groupBox->setTitle(QApplication::translate("frm_cellcontroller", "map view", Q_NULLPTR));
        pushButton_3->setText(QApplication::translate("frm_cellcontroller", "Confirm", Q_NULLPTR));
        label->setText(QApplication::translate("frm_cellcontroller", "Cell Controller ID:", Q_NULLPTR));
        tabWidget->setTabText(tabWidget->indexOf(tab), QApplication::translate("frm_cellcontroller", "Tab 1", Q_NULLPTR));
        tabWidget->setTabText(tabWidget->indexOf(tab_2), QApplication::translate("frm_cellcontroller", "Tab 2", Q_NULLPTR));
        pushButton_4->setText(QApplication::translate("frm_cellcontroller", "Exit", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class frm_cellcontroller: public Ui_frm_cellcontroller {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FRM_CELLCONTROLLER_H
