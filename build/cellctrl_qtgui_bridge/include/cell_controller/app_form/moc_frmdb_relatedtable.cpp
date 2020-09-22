/****************************************************************************
** Meta object code from reading C++ file 'frmdb_relatedtable.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/ros_base/cell_controller/View/cellctrl_qtgui_bridge/include/cell_controller/app_form/frmdb_relatedtable.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'frmdb_relatedtable.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_frmdb_relatedtable_t {
    QByteArrayData data[12];
    char stringdata0[287];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_frmdb_relatedtable_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_frmdb_relatedtable_t qt_meta_stringdata_frmdb_relatedtable = {
    {
QT_MOC_LITERAL(0, 0, 18), // "frmdb_relatedtable"
QT_MOC_LITERAL(1, 19, 20), // "on_btn_close_clicked"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 21), // "on_btn_op_add_clicked"
QT_MOC_LITERAL(4, 63, 24), // "on_btn_op_modify_clicked"
QT_MOC_LITERAL(5, 88, 21), // "on_btn_cancel_clicked"
QT_MOC_LITERAL(6, 110, 24), // "on_btn_op_delete_clicked"
QT_MOC_LITERAL(7, 135, 25), // "on_btn_op_inquire_clicked"
QT_MOC_LITERAL(8, 161, 28), // "on_btn_op_add_detail_clicked"
QT_MOC_LITERAL(9, 190, 31), // "on_btn_op_modify_detail_clicked"
QT_MOC_LITERAL(10, 222, 31), // "on_btn_op_delete_detail_clicked"
QT_MOC_LITERAL(11, 254, 32) // "on_btn_op_inquire_detail_clicked"

    },
    "frmdb_relatedtable\0on_btn_close_clicked\0"
    "\0on_btn_op_add_clicked\0on_btn_op_modify_clicked\0"
    "on_btn_cancel_clicked\0on_btn_op_delete_clicked\0"
    "on_btn_op_inquire_clicked\0"
    "on_btn_op_add_detail_clicked\0"
    "on_btn_op_modify_detail_clicked\0"
    "on_btn_op_delete_detail_clicked\0"
    "on_btn_op_inquire_detail_clicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_frmdb_relatedtable[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x08 /* Private */,
       3,    0,   65,    2, 0x08 /* Private */,
       4,    0,   66,    2, 0x08 /* Private */,
       5,    0,   67,    2, 0x08 /* Private */,
       6,    0,   68,    2, 0x08 /* Private */,
       7,    0,   69,    2, 0x08 /* Private */,
       8,    0,   70,    2, 0x08 /* Private */,
       9,    0,   71,    2, 0x08 /* Private */,
      10,    0,   72,    2, 0x08 /* Private */,
      11,    0,   73,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void frmdb_relatedtable::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        frmdb_relatedtable *_t = static_cast<frmdb_relatedtable *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->on_btn_close_clicked(); break;
        case 1: _t->on_btn_op_add_clicked(); break;
        case 2: _t->on_btn_op_modify_clicked(); break;
        case 3: _t->on_btn_cancel_clicked(); break;
        case 4: _t->on_btn_op_delete_clicked(); break;
        case 5: _t->on_btn_op_inquire_clicked(); break;
        case 6: _t->on_btn_op_add_detail_clicked(); break;
        case 7: _t->on_btn_op_modify_detail_clicked(); break;
        case 8: _t->on_btn_op_delete_detail_clicked(); break;
        case 9: _t->on_btn_op_inquire_detail_clicked(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject frmdb_relatedtable::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_frmdb_relatedtable.data,
      qt_meta_data_frmdb_relatedtable,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *frmdb_relatedtable::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *frmdb_relatedtable::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_frmdb_relatedtable.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int frmdb_relatedtable::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
