cmake_minimum_required(VERSION 2.8.3...3.0.2)
project(razor_imu_9dof)

find_package(catkin REQUIRED COMPONENTS dynamic_reconfigure)

generate_dynamic_reconfigure_options(cfg/imu.cfg)

catkin_package(CATKIN_DEPENDS dynamic_reconfigure)
message(STATUS "------------")
message(STATUS "------------")
message(STATUS "------------")
message(STATUS "${CATKIN_PACKAGE_SHARE_DESTINATION}")
message(STATUS "------------")
message(STATUS "------------")
message(STATUS "------------")
install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY cfg
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY src
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY magnetometer_calibration
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

catkin_install_python(PROGRAMS 
	nodes/imu_node.py
	nodes/display_3D_visualization.py
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/nodes
)
