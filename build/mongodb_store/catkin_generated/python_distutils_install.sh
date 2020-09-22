#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/handsome/ros_ws_test/install/mongodb_store/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/handsome/ros_ws_test/install/mongodb_store/lib/python2.7/dist-packages:/home/handsome/ros_ws_test/build/mongodb_store/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/handsome/ros_ws_test/build/mongodb_store" \
    "/usr/bin/python2" \
    "/home/handsome/ros_ws_test/src/ros_base/mongodb_store/mongodb_store/setup.py" \
     \
    build --build-base "/home/handsome/ros_ws_test/build/mongodb_store" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/handsome/ros_ws_test/install/mongodb_store" --install-scripts="/home/handsome/ros_ws_test/install/mongodb_store/bin"
