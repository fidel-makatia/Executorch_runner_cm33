# Install script for directory: /Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/middleware/wireless/framework

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/fidelmakatia/.mcuxpressotools/arm-gnu-toolchain-14.2.rel1-darwin-arm64-arm-none-eabi/bin/arm-none-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/Common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/FactoryDataProvider/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/DBG/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/FunctionLib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/HWParameter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/ModuleInfo/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/MWSCoexistence/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/NVM/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/OtaSupport/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/PDM/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/PDUM/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/platform/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/SecLib_RNG/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/Sensors/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/LowPower/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/zephyr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/FSCI/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/SFC/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/FileSystem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/OTW/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/services/WorkQ/cmake_install.cmake")
endif()

