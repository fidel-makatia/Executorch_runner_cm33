# Install script for directory: /Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/rtos/freertos/freertos-drivers

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
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/dspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/ecspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/ii2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/iuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpc_i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpc_vspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpc_vusart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpflexcomm/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpflexcomm/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpflexcomm/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpsci/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/smartcard/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/flexcomm/usart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/flexcomm/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/flexcomm/i2c/cmake_install.cmake")
endif()

