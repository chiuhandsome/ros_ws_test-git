/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionStation_Data;
    QAction *actionOrder_Data;
    QAction *actionDevice_Basecode;
    QAction *actionManu_func_Basecode;
    QAction *actionTranferType_Basecode;
    QAction *actionAlam_Basecode;
    QAction *actionMaintain_Basecode;
    QAction *actionOperate_Basecode;
    QAction *actionAGV_Type_Basecode;
    QAction *actionCell_Controller_Basecode;
    QAction *actionAGV_Stardand_Modle;
    QAction *actionProduction_Order_Manager;
    QAction *actionAlarm_History;
    QAction *actionOperation_History;
    QAction *actionDevice_maintain_History;
    QAction *actionEnglish;
    QAction *actionTraditional_Chinese;
    QAction *actionSimplified_Chinese;
    QAction *actionHelp;
    QAction *actionAbout;
    QAction *actionSystem_Close;
    QAction *actionDevice_Maintain_Manager;
    QAction *actionparameters_set;
    QWidget *centralWidget;
    QHBoxLayout *horizontalLayout;
    QWidget *module_widget;
    QWidget *verticalLayoutWidget;
    QVBoxLayout *verticalLayout;
    QMenuBar *menuBar;
    QMenu *menuDatabase_Manager;
    QMenu *menuBasis_Data;
    QMenu *menuAGV_Data;
    QMenu *menuMaintain;
    QMenu *menuSet_up;
    QMenu *menuOperation;
    QMenu *menuInquire;
    QMenu *menutools;
    QMenu *menuLanguages;
    QMenu *menuHelp;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(1024, 768);
        QIcon icon;
        icon.addFile(QStringLiteral(":/png/resource/tools_png/pen_005.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindow->setWindowIcon(icon);
        actionStation_Data = new QAction(MainWindow);
        actionStation_Data->setObjectName(QStringLiteral("actionStation_Data"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/png/resource/tools_png/screen_008.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionStation_Data->setIcon(icon1);
        actionOrder_Data = new QAction(MainWindow);
        actionOrder_Data->setObjectName(QStringLiteral("actionOrder_Data"));
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/png/resource/tools_png/folder_301.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionOrder_Data->setIcon(icon2);
        actionDevice_Basecode = new QAction(MainWindow);
        actionDevice_Basecode->setObjectName(QStringLiteral("actionDevice_Basecode"));
        QIcon icon3;
        icon3.addFile(QStringLiteral(":/png/resource/tools_png/folder_300.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionDevice_Basecode->setIcon(icon3);
        actionManu_func_Basecode = new QAction(MainWindow);
        actionManu_func_Basecode->setObjectName(QStringLiteral("actionManu_func_Basecode"));
        QIcon icon4;
        icon4.addFile(QStringLiteral(":/png/resource/tools_png/doc_006.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionManu_func_Basecode->setIcon(icon4);
        actionTranferType_Basecode = new QAction(MainWindow);
        actionTranferType_Basecode->setObjectName(QStringLiteral("actionTranferType_Basecode"));
        QIcon icon5;
        icon5.addFile(QStringLiteral(":/png/resource/tools_png/Back_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionTranferType_Basecode->setIcon(icon5);
        actionAlam_Basecode = new QAction(MainWindow);
        actionAlam_Basecode->setObjectName(QStringLiteral("actionAlam_Basecode"));
        QIcon icon6;
        icon6.addFile(QStringLiteral(":/png/resource/tools_png/hint_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionAlam_Basecode->setIcon(icon6);
        actionMaintain_Basecode = new QAction(MainWindow);
        actionMaintain_Basecode->setObjectName(QStringLiteral("actionMaintain_Basecode"));
        QIcon icon7;
        icon7.addFile(QStringLiteral(":/png/resource/tools_png/folder_100.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionMaintain_Basecode->setIcon(icon7);
        actionOperate_Basecode = new QAction(MainWindow);
        actionOperate_Basecode->setObjectName(QStringLiteral("actionOperate_Basecode"));
        QIcon icon8;
        icon8.addFile(QStringLiteral(":/png/resource/tools_png/clipboard_002.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionOperate_Basecode->setIcon(icon8);
        actionAGV_Type_Basecode = new QAction(MainWindow);
        actionAGV_Type_Basecode->setObjectName(QStringLiteral("actionAGV_Type_Basecode"));
        QIcon icon9;
        icon9.addFile(QStringLiteral(":/png/resource/tools_png/tool_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionAGV_Type_Basecode->setIcon(icon9);
        actionCell_Controller_Basecode = new QAction(MainWindow);
        actionCell_Controller_Basecode->setObjectName(QStringLiteral("actionCell_Controller_Basecode"));
        QIcon icon10;
        icon10.addFile(QStringLiteral(":/png/resource/tools_png/net_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionCell_Controller_Basecode->setIcon(icon10);
        actionAGV_Stardand_Modle = new QAction(MainWindow);
        actionAGV_Stardand_Modle->setObjectName(QStringLiteral("actionAGV_Stardand_Modle"));
        QIcon icon11;
        icon11.addFile(QStringLiteral(":/png/resource/tools_png/tool_004.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionAGV_Stardand_Modle->setIcon(icon11);
        actionProduction_Order_Manager = new QAction(MainWindow);
        actionProduction_Order_Manager->setObjectName(QStringLiteral("actionProduction_Order_Manager"));
        QIcon icon12;
        icon12.addFile(QStringLiteral(":/png/resource/tools_png/pen_004.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionProduction_Order_Manager->setIcon(icon12);
        actionAlarm_History = new QAction(MainWindow);
        actionAlarm_History->setObjectName(QStringLiteral("actionAlarm_History"));
        actionAlarm_History->setIcon(icon4);
        actionOperation_History = new QAction(MainWindow);
        actionOperation_History->setObjectName(QStringLiteral("actionOperation_History"));
        QIcon icon13;
        icon13.addFile(QStringLiteral(":/png/resource/tools_png/doc_exec.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionOperation_History->setIcon(icon13);
        actionDevice_maintain_History = new QAction(MainWindow);
        actionDevice_maintain_History->setObjectName(QStringLiteral("actionDevice_maintain_History"));
        QIcon icon14;
        icon14.addFile(QStringLiteral(":/png/resource/tools_png/doc_003.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionDevice_maintain_History->setIcon(icon14);
        actionEnglish = new QAction(MainWindow);
        actionEnglish->setObjectName(QStringLiteral("actionEnglish"));
        QIcon icon15;
        icon15.addFile(QStringLiteral(":/png/resource/tools_png/Flag_004.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionEnglish->setIcon(icon15);
        actionTraditional_Chinese = new QAction(MainWindow);
        actionTraditional_Chinese->setObjectName(QStringLiteral("actionTraditional_Chinese"));
        QIcon icon16;
        icon16.addFile(QStringLiteral(":/png/resource/tools_png/Flag_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionTraditional_Chinese->setIcon(icon16);
        actionSimplified_Chinese = new QAction(MainWindow);
        actionSimplified_Chinese->setObjectName(QStringLiteral("actionSimplified_Chinese"));
        QIcon icon17;
        icon17.addFile(QStringLiteral(":/png/resource/tools_png/Flag_003.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionSimplified_Chinese->setIcon(icon17);
        actionHelp = new QAction(MainWindow);
        actionHelp->setObjectName(QStringLiteral("actionHelp"));
        QIcon icon18;
        icon18.addFile(QStringLiteral(":/png/resource/tools_png/inquire_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionHelp->setIcon(icon18);
        actionAbout = new QAction(MainWindow);
        actionAbout->setObjectName(QStringLiteral("actionAbout"));
        QIcon icon19;
        icon19.addFile(QStringLiteral(":/png/resource/tools_png/color_005.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionAbout->setIcon(icon19);
        actionSystem_Close = new QAction(MainWindow);
        actionSystem_Close->setObjectName(QStringLiteral("actionSystem_Close"));
        QIcon icon20;
        icon20.addFile(QStringLiteral(":/png/resource/tools_png/exit_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionSystem_Close->setIcon(icon20);
        actionDevice_Maintain_Manager = new QAction(MainWindow);
        actionDevice_Maintain_Manager->setObjectName(QStringLiteral("actionDevice_Maintain_Manager"));
        QIcon icon21;
        icon21.addFile(QStringLiteral(":/png/resource/tools_png/tool_011.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionDevice_Maintain_Manager->setIcon(icon21);
        actionparameters_set = new QAction(MainWindow);
        actionparameters_set->setObjectName(QStringLiteral("actionparameters_set"));
        QIcon icon22;
        icon22.addFile(QStringLiteral(":/png/resource/tools_png/DownLoad_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionparameters_set->setIcon(icon22);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        horizontalLayout = new QHBoxLayout(centralWidget);
        horizontalLayout->setSpacing(6);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        module_widget = new QWidget(centralWidget);
        module_widget->setObjectName(QStringLiteral("module_widget"));
        module_widget->setStyleSheet(QStringLiteral("background-color: rgb(211, 215, 207);"));
        verticalLayoutWidget = new QWidget(module_widget);
        verticalLayoutWidget->setObjectName(QStringLiteral("verticalLayoutWidget"));
        verticalLayoutWidget->setGeometry(QRect(10, 10, 2, 2));
        verticalLayout = new QVBoxLayout(verticalLayoutWidget);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);

        horizontalLayout->addWidget(module_widget);

        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1024, 22));
        menuDatabase_Manager = new QMenu(menuBar);
        menuDatabase_Manager->setObjectName(QStringLiteral("menuDatabase_Manager"));
        menuDatabase_Manager->setSeparatorsCollapsible(false);
        menuDatabase_Manager->setToolTipsVisible(false);
        menuBasis_Data = new QMenu(menuDatabase_Manager);
        menuBasis_Data->setObjectName(QStringLiteral("menuBasis_Data"));
        menuBasis_Data->setIcon(icon4);
        menuAGV_Data = new QMenu(menuDatabase_Manager);
        menuAGV_Data->setObjectName(QStringLiteral("menuAGV_Data"));
        QIcon icon23;
        icon23.addFile(QStringLiteral(":/png/resource/tools_png/robot_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        menuAGV_Data->setIcon(icon23);
        menuMaintain = new QMenu(menuBar);
        menuMaintain->setObjectName(QStringLiteral("menuMaintain"));
        menuSet_up = new QMenu(menuBar);
        menuSet_up->setObjectName(QStringLiteral("menuSet_up"));
        menuOperation = new QMenu(menuBar);
        menuOperation->setObjectName(QStringLiteral("menuOperation"));
        menuInquire = new QMenu(menuBar);
        menuInquire->setObjectName(QStringLiteral("menuInquire"));
        menutools = new QMenu(menuBar);
        menutools->setObjectName(QStringLiteral("menutools"));
        menuLanguages = new QMenu(menutools);
        menuLanguages->setObjectName(QStringLiteral("menuLanguages"));
        menuHelp = new QMenu(menuBar);
        menuHelp->setObjectName(QStringLiteral("menuHelp"));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        menuBar->addAction(menuDatabase_Manager->menuAction());
        menuBar->addAction(menuSet_up->menuAction());
        menuBar->addAction(menuOperation->menuAction());
        menuBar->addAction(menuMaintain->menuAction());
        menuBar->addAction(menuInquire->menuAction());
        menuBar->addAction(menutools->menuAction());
        menuBar->addAction(menuHelp->menuAction());
        menuDatabase_Manager->addAction(menuBasis_Data->menuAction());
        menuDatabase_Manager->addSeparator();
        menuDatabase_Manager->addAction(menuAGV_Data->menuAction());
        menuDatabase_Manager->addSeparator();
        menuDatabase_Manager->addAction(actionStation_Data);
        menuDatabase_Manager->addSeparator();
        menuDatabase_Manager->addAction(actionOrder_Data);
        menuBasis_Data->addAction(actionDevice_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionManu_func_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionTranferType_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionAlam_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionMaintain_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionOperate_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionAGV_Type_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionCell_Controller_Basecode);
        menuAGV_Data->addAction(actionAGV_Stardand_Modle);
        menuMaintain->addAction(actionDevice_Maintain_Manager);
        menuSet_up->addAction(actionparameters_set);
        menuOperation->addAction(actionProduction_Order_Manager);
        menuOperation->addSeparator();
        menuOperation->addAction(actionSystem_Close);
        menuInquire->addAction(actionAlarm_History);
        menuInquire->addSeparator();
        menuInquire->addAction(actionOperation_History);
        menuInquire->addSeparator();
        menuInquire->addAction(actionDevice_maintain_History);
        menutools->addAction(menuLanguages->menuAction());
        menuLanguages->addAction(actionEnglish);
        menuLanguages->addSeparator();
        menuLanguages->addAction(actionTraditional_Chinese);
        menuLanguages->addSeparator();
        menuLanguages->addAction(actionSimplified_Chinese);
        menuHelp->addAction(actionHelp);
        menuHelp->addSeparator();
        menuHelp->addAction(actionAbout);
        mainToolBar->addAction(actionEnglish);
        mainToolBar->addAction(actionTraditional_Chinese);
        mainToolBar->addAction(actionSimplified_Chinese);
        mainToolBar->addSeparator();

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "Cell Controller", Q_NULLPTR));
        actionStation_Data->setText(QApplication::translate("MainWindow", "Station Data", Q_NULLPTR));
        actionOrder_Data->setText(QApplication::translate("MainWindow", "Order_Data", Q_NULLPTR));
        actionDevice_Basecode->setText(QApplication::translate("MainWindow", "Device Basecode", Q_NULLPTR));
        actionManu_func_Basecode->setText(QApplication::translate("MainWindow", "Manu_Function_Basecode", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        actionManu_func_Basecode->setToolTip(QApplication::translate("MainWindow", "Manu_Function_Basecode", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        actionTranferType_Basecode->setText(QApplication::translate("MainWindow", "TranferType_Basecode", Q_NULLPTR));
        actionAlam_Basecode->setText(QApplication::translate("MainWindow", "Alam Basecode", Q_NULLPTR));
        actionMaintain_Basecode->setText(QApplication::translate("MainWindow", "Maintain Basecode", Q_NULLPTR));
        actionOperate_Basecode->setText(QApplication::translate("MainWindow", "Operate Basecode", Q_NULLPTR));
        actionAGV_Type_Basecode->setText(QApplication::translate("MainWindow", "AGV Type Basecode", Q_NULLPTR));
        actionCell_Controller_Basecode->setText(QApplication::translate("MainWindow", "Cell Controller Basecode", Q_NULLPTR));
        actionAGV_Stardand_Modle->setText(QApplication::translate("MainWindow", "AGV Stardand Modle", Q_NULLPTR));
        actionProduction_Order_Manager->setText(QApplication::translate("MainWindow", "Production Order Manager", Q_NULLPTR));
        actionAlarm_History->setText(QApplication::translate("MainWindow", "Alarm History", Q_NULLPTR));
        actionOperation_History->setText(QApplication::translate("MainWindow", "Operation History", Q_NULLPTR));
        actionDevice_maintain_History->setText(QApplication::translate("MainWindow", "Device maintain History", Q_NULLPTR));
        actionEnglish->setText(QApplication::translate("MainWindow", "English", Q_NULLPTR));
        actionTraditional_Chinese->setText(QApplication::translate("MainWindow", "Traditional Chinese", Q_NULLPTR));
        actionSimplified_Chinese->setText(QApplication::translate("MainWindow", "Simplified Chinese", Q_NULLPTR));
        actionHelp->setText(QApplication::translate("MainWindow", "Help", Q_NULLPTR));
        actionAbout->setText(QApplication::translate("MainWindow", "About", Q_NULLPTR));
        actionSystem_Close->setText(QApplication::translate("MainWindow", "System Close", Q_NULLPTR));
        actionDevice_Maintain_Manager->setText(QApplication::translate("MainWindow", "Device Maintain Manager", Q_NULLPTR));
        actionparameters_set->setText(QApplication::translate("MainWindow", "parameters_set", Q_NULLPTR));
        menuDatabase_Manager->setTitle(QApplication::translate("MainWindow", "&Database Manager", Q_NULLPTR));
        menuBasis_Data->setTitle(QApplication::translate("MainWindow", "Basis Data", Q_NULLPTR));
        menuAGV_Data->setTitle(QApplication::translate("MainWindow", "AGV Data", Q_NULLPTR));
        menuMaintain->setTitle(QApplication::translate("MainWindow", "Maintain", Q_NULLPTR));
        menuSet_up->setTitle(QApplication::translate("MainWindow", "Set up", Q_NULLPTR));
        menuOperation->setTitle(QApplication::translate("MainWindow", "Operation", Q_NULLPTR));
        menuInquire->setTitle(QApplication::translate("MainWindow", "Inquire", Q_NULLPTR));
        menutools->setTitle(QApplication::translate("MainWindow", "Tools", Q_NULLPTR));
        menuLanguages->setTitle(QApplication::translate("MainWindow", "Languages", Q_NULLPTR));
        menuHelp->setTitle(QApplication::translate("MainWindow", "Help", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
