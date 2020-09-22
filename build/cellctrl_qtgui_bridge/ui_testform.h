/********************************************************************************
** Form generated from reading UI file 'testform.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TESTFORM_H
#define UI_TESTFORM_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_testForm
{
public:
    QHBoxLayout *horizontalLayout;
    QCheckBox *checkBox;
    QToolButton *toolButton;
    QPushButton *pushButton;

    void setupUi(QWidget *testForm)
    {
        if (testForm->objectName().isEmpty())
            testForm->setObjectName(QStringLiteral("testForm"));
        testForm->resize(327, 216);
        horizontalLayout = new QHBoxLayout(testForm);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        checkBox = new QCheckBox(testForm);
        checkBox->setObjectName(QStringLiteral("checkBox"));

        horizontalLayout->addWidget(checkBox);

        toolButton = new QToolButton(testForm);
        toolButton->setObjectName(QStringLiteral("toolButton"));

        horizontalLayout->addWidget(toolButton);

        pushButton = new QPushButton(testForm);
        pushButton->setObjectName(QStringLiteral("pushButton"));

        horizontalLayout->addWidget(pushButton);


        retranslateUi(testForm);

        QMetaObject::connectSlotsByName(testForm);
    } // setupUi

    void retranslateUi(QWidget *testForm)
    {
        testForm->setWindowTitle(QApplication::translate("testForm", "Form", Q_NULLPTR));
        checkBox->setText(QApplication::translate("testForm", "CheckBox", Q_NULLPTR));
        toolButton->setText(QApplication::translate("testForm", "...", Q_NULLPTR));
        pushButton->setText(QApplication::translate("testForm", "PushButton", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class testForm: public Ui_testForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TESTFORM_H
