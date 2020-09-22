# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(spatio_temporal_voxel_layer_CONFIG_INCLUDED)
  return()
endif()
set(spatio_temporal_voxel_layer_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(spatio_temporal_voxel_layer_SOURCE_PREFIX /home/handsome/ros_ws_test/src/ros_base/spatio_temporal_voxel_layer)
  set(spatio_temporal_voxel_layer_DEVEL_PREFIX /home/handsome/ros_ws_test/build/spatio_temporal_voxel_layer/devel)
  set(spatio_temporal_voxel_layer_INSTALL_PREFIX "")
  set(spatio_temporal_voxel_layer_PREFIX ${spatio_temporal_voxel_layer_DEVEL_PREFIX})
else()
  set(spatio_temporal_voxel_layer_SOURCE_PREFIX "")
  set(spatio_temporal_voxel_layer_DEVEL_PREFIX "")
  set(spatio_temporal_voxel_layer_INSTALL_PREFIX /home/handsome/ros_ws_test/install/spatio_temporal_voxel_layer)
  set(spatio_temporal_voxel_layer_PREFIX ${spatio_temporal_voxel_layer_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'spatio_temporal_voxel_layer' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(spatio_temporal_voxel_layer_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include;/usr/include;/usr/include/eigen3;/usr/include/pcl-1.8;/usr/include/ni;/usr/include/openni2;/usr/include/vtk-6.3;/usr/include/freetype2;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/opal/mca/event/libevent2022/libevent;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/opal/mca/event/libevent2022/libevent/include;/usr/lib/x86_64-linux-gnu/openmpi/include;/usr/include/python2.7;/usr/include/x86_64-linux-gnu;/usr/include/hdf5/openmpi;/usr/include/libxml2;/usr/include/jsoncpp;/usr/include/tcl;/usr/local/include " STREQUAL " ")
  set(spatio_temporal_voxel_layer_INCLUDE_DIRS "")
  set(_include_dirs "include;/usr/include;/usr/include/eigen3;/usr/include/pcl-1.8;/usr/include/ni;/usr/include/openni2;/usr/include/vtk-6.3;/usr/include/freetype2;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/opal/mca/event/libevent2022/libevent;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/opal/mca/event/libevent2022/libevent/include;/usr/lib/x86_64-linux-gnu/openmpi/include;/usr/include/python2.7;/usr/include/x86_64-linux-gnu;/usr/include/hdf5/openmpi;/usr/include/libxml2;/usr/include/jsoncpp;/usr/include/tcl;/usr/local/include")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Steve Macenski <stevenmacenski@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${spatio_temporal_voxel_layer_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'spatio_temporal_voxel_layer' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'spatio_temporal_voxel_layer' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '\${prefix}/${idir}'.  ${_report}")
    endif()
    _list_append_unique(spatio_temporal_voxel_layer_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "spatio_temporal_voxel_layer;optimized;/usr/lib/x86_64-linux-gnu/libtbb.so;debug;/usr/lib/x86_64-linux-gnu/libtbb.so;rt;/usr/local/lib/libopenvdb.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_common.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_common.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_octree.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_octree.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_io.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_io.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_kdtree.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_kdtree.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_search.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_search.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_filters.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_filters.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_features.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_features.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_ml.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_ml.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_segmentation.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_segmentation.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_visualization.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_visualization.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_surface.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_surface.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_registration.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_registration.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_keypoints.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_keypoints.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_tracking.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_tracking.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_recognition.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_recognition.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_stereo.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_stereo.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_apps.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_apps.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_outofcore.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_outofcore.so;optimized;/usr/lib/x86_64-linux-gnu/libpcl_people.so;debug;/usr/lib/x86_64-linux-gnu/libpcl_people.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;optimized;/usr/lib/x86_64-linux-gnu/libqhull.so;debug;/usr/lib/x86_64-linux-gnu/libqhull.so;/usr/lib/libOpenNI.so;/usr/lib/libOpenNI2.so;optimized;/usr/lib/x86_64-linux-gnu/libflann_cpp_s.a;debug;/usr/lib/x86_64-linux-gnu/libflann_cpp_s.a;/usr/lib/x86_64-linux-gnu/libvtkChartsCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonColor-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonMath-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtksys-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonMisc-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonSystem-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkInfovisCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingFourier-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkalglib-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersSources-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libfreetype.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libvtkftgl-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkDICOMParser-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkDomainsChemistry-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOXML-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOGeometry-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libexpat.so;/usr/lib/x86_64-linux-gnu/libvtkFiltersAMR-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkParallelCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOLegacy-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersFlowPaths-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersGeneric-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersHybrid-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingSources-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersHyperTree-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersImaging-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingGeneral-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallel-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelFlowPaths-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkParallelMPI-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelGeometry-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelImaging-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelMPI-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelStatistics-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersProgrammable-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersPython-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libpython2.7.so;/usr/lib/x86_64-linux-gnu/libvtkWrappingPython27Core-6.3.so.6.3.0;/usr/lib/libvtkWrappingTools-6.3.a;/usr/lib/x86_64-linux-gnu/libvtkFiltersReebGraph-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersSMP-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersSelection-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersTexture-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkFiltersVerdict-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkverdict-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingHybrid-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOImage-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkmetaio-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libjpeg.so;/usr/lib/x86_64-linux-gnu/libpng.so;/usr/lib/x86_64-linux-gnu/libtiff.so;/usr/lib/x86_64-linux-gnu/libvtkIOSQL-6.3.so.6.3.0;sqlite3;/usr/lib/x86_64-linux-gnu/libvtkViewsInfovis-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkInfovisLayout-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkInfovisBoostGraphAlgorithms-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingLabel-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkViewsCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkInteractionWidgets-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingColor-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingVolume-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkGeovisCore-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libproj.so;/usr/lib/x86_64-linux-gnu/libvtkIOAMR-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libm.so;/usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so;/usr/lib/x86_64-linux-gnu/libvtkIOEnSight-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOExodus-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkexoIIc-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libnetcdf_c++.so;/usr/lib/x86_64-linux-gnu/libnetcdf.so;/usr/lib/x86_64-linux-gnu/libvtkIOExport-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingGL2PS-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libgl2ps.so;/usr/lib/x86_64-linux-gnu/libvtkIOFFMPEG-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOMovie-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libtheoraenc.so;/usr/lib/x86_64-linux-gnu/libtheoradec.so;/usr/lib/x86_64-linux-gnu/libogg.so;/usr/lib/x86_64-linux-gnu/libvtkIOGDAL-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOGeoJSON-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOImport-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOInfovis-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libxml2.so;/usr/lib/x86_64-linux-gnu/libvtkIOLSDyna-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOMINC-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOMPIImage-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOMPIParallel-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOParallel-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIONetCDF-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libjsoncpp.so;/usr/lib/x86_64-linux-gnu/libvtkIOMySQL-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOODBC-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOPLY-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOParallelExodus-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOParallelLSDyna-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOParallelNetCDF-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOParallelXML-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOPostgreSQL-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOVPIC-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkVPIC-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOVideo-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkIOXdmf2-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkxdmf2-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingMath-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingMorphological-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingStatistics-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkImagingStencil-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkInteractionImage-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkLocalExample-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkParallelMPI4Py-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkPythonInterpreter-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingExternal-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingFreeTypeFontConfig-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingImage-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingLIC-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingLOD-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingMatplotlib-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingParallel-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingParallelLIC-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingVolumeAMR-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkRenderingVolumeOpenGL-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkTestingGenericBridge-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkTestingIOSQL-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkTestingRendering-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkViewsContext2D-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkViewsGeovis-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libvtkWrappingJava-6.3.so.6.3.0;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libpthread.so")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND spatio_temporal_voxel_layer_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND spatio_temporal_voxel_layer_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT spatio_temporal_voxel_layer_NUM_DUMMY_TARGETS)
      set(spatio_temporal_voxel_layer_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::spatio_temporal_voxel_layer::wrapped-linker-option${spatio_temporal_voxel_layer_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR spatio_temporal_voxel_layer_NUM_DUMMY_TARGETS "${spatio_temporal_voxel_layer_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::spatio_temporal_voxel_layer::wrapped-linker-option${spatio_temporal_voxel_layer_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND spatio_temporal_voxel_layer_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND spatio_temporal_voxel_layer_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND spatio_temporal_voxel_layer_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/handsome/ros_ws_test/install/spatio_temporal_voxel_layer/lib;/home/handsome/ros_ws/install/yocs_cmd_vel_mux/lib;/home/handsome/ros_ws/install/urdf_tutorial/lib;/home/handsome/ros_ws/install/tuw_waypoint_to_spline_msgs/lib;/home/handsome/ros_ws/install/tuw_multi_robot_router/lib;/home/handsome/ros_ws/install/tuw_voronoi_graph/lib;/home/handsome/ros_ws/install/tuw_vehicle_msgs/lib;/home/handsome/ros_ws/install/tuw_order_planner/lib;/home/handsome/ros_ws/install/tuw_object_rviz/lib;/home/handsome/ros_ws/install/tuw_object_msgs/lib;/home/handsome/ros_ws/install/tuw_nav_rviz/lib;/home/handsome/ros_ws/install/tuw_multi_robot_local_behavior_controller/lib;/home/handsome/ros_ws/install/tuw_multi_robot_ctrl/lib;/home/handsome/ros_ws/install/tuw_nav_msgs/lib;/home/handsome/ros_ws/install/tuw_multi_robot_rviz/lib;/home/handsome/ros_ws/install/tuw_multi_robot_goal_generator/lib;/home/handsome/ros_ws/install/robot_scheduling_utility/lib;/home/handsome/ros_ws/install/robot_scheduling_actions/lib;/home/handsome/ros_ws/install/actionlib_modules_bridge/lib;/home/handsome/ros_ws/install/tuw_multi_robot_msgs/lib;/home/handsome/ros_ws/install/tuw_multi_robot_demo/lib;/home/handsome/ros_ws/install/tuw_local_controller_msgs/lib;/home/handsome/ros_ws/install/tuw_geometry_rviz/lib;/home/handsome/ros_ws/install/tuw_geometry_msgs/lib;/home/handsome/ros_ws/install/tuw_geometry/lib;/home/handsome/ros_ws/install/tuw_gazebo_msgs/lib;/home/handsome/ros_ws/install/tuw_control/lib;/home/handsome/ros_ws/install/tuw_airskin_msgs/lib;/home/handsome/ros_ws/install/turtlebot_teleop/lib;/home/handsome/ros_ws/install/tug_example_pnp_server/lib;/home/handsome/ros_ws/install/tug_example_actions/lib;/home/handsome/ros_ws/install/tug_example_msgs/lib;/home/handsome/ros_ws/install/timed_roslaunch/lib;/home/handsome/ros_ws/install/teb2_local_planner/lib;/home/handsome/ros_ws/install/stated_roslaunch/lib;/home/handsome/ros_ws/install/spatio_temporal_voxel_layer/lib;/home/handsome/ros_ws/install/robot_udp_bridge/lib;/home/handsome/ros_ws/install/robot_database_bridge/lib;/home/handsome/ros_ws/install/samsungcmd_msgs/lib;/home/handsome/ros_ws/install/rplidar_ros/lib;/home/handsome/ros_ws/install/rp_action/lib;/home/handsome/ros_ws/install/rp_action_msgs/lib;/home/handsome/ros_ws/install/rosserial_xbee/lib;/home/handsome/ros_ws/install/rosserial_windows/lib;/home/handsome/ros_ws/install/rosserial_tivac/lib;/home/handsome/ros_ws/install/rosserial_test/lib;/home/handsome/ros_ws/install/rosserial_server/lib;/home/handsome/ros_ws/install/rosserial_python/lib;/home/handsome/ros_ws/install/rosserial_mbed/lib;/home/handsome/ros_ws/install/rosserial_embeddedlinux/lib;/home/handsome/ros_ws/install/rosserial_arduino/lib;/home/handsome/ros_ws/install/rosserial_client/lib;/home/handsome/ros_ws/install/rosserial_msgs/lib;/home/handsome/ros_ws/install/cellctrl_qtgui_bridge/lib;/home/handsome/ros_ws/install/car_db_manager_qtgui/lib;/home/handsome/ros_ws/install/car_db_manager_bridge/lib;/home/handsome/ros_ws/install/car_db_manager_action/lib;/home/handsome/ros_ws/install/ros_utility_tools/lib;/home/handsome/ros_ws/install/ros_package_test/lib;/home/handsome/ros_ws/install/ros_package_manager/lib;/home/handsome/ros_ws/install/robot_scheduling_server/lib;/home/handsome/ros_ws/install/robot_scheduling_msgs/lib;/home/handsome/ros_ws/install/robot_localization/lib;/home/handsome/ros_ws/install/robot_control_msgs/lib;/home/handsome/ros_ws/install/reset_location/lib;/home/handsome/ros_ws/install/razor_imu_9dof/lib;/home/handsome/ros_ws/install/pnp_rosplan/lib;/home/handsome/ros_ws/install/actionlib_pnp_controller/lib;/home/handsome/ros_ws/install/actionlib_modules_controller/lib;/home/handsome/ros_ws/install/pnp_ros/lib;/home/handsome/ros_ws/install/pnp_msgs/lib;/home/handsome/ros_ws/install/open_auto_dock/lib;/home/handsome/ros_ws/install/open_auto_dock_msgs/lib;/home/handsome/ros_ws/install/omron_os32c_driver/lib;/home/handsome/ros_ws/install/dlux_plugins/lib;/home/handsome/ros_ws/install/dlux_global_planner/lib;/home/handsome/ros_ws/install/nav_grid_pub_sub/lib;/home/handsome/ros_ws/install/dwb_critics/lib;/home/handsome/ros_ws/install/nav_grid_iterators/lib;/home/handsome/ros_ws/install/locomove_base/lib;/home/handsome/ros_ws/install/locomotor/lib;/home/handsome/ros_ws/install/nav_core_adapter/lib;/home/handsome/ros_ws/install/dwb_plugins/lib;/home/handsome/ros_ws/install/dwb_local_planner/lib;/home/handsome/ros_ws/install/nav_2d_utils/lib;/home/handsome/ros_ws/install/global_planner_tests/lib;/home/handsome/ros_ws/install/costmap_queue/lib;/home/handsome/ros_ws/install/nav_core2/lib;/home/handsome/ros_ws/install/nav_grid/lib;/home/handsome/ros_ws/install/car_schedule_msgs/lib;/home/handsome/ros_ws/install/actionlib_modules_msgs/lib;/home/handsome/ros_ws/install/locomotor_msgs/lib;/home/handsome/ros_ws/install/dwb_msgs/lib;/home/handsome/ros_ws/install/nav_2d_msgs/lib;/home/handsome/ros_ws/install/mongodb_log/lib;/home/handsome/ros_ws/install/mongodb_store/lib;/home/handsome/ros_ws/install/mongodb_store_msgs/lib;/home/handsome/ros_ws/install/ca_driver/lib;/home/handsome/ros_ws/install/i_robot_stage/lib;/home/handsome/ros_ws/install/i_robot_navigation/lib;/home/handsome/ros_ws/install/hyc_order_planner/lib;/home/handsome/ros_ws/install/hyc_multi_robot_msgs/lib;/home/handsome/ros_ws/install/fetch_open_auto_dock/lib;/home/handsome/ros_ws/install/fetch_auto_dock_msgs/lib;/home/handsome/ros_ws/install/change_teb2_max_vel_x_onfly/lib;/home/handsome/ros_ws/install/cellctrl_control_msgs/lib;/home/handsome/ros_ws/install/car_db_manager_msgs/lib;/home/handsome/ros_ws/install/ca_msgs/lib;/home/handsome/ros_ws/install/ca_description/lib;/home/handsome/ros_ws/install/botcmd_msgs/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(spatio_temporal_voxel_layer_LIBRARY_DIRS ${lib_path})
      list(APPEND spatio_temporal_voxel_layer_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'spatio_temporal_voxel_layer'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND spatio_temporal_voxel_layer_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(spatio_temporal_voxel_layer_EXPORTED_TARGETS "spatio_temporal_voxel_layer_gencfg;spatio_temporal_voxel_layer_generate_messages_cpp;spatio_temporal_voxel_layer_generate_messages_eus;spatio_temporal_voxel_layer_generate_messages_lisp;spatio_temporal_voxel_layer_generate_messages_nodejs;spatio_temporal_voxel_layer_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${spatio_temporal_voxel_layer_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "geometry_msgs;laser_geometry;message_filters;pcl_ros;pcl_conversions;pluginlib;roscpp;sensor_msgs;std_msgs;costmap_2d;tf2_ros;tf2_geometry_msgs;visualization_msgs;dynamic_reconfigure")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 spatio_temporal_voxel_layer_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${spatio_temporal_voxel_layer_dep}_FOUND)
      find_package(${spatio_temporal_voxel_layer_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${spatio_temporal_voxel_layer_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(spatio_temporal_voxel_layer_INCLUDE_DIRS ${${spatio_temporal_voxel_layer_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(spatio_temporal_voxel_layer_LIBRARIES ${spatio_temporal_voxel_layer_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${spatio_temporal_voxel_layer_dep}_LIBRARIES})
  _list_append_deduplicate(spatio_temporal_voxel_layer_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(spatio_temporal_voxel_layer_LIBRARIES ${spatio_temporal_voxel_layer_LIBRARIES})

  _list_append_unique(spatio_temporal_voxel_layer_LIBRARY_DIRS ${${spatio_temporal_voxel_layer_dep}_LIBRARY_DIRS})
  list(APPEND spatio_temporal_voxel_layer_EXPORTED_TARGETS ${${spatio_temporal_voxel_layer_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "spatio_temporal_voxel_layer-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${spatio_temporal_voxel_layer_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
