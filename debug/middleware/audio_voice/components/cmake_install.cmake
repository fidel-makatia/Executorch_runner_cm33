# Install script for directory: /Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/middleware/audio_voice/components

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
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/decoders/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/ogg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/opus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/opusfile/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/asrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/ssrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/vit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/voice_seeker/cmake_install.cmake")
endif()

