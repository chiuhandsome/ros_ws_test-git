/****************************************************************************
** Meta object code from reading C++ file 'ros_controlmodel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/ros_base/cell_controller/View/cellctrl_qtgui_bridge/include/cell_controller/ros_controlmodel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ros_controlmodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ros_controlmodel_t {
    QByteArrayData data[22];
    char stringdata0[439];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ros_controlmodel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ros_controlmodel_t qt_meta_stringdata_ros_controlmodel = {
    {
QT_MOC_LITERAL(0, 0, 16), // "ros_controlmodel"
QT_MOC_LITERAL(1, 17, 25), // "mcfunction_update_Changed"
QT_MOC_LITERAL(2, 43, 0), // ""
QT_MOC_LITERAL(3, 44, 15), // "db_tb_edit_type"
QT_MOC_LITERAL(4, 60, 10), // "_edit_type"
QT_MOC_LITERAL(5, 71, 62), // "boost::shared_ptr<cellctrl_co..."
QT_MOC_LITERAL(6, 134, 5), // "_data"
QT_MOC_LITERAL(7, 140, 25), // "mcfunction_delete_Changed"
QT_MOC_LITERAL(8, 166, 11), // "std::string"
QT_MOC_LITERAL(9, 178, 11), // "unique_code"
QT_MOC_LITERAL(10, 190, 24), // "mcfunction_query_Changed"
QT_MOC_LITERAL(11, 215, 17), // "db_tb_search_type"
QT_MOC_LITERAL(12, 233, 10), // "query_base"
QT_MOC_LITERAL(13, 244, 30), // "dynamic_mcfunction_search_type"
QT_MOC_LITERAL(14, 275, 9), // "query_opt"
QT_MOC_LITERAL(15, 285, 12), // "search_param"
QT_MOC_LITERAL(16, 298, 27), // "on_mcfunction_update_action"
QT_MOC_LITERAL(17, 326, 27), // "on_mcfunction_delete_action"
QT_MOC_LITERAL(18, 354, 26), // "on_mcfunction_query_action"
QT_MOC_LITERAL(19, 381, 25), // "set_mcfunction_cltService"
QT_MOC_LITERAL(20, 407, 19), // "ros::ServiceClient&"
QT_MOC_LITERAL(21, 427, 11) // "_cltService"

    },
    "ros_controlmodel\0mcfunction_update_Changed\0"
    "\0db_tb_edit_type\0_edit_type\0"
    "boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction>\0"
    "_data\0mcfunction_delete_Changed\0"
    "std::string\0unique_code\0"
    "mcfunction_query_Changed\0db_tb_search_type\0"
    "query_base\0dynamic_mcfunction_search_type\0"
    "query_opt\0search_param\0"
    "on_mcfunction_update_action\0"
    "on_mcfunction_delete_action\0"
    "on_mcfunction_query_action\0"
    "set_mcfunction_cltService\0ros::ServiceClient&\0"
    "_cltService"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ros_controlmodel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   49,    2, 0x06 /* Public */,
       7,    1,   54,    2, 0x06 /* Public */,
      10,    3,   57,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      16,    2,   64,    2, 0x0a /* Public */,
      17,    1,   69,    2, 0x0a /* Public */,
      18,    3,   72,    2, 0x0a /* Public */,
      19,    1,   79,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 5,    4,    6,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 11, 0x80000000 | 13, 0x80000000 | 8,   12,   14,   15,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 5,    4,    6,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void, 0x80000000 | 11, 0x80000000 | 13, 0x80000000 | 8,   12,   14,   15,
    QMetaType::Void, 0x80000000 | 20,   21,

       0        // eod
};

void ros_controlmodel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ros_controlmodel *_t = static_cast<ros_controlmodel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->mcfunction_update_Changed((*reinterpret_cast< db_tb_edit_type(*)>(_a[1])),(*reinterpret_cast< const boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction>(*)>(_a[2]))); break;
        case 1: _t->mcfunction_delete_Changed((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 2: _t->mcfunction_query_Changed((*reinterpret_cast< db_tb_search_type(*)>(_a[1])),(*reinterpret_cast< dynamic_mcfunction_search_type(*)>(_a[2])),(*reinterpret_cast< std::string(*)>(_a[3]))); break;
        case 3: _t->on_mcfunction_update_action((*reinterpret_cast< db_tb_edit_type(*)>(_a[1])),(*reinterpret_cast< const boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction>(*)>(_a[2]))); break;
        case 4: _t->on_mcfunction_delete_action((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        case 5: _t->on_mcfunction_query_action((*reinterpret_cast< db_tb_search_type(*)>(_a[1])),(*reinterpret_cast< dynamic_mcfunction_search_type(*)>(_a[2])),(*reinterpret_cast< std::string(*)>(_a[3]))); break;
        case 6: _t->set_mcfunction_cltService((*reinterpret_cast< ros::ServiceClient(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (ros_controlmodel::*_t)(db_tb_edit_type , const boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction> & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ros_controlmodel::mcfunction_update_Changed)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (ros_controlmodel::*_t)(std::string );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ros_controlmodel::mcfunction_delete_Changed)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (ros_controlmodel::*_t)(db_tb_search_type , dynamic_mcfunction_search_type , std::string );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ros_controlmodel::mcfunction_query_Changed)) {
                *result = 2;
                return;
            }
        }
    }
}

const QMetaObject ros_controlmodel::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_ros_controlmodel.data,
      qt_meta_data_ros_controlmodel,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *ros_controlmodel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ros_controlmodel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ros_controlmodel.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int ros_controlmodel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void ros_controlmodel::mcfunction_update_Changed(db_tb_edit_type _t1, const boost::shared_ptr<cellctrl_control_msgs::cell_base_mcfunction> & _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void ros_controlmodel::mcfunction_delete_Changed(std::string _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void ros_controlmodel::mcfunction_query_Changed(db_tb_search_type _t1, dynamic_mcfunction_search_type _t2, std::string _t3)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
