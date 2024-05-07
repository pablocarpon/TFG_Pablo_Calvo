# Install script for directory: /home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/src/tfg_real_env

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tfg_real_env/msg" TYPE FILE FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/src/tfg_real_env/msg/obsmsg.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tfg_real_env/cmake" TYPE FILE FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/build/tfg_real_env/catkin_generated/installspace/tfg_real_env-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/devel/include/tfg_real_env")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/devel/share/roseus/ros/tfg_real_env")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/devel/share/common-lisp/ros/tfg_real_env")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/devel/share/gennodejs/ros/tfg_real_env")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/devel/lib/python3/dist-packages/tfg_real_env")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/devel/lib/python3/dist-packages/tfg_real_env")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/build/tfg_real_env/catkin_generated/installspace/tfg_real_env.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tfg_real_env/cmake" TYPE FILE FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/build/tfg_real_env/catkin_generated/installspace/tfg_real_env-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tfg_real_env/cmake" TYPE FILE FILES
    "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/build/tfg_real_env/catkin_generated/installspace/tfg_real_envConfig.cmake"
    "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/build/tfg_real_env/catkin_generated/installspace/tfg_real_envConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tfg_real_env" TYPE FILE FILES "/home/pablo/Escritorio/TFG/Código/Entrenamientos/Entorno_Real/tfg_ws/src/tfg_real_env/package.xml")
endif()

