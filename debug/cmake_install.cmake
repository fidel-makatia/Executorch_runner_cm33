# Install script for directory: /Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world

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
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/cmake/extension/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/cmake/extension/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/cmake/extension/reports/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/devices/i.MX/i.MX93/MIMX9352/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/examples/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/acmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/acmp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/adc12/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/adc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/adc_12b1msps_sar/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/adc_5hc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/adc_5v12b_ll18_015/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/adc_etc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/aes/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/afe/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/aipstz/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/anactrl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/aoi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/aon_lpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/asmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/asrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/audmix/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/bbnsm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/bctu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/bee/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/biss/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/caam/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/camera_csr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/capt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/casper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cau3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ccm32k/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ce/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ci_pi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cic_irb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cmp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cmu_fc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cmu_fm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cns_acomp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cns_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cns_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cop/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/csi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ctimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dac12/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dac14/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dac32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dac_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dcdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dcdc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dcic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dcif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dcp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dma3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dmamux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dmic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dpr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dpu_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dpu_irqsteer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dryice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_adc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_aoi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_cadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_cop/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_crc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_dmamux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_edma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_eqdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_evtg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_ewm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_flexcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_mcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_mscan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_opamp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_pdb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_pit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_pmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_qdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_qtmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_sim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_xbara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dsc_xbarb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/dspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/easrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ecat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ecspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/edma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/edma4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/edma_rev2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/eeprom/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/eim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ela_csec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/elcdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/elemu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/emc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/emios/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/enc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/endat2p2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/endat3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/enet_qos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/epdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/epit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/eqdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/erm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/esai/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/evtg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ewm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flash_c40/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flash_ftmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flash_k4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flash_k4_iap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flashiap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexbus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexcomm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexram/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexspi_flr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/fmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/fmeas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/fract_pll/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ftm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gdet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gint/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/glikey/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gpc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gpc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gpc_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gpio_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/gpt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/hashcrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/hiperface/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/hsadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/hscmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/i3c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/iap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/iap1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/iap3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/iee/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/iee_apc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ieer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/igpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ii2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/imu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/inputmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/intc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/intm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/intmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/iped/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ipwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/irq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/irqsteer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/irqsteer_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/irtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/isi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/itrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/itrc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/iuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/jn_cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/jn_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/jn_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/jn_pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/jn_rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/jpegdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/kbi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/key_manager/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/kpp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lcdic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lcdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lcdifv2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lcdifv3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lcu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ldb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ldb_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ldb_combo_phy/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lin/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/llwu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpacmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_acomp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_freqme/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_gpio_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_i2c_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_iocon_lite/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_iopctl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_lcdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_minispi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_miniusart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_rit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_rtc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_spi_ssp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_vspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpc_vusart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpcmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpflexcomm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpsci/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lptmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ltc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mailbox/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mau/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mc_rgm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mcx_cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mcx_enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mcx_spc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mcx_vbat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mecc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mipi_csi2rx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mipi_csi2rx_dwc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mipi_dsi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mipi_dsi_imx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mipi_dsi_split/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mmau/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mmdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mmdvsq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mrt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mscan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mscm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/msgintr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/msmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/mu1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/netc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/nfc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/npx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ocotp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/opamp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/opamp_fast/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ostimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/otfad/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/otp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pdb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pdm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pint/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pls_pmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/plu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pmc0/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pngdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/port/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/powerquad/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/prg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/prince/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/puf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/puf_v3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pwt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pwt_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_acmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_bod/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_fsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_inputmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_syscon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qn_wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qsci/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qtmr_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/qtmr_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/queued_spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rdc_sema42/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rgpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rng_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rnga/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rtc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rtc_analog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rtc_jdp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rtd_cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/rtwdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/s3mu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sai/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sar_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sctimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sdadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sdhc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sdramc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sdu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sema4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sema42/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/semc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sfa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sha/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sinc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/slcd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/slcd_split/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/smartcard/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/smartdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/smc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/smm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/smscm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/snvs_hp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/snvs_lp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/software_i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/spc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/spdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/spifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/spm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sramc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sramctl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/ssarc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/stm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/swm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/swt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/syscon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sysctl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sysctr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/sysmpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/syspm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tdet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tempmon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tempsense/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tempsensor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tempsensor_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tmu_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tmu_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tmu_3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tpm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/trdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/trdc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/trgmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/trng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tsc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tsens/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tspc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tstmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/usdhc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/utick/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/vbat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/virt_wrapper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/vref/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/vref_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/waketimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wdog01/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wdog32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wdog8/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wkpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wkt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wuu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/wwdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xbar/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xbar_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xbara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xbarb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xbic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xecc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xrdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xrdc2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/xspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cache/armv7-m7/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cache/armv8-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cache/cache64/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cache/lmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cache/lpcac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cache/lpcac_n4a_mcxn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cache/lplmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/cache/xcache/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexcomm/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexcomm/i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexcomm/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexcomm/usart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/a-format/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/camera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/mculcd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/qspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/t-format/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexio/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/flexspi/flexspi_dma3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpflexcomm/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpflexcomm/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/lpflexcomm/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/crc_wrapper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/gpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/gpdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/gpt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/pn_wrapper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tsi/tsi_v2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tsi/tsi_v4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tsi/tsi_v5/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/tsi/tsi_v6/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/hostif/pnev7642fama/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/drivers/pn76/hostif/pnev76fama/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/components/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/backoffalgorithm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/corehttp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/corejson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/coremqtt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/coremqtt-agent/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/corepkcs11/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/usb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/multicore/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/g2d_dpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/vglite/vglite_sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/maestro/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/audio_voice/components/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/framework/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/XCVR/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/genfsk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/lwip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/llhttp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/soem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/freemodbus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/bluetooth/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/ble_controller/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/tfm/tf-m/mcux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/mmcau/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/edgefast_bluetooth/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/sdmmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/secure-subsystem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/rtcesl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/motor_control/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/libjpeg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/openh264/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/pngdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/lin_stack/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/examples/lvgl_examples/lvgl_sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/rtos/freertos/freertos-drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/mcuboot_opensource/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/pkcs11/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/aws_iot/device-defender/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/aws_iot/device-shadow/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/aws_iot/jobs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/aws_iot/ota/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/tinycbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/freemaster/mcux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/safety_iec60730b/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/wpa_supplicant-rtos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/cadence/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/touch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/metering/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/ieee-802.15.4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/zigbee/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/wireless/ethermind/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/eiq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/dhara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/secure_storage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/mcu_bootloader/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/middleware/canopennode/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "/Users/fidelmakatia/MCUXpressoSDK/mcuxsdk/mcuxsdk/examples/demo_apps/hello_world/debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
