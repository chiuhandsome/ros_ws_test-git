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
    QAction *actionParameter_check;
    QAction *actionParameter_PID;
    QAction *actionAlam_Basecode;
    QAction *actionOperate_Basecode;
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
    QAction *actionParameter_Target_pose;
    QAction *actionFunction_Basecode;
    QAction *actionWorksheet_Manager;
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
        actionParameter_check = new QAction(MainWindow);
        actionParameter_check->setObjectName(QStringLiteral("actionParameter_check"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/png/resource/tools_png/folder_300.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionParameter_check->setIcon(icon1);
        actionParameter_PID = new QAction(MainWindow);
        actionParameter_PID->setObjectName(QStringLiteral("actionParameter_PID"));
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/png/resource/tools_png/Back_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionParameter_PID->setIcon(icon2);
        actionAlam_Basecode = new QAction(MainWindow);
        actionAlam_Basecode->setObjectName(QStringLiteral("actionAlam_Basecode"));
        QIcon icon3;
        icon3.addFile(QStringLiteral(":/png/resource/tools_png/hint_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionAlam_Basecode->setIcon(icon3);
        actionOperate_Basecode = new QAction(MainWindow);
        actionOperate_Basecode->setObjectName(QStringLiteral("actionOperate_Basecode"));
        QIcon icon4;
        icon4.addFile(QStringLiteral(":/png/resource/tools_png/folder_100.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionOperate_Basecode->setIcon(icon4);
        actionProduction_Order_Manager = new QAction(MainWindow);
        actionProduction_Order_Manager->setObjectName(QStringLiteral("actionProduction_Order_Manager"));
        QIcon icon5;
        icon5.addFile(QStringLiteral(":/png/resource/tools_png/pen_004.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionProduction_Order_Manager->setIcon(icon5);
        actionAlarm_History = new QAction(MainWindow);
        actionAlarm_History->setObjectName(QStringLiteral("actionAlarm_History"));
        QIcon icon6;
        icon6.addFile(QStringLiteral(":/png/resource/tools_png/doc_006.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionAlarm_History->setIcon(icon6);
        actionOperation_History = new QAction(MainWindow);
        actionOperation_History->setObjectName(QStringLiteral("actionOperation_History"));
        QIcon icon7;
        icon7.addFile(QStringLiteral(":/png/resource/tools_png/doc_exec.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionOperation_History->setIcon(icon7);
        actionDevice_maintain_History = new QAction(MainWindow);
        actionDevice_maintain_History->setObjectName(QStringLiteral("actionDevice_maintain_History"));
        QIcon icon8;
        icon8.addFile(QStringLiteral(":/png/resource/tools_png/doc_003.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionDevice_maintain_History->setIcon(icon8);
        actionEnglish = new QAction(MainWindow);
        actionEnglish->setObjectName(QStringLiteral("actionEnglish"));
        QIcon icon9;
        icon9.addFile(QStringLiteral(":/png/resource/tools_png/Flag_004.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionEnglish->setIcon(icon9);
        actionTraditional_Chinese = new QAction(MainWindow);
        actionTraditional_Chinese->setObjectName(QStringLiteral("actionTraditional_Chinese"));
        QIcon icon10;
        icon10.addFile(QStringLiteral(":/png/resource/tools_png/Flag_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionTraditional_Chinese->setIcon(icon10);
        actionSimplified_Chinese = new QAction(MainWindow);
        actionSimplified_Chinese->setObjectName(QStringLiteral("actionSimplified_Chinese"));
        QIcon icon11;
        icon11.addFile(QStringLiteral(":/png/resource/tools_png/Flag_003.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionSimplified_Chinese->setIcon(icon11);
        actionHelp = new QAction(MainWindow);
        actionHelp->setObjectName(QStringLiteral("actionHelp"));
        QIcon icon12;
        icon12.addFile(QStringLiteral(":/png/resource/tools_png/inquire_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionHelp->setIcon(icon12);
        actionAbout = new QAction(MainWindow);
        actionAbout->setObjectName(QStringLiteral("actionAbout"));
        QIcon icon13;
        icon13.addFile(QStringLiteral(":/png/resource/tools_png/color_005.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionAbout->setIcon(icon13);
        actionSystem_Close = new QAction(MainWindow);
        actionSystem_Close->setObjectName(QStringLiteral("actionSystem_Close"));
        QIcon icon14;
        icon14.addFile(QStringLiteral(":/png/resource/tools_png/exit_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionSystem_Close->setIcon(icon14);
        actionDevice_Maintain_Manager = new QAction(MainWindow);
        actionDevice_Maintain_Manager->setObjectName(QStringLiteral("actionDevice_Maintain_Manager"));
        QIcon icon15;
        icon15.addFile(QStringLiteral(":/png/resource/tools_png/tool_011.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionDevice_Maintain_Manager->setIcon(icon15);
        actionparameters_set = new QAction(MainWindow);
        actionparameters_set->setObjectName(QStringLiteral("actionparameters_set"));
        QIcon icon16;
        icon16.addFile(QStringLiteral(":/png/resource/tools_png/DownLoad_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionparameters_set->setIcon(icon16);
        actionParameter_Target_pose = new QAction(MainWindow);
        actionParameter_Target_pose->setObjectName(QStringLiteral("actionParameter_Target_pose"));
        QIcon icon17;
        icon17.addFile(QStringLiteral(":/png/resource/tools_png/tool_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionParameter_Target_pose->setIcon(icon17);
        actionFunction_Basecode = new QAction(MainWindow);
        actionFunction_Basecode->setObjectName(QStringLiteral("actionFunction_Basecode"));
        QIcon icon18;
        icon18.addFile(QStringLiteral(":/png/resource/tools_png/clipboard_002.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionFunction_Basecode->setIcon(icon18);
        actionWorksheet_Manager = new QAction(MainWindow);
        actionWorksheet_Manager->setObjectName(QStringLiteral("actionWorksheet_Manager"));
        QIcon icon19;
        icon19.addFile(QStringLiteral(":/png/resource/tools_png/Browse_000.png"), QSize(), QIcon::Normal, QIcon::Off);
        actionWorksheet_Manager->setIcon(icon19);
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
        menuBasis_Data->setIcon(icon6);
        menuAGV_Data = new QMenu(menuDatabase_Manager);
        menuAGV_Data->setObjectName(QStringLiteral("menuAGV_Data"));
        QIcon icon20;
        icon20.addFile(QStringLiteral(":/png/resource/tools_png/robot_001.png"), QSize(), QIcon::Normal, QIcon::Off);
        menuAGV_Data->setIcon(icon20);
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
        menuBasis_Data->addAction(actionParameter_check);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionParameter_PID);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionParameter_Target_pose);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionAlam_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionOperate_Basecode);
        menuBasis_Data->addSeparator();
        menuBasis_Data->addAction(actionFunction_Basecode);
        menuAGV_Data->addAction(actionWorksheet_Manager);
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
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "car data management", Q_NULLPTR));
        actionParameter_check->setText(QApplication::translate("MainWindow", "Action Recovery parameters", Q_NULLPTR));
        actionParameter_PID->setText(QApplication::translate("MainWindow", "PID control parameter", Q_NULLPTR));
        actionAlam_Basecode->setText(QApplication::translate("MainWindow", "Alam Basecode", Q_NULLPTR));
        actionOperate_Basecode->setText(QApplication::translate("MainWindow", "Operate Basecode", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        actionOperate_Basecode->setToolTip(QApplication::translate("MainWindow", "Operate Basecode", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
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
        actionParameter_Target_pose->setText(QApplication::translate("MainWindow", "Parameter_Target_pose2d", Q_NULLPTR));
        actionFunction_Basecode->setText(QApplication::translate("MainWindow", "Function Basecode", Q_NULLPTR));
        actionWorksheet_Manager->setText(QApplication::translate("MainWindow", "Worksheet Manager", Q_NULLPTR));
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
