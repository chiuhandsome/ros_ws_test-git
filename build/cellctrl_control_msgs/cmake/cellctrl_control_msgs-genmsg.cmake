# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cellctrl_control_msgs: 25 messages, 25 services")

set(MSG_I_FLAGS "-Icellctrl_control_msgs:/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cellctrl_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv" "cellctrl_control_msgs/cell_work_orderitems"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv" "cellctrl_control_msgs/cell_maintainhistory"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv" "cellctrl_control_msgs/cell_work_ordergoods"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv" "cellctrl_control_msgs/cell_agv_battery"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv" "cellctrl_control_msgs/cell_operatehistory"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv" "cellctrl_control_msgs/cell_base_device"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv" "cellctrl_control_msgs/cell_battery_remain"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv" "geometry_msgs/Pose:cellctrl_control_msgs/base_cell_controller:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv" "cellctrl_control_msgs/cell_base_transfer"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv" "cellctrl_control_msgs/cell_base_alarm"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv" "cellctrl_control_msgs/cell_alarmhistory"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv" "cellctrl_control_msgs/cell_agv_basetype"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv" "cellctrl_control_msgs/cell_agv_camera"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv" "cellctrl_control_msgs/cell_agv_imu"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv" "cellctrl_control_msgs/cell_work_order"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv" "cellctrl_control_msgs/cell_agv_motor"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv" "cellctrl_control_msgs/cell_base_operate"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv" "cellctrl_control_msgs/cell_agv_main"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv" "cellctrl_control_msgs/cell_base_mcfunction"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv" "cellctrl_control_msgs/cell_base_maintain"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv" "cellctrl_control_msgs/cell_agv_lidar"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv" "cellctrl_control_msgs/cell_battery_caculate"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv" "cellctrl_control_msgs/cell_work_stations:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv" "geometry_msgs/Pose:cellctrl_control_msgs/cell_work_stationitems:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg" ""
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv" "cellctrl_control_msgs/cell_agv_basetypeitems"
)

get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg" NAME_WE)
add_custom_target(_cellctrl_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cellctrl_control_msgs" "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Services
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_cpp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Module File
_generate_module_cpp(cellctrl_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cellctrl_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cellctrl_control_msgs_generate_messages cellctrl_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_cpp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cellctrl_control_msgs_gencpp)
add_dependencies(cellctrl_control_msgs_gencpp cellctrl_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cellctrl_control_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Services
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_eus(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Module File
_generate_module_eus(cellctrl_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cellctrl_control_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cellctrl_control_msgs_generate_messages cellctrl_control_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_eus _cellctrl_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cellctrl_control_msgs_geneus)
add_dependencies(cellctrl_control_msgs_geneus cellctrl_control_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cellctrl_control_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Services
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_lisp(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Module File
_generate_module_lisp(cellctrl_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cellctrl_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cellctrl_control_msgs_generate_messages cellctrl_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_lisp _cellctrl_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cellctrl_control_msgs_genlisp)
add_dependencies(cellctrl_control_msgs_genlisp cellctrl_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cellctrl_control_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Services
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_nodejs(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Module File
_generate_module_nodejs(cellctrl_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cellctrl_control_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cellctrl_control_msgs_generate_messages cellctrl_control_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_nodejs _cellctrl_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cellctrl_control_msgs_gennodejs)
add_dependencies(cellctrl_control_msgs_gennodejs cellctrl_control_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cellctrl_control_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_msg_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Services
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)
_generate_srv_py(cellctrl_control_msgs
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv"
  "${MSG_I_FLAGS}"
  "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
)

### Generating Module File
_generate_module_py(cellctrl_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cellctrl_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cellctrl_control_msgs_generate_messages cellctrl_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_orderitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_maintainhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_ordergoods_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_battery_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_lidar.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_ordergoods.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_motor.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_alarmhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_operatehistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_device_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_operatehistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_remain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/base_cell_controller_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_transfer_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_alarm_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stationitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_alarmhistory_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetype.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetype_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_maintain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_battery.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_orderitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/base_cell_controller.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_operate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_camera_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_imu.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_caculate.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_imu_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_order_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_motor_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_operate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_main_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_maintainhistory.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_alarm.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_mcfunction_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_base_maintain_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_lidar_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_transfer.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_device.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_main.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_battery_caculate_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_battery_remain.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stations_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_order.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_basetypeitems.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_work_stations.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_work_stationitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_base_mcfunction.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/srv/cell_agv_basetypeitems_cmd.srv" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/handsome/ros_ws_test/src/ros_base/cell_controller/cellctrl_control_msgs/msg/cell_agv_camera.msg" NAME_WE)
add_dependencies(cellctrl_control_msgs_generate_messages_py _cellctrl_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cellctrl_control_msgs_genpy)
add_dependencies(cellctrl_control_msgs_genpy cellctrl_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cellctrl_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cellctrl_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(cellctrl_control_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cellctrl_control_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cellctrl_control_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(cellctrl_control_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cellctrl_control_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(cellctrl_control_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cellctrl_control_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cellctrl_control_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(cellctrl_control_msgs_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cellctrl_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(cellctrl_control_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cellctrl_control_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cellctrl_control_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(cellctrl_control_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cellctrl_control_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(cellctrl_control_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cellctrl_control_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cellctrl_control_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(cellctrl_control_msgs_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cellctrl_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(cellctrl_control_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cellctrl_control_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cellctrl_control_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(cellctrl_control_msgs_generate_messages_py std_srvs_generate_messages_py)
endif()
